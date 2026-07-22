## `gradle:jdk21-ubi`

```console
$ docker pull gradle@sha256:2a6880cf02ea7a0d8bdd93aa05b7adcfd8660813d836bdadb784f3c74599a3de
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

### `gradle:jdk21-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:60604ac9d5ae5a864f4c4d3147d5f5c62abfd99ebee6837282055b1ef19a5960
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.4 MB (411385916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b96d9d5cb63b6d883fa2f0b4f802087877cd266bee09823e06b5c11ed32fca`
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
# Wed, 22 Jul 2026 18:28:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:28:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:28:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:28:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:25 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 18:28:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:28:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:28:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:28:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:28:33 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:01:15 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:01:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:01:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:01:15 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:01:15 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:01:18 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:01:18 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:01:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:01:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:01:21 GMT
USER gradle
# Wed, 22 Jul 2026 19:01:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:01:21 GMT
USER root
```

-	Layers:
	-	`sha256:1a70cbb74144ef90a6ddb34ce9ec12c795834baf78bdb1417827dff114fc5859`  
		Last Modified: Wed, 22 Jul 2026 00:25:25 GMT  
		Size: 34.9 MB (34943743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64607e9b55a7af7e74a9b65d6ef9613b8bb4e6206885562aa51f7b6190954cb`  
		Last Modified: Wed, 22 Jul 2026 18:28:52 GMT  
		Size: 37.8 MB (37771551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e8d125e52cea4ddfe14f83d8b966eed9a549a02d7d86de04995b1bd994d202`  
		Last Modified: Wed, 22 Jul 2026 18:28:54 GMT  
		Size: 158.2 MB (158172680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d699db98d082ff3e8d4584edc98be46574b70c312892587fadc866e25af383`  
		Last Modified: Wed, 22 Jul 2026 18:28:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbe3577f633c1cb0820c57acc6384135d72351ca9f0d254ed3f32efbd66fb4c`  
		Last Modified: Wed, 22 Jul 2026 18:28:50 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ae26e700074464d58615e6e1b7b061a812ffcab299f5f53a2ee319aad9a38`  
		Last Modified: Wed, 22 Jul 2026 19:01:38 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d75a5f1114265cf490c4c3be41d8306f68a68b6c114c9b084b5312cbd4a1979`  
		Last Modified: Wed, 22 Jul 2026 19:01:40 GMT  
		Size: 39.9 MB (39872269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc892ebec7b4277d21e14c2d3a8700650d5e54fc01b4224355d36c90d8275e2a`  
		Last Modified: Wed, 22 Jul 2026 19:01:42 GMT  
		Size: 140.6 MB (140596028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec2bb4b96e1526f27738ac7254c174e0c683a4af338c132e4a3641bc8ec8f8d`  
		Last Modified: Wed, 22 Jul 2026 19:01:38 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:97a163e2f94f5405e43be331c4b73f999c2069e497a5c2b60f1e9cbdb1d30fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7114935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0277d2f416dd40704eb760f14d3e4ccee1c24e9d634f0eca5dca3f1d6363535`

```dockerfile
```

-	Layers:
	-	`sha256:6aaa0d8ad280e276aeb90f545fce03ac0638762172ce9c32d38966c219db5bbd`  
		Last Modified: Wed, 22 Jul 2026 19:01:39 GMT  
		Size: 7.1 MB (7090480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc0f3d69b547e15fcbc3cdde9cacbfddf6ee6773574e354b7a4a8462193c1d1a`  
		Last Modified: Wed, 22 Jul 2026 19:01:39 GMT  
		Size: 24.5 KB (24455 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:77acd573984eabd0547d1b9b708ce5da4fe8d526d8c3780668478e8fa76f5c46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.2 MB (407179081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13141d1de0dca03fcbd38097cf423072e46055cbf5fa0503a7fc34a5dbcaa79d`
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
# Wed, 22 Jul 2026 18:52:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:52:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:52:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:52:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:52:45 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 18:53:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:53:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:53:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:53:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:53:18 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:33 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:03:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:03:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:03:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:03:33 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:03:36 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:03:36 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 19:03:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 19:03:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:03:39 GMT
USER gradle
# Wed, 22 Jul 2026 19:03:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:03:39 GMT
USER root
```

-	Layers:
	-	`sha256:58f664164ca85fb5b417ce6f6fffea1e66eaf780a7dedb2c483cdd5286d5ee2b`  
		Last Modified: Wed, 22 Jul 2026 00:25:47 GMT  
		Size: 33.1 MB (33053422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0d872524b22ace2bdfb17f47422247a33a3e1b5e70a9045c843e51c60af241`  
		Last Modified: Wed, 22 Jul 2026 18:53:03 GMT  
		Size: 37.7 MB (37713536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575ae94b6d191e52e84a0aa18f71f221a77b93ddd709109d8b1f4c8d2a5bb45`  
		Last Modified: Wed, 22 Jul 2026 18:53:40 GMT  
		Size: 156.5 MB (156464384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96543b6c0708383385abaa3ae885545069ea2fd5cd37496b44f50eb6f7a15dd3`  
		Last Modified: Wed, 22 Jul 2026 18:53:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5130ddf4082e225906ce08a4c3fb3711ea3318e0311dd8a24d50bb96499dada4`  
		Last Modified: Wed, 22 Jul 2026 18:53:36 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a401a46c3bfc6f71c496a8b36a0ecb69c8262202798bd95f5f10aee04bf648b`  
		Last Modified: Wed, 22 Jul 2026 19:03:59 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93870c6172aaf15361da420ec77e5f9494d890e19153ee9356c82bf2b46e5953`  
		Last Modified: Wed, 22 Jul 2026 19:04:01 GMT  
		Size: 39.3 MB (39318346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33479dd688abf19927d76509a46b62037c3b152c3050727256458dc3451125e5`  
		Last Modified: Wed, 22 Jul 2026 19:04:03 GMT  
		Size: 140.6 MB (140596028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe852c3dd03b75629e8f6eb885316851be06c0d942462bf431fb0576e1668969`  
		Last Modified: Wed, 22 Jul 2026 19:03:59 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:1a21c11362effbd15b9166923c2db6e11c71048df8dedf35716007902cdc56ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7113387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5238ca946c7f4dc592e7f7f253ffe98a8050357dfc4d6cd6d8aa967a888663cd`

```dockerfile
```

-	Layers:
	-	`sha256:92ccb9d3fd88e74f06bd97ea0fddb1335ddc4656f558d955932e05c3bf9aa943`  
		Last Modified: Wed, 22 Jul 2026 19:03:59 GMT  
		Size: 7.1 MB (7088736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c323ac410c8a5161a08d4a49a9acc7d4f49672cc704dc3f82bfa5da7ecc64b8`  
		Last Modified: Wed, 22 Jul 2026 19:03:59 GMT  
		Size: 24.7 KB (24651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:16d8e62cb030c5129c3eb1ba62b7787924f73ebaecb414846ca7a12c8821d9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.1 MB (419115358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94cc2be0c78cdab3f195caaeab8dd1648d194bdcf44bc95e2596e1469766479b`
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
# Wed, 22 Jul 2026 21:28:26 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 21:28:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 21:28:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 21:28:26 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 21:28:27 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 21:29:06 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 21:29:06 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 21:29:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 21:29:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 21:29:11 GMT
USER gradle
# Wed, 22 Jul 2026 21:29:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 21:29:13 GMT
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
	-	`sha256:42c35837329081e6044621547c9c8ea26b8de3af45b4fdf488fb269a4a58c06f`  
		Last Modified: Wed, 22 Jul 2026 18:50:54 GMT  
		Size: 158.3 MB (158348518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38dfec2b0e94075d0839b8d5ad53f58535b39d884dad2e053e24c3735f8aafe`  
		Last Modified: Wed, 22 Jul 2026 18:50:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabae2f8664613f0c0cfc7e2ab1e964860c232b782c436a1bc6b9985299a1e93`  
		Last Modified: Wed, 22 Jul 2026 18:50:51 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96c443867baffda24443d920df86c6d2e1e26a98d871144590ef5970f086343`  
		Last Modified: Wed, 22 Jul 2026 21:29:52 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cc11d1167303d6fe0ec87c848e1370cd765756d6089b6ee6eb9332314ddac6`  
		Last Modified: Wed, 22 Jul 2026 21:29:55 GMT  
		Size: 41.6 MB (41644970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ca59d8df72afeb884cf0b0346e7c9822f08677f032b1e62ba4892be611f511`  
		Last Modified: Wed, 22 Jul 2026 21:29:57 GMT  
		Size: 140.6 MB (140596029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f54ac24a7c08cd2ef3ff6ecff483d875145fb027bcabdb8a22496a3b363dba`  
		Last Modified: Wed, 22 Jul 2026 21:29:52 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:591c4eff33579ef1d73805836f3e346ee956b44b5073156226ebecf23b868ec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7106425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d77c48e393f2118cc17e9c0d4127339d635f16549ff7cf07688cda3e9ded16`

```dockerfile
```

-	Layers:
	-	`sha256:206415ab36687e9179ddadc3d9b198ee4c5ed569209a5f92685a52ccc1395fc9`  
		Last Modified: Wed, 22 Jul 2026 21:29:53 GMT  
		Size: 7.1 MB (7081898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bedfa2880e34508ba7e41dbdbd0c1b8b7f42fbe68421114bdc91656a01a4d46`  
		Last Modified: Wed, 22 Jul 2026 21:29:52 GMT  
		Size: 24.5 KB (24527 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:e9fb59fa65c4cbe74b5937a905765ee0913438715921342392ca9f15df12d11f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.9 MB (402892555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a8b78d6b76f32f3a1df0859d4daff0cc3e8b67ecbd28781821092786c50011`
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
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 19:58:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 19:58:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 19:58:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 19:58:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 19:58:07 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 20:08:52 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 20:08:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 20:08:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 20:08:52 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 20:08:52 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 20:08:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 20:08:58 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 22 Jul 2026 20:08:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 22 Jul 2026 20:09:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 20:09:02 GMT
USER gradle
# Wed, 22 Jul 2026 20:09:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 20:09:03 GMT
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
	-	`sha256:553ca84cdadc123c372899263dbde9e627224474a8b16ef92593c9c90c1a40ca`  
		Last Modified: Wed, 22 Jul 2026 19:58:35 GMT  
		Size: 147.4 MB (147390213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6b9c264b677b311788f562e25c25c55a70b3e914a76a72625f2c6fd977f25`  
		Last Modified: Wed, 22 Jul 2026 19:58:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295a069cae9ffa7d79d48216ad5253d9a95f0b0f637290093eef5675838a4bd3`  
		Last Modified: Wed, 22 Jul 2026 19:58:32 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc14aaa5ca9803a21ee80ddeb7dc6c33ed6e4a7090ee15c56181320091cad90`  
		Last Modified: Wed, 22 Jul 2026 20:09:32 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de6b249d3d949d426e660d1cb76a5d6bfa031f296c4a59fa6de77cfada7cee2`  
		Last Modified: Wed, 22 Jul 2026 20:09:33 GMT  
		Size: 42.0 MB (41997261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3565cf197fed831378fbfa186a672aa356d61047bda65b6cdd7ffe8a3a7cc`  
		Last Modified: Wed, 22 Jul 2026 20:09:35 GMT  
		Size: 140.6 MB (140596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c314ff5a9ef3cda1d82c49cfbe9ab4cebc70beb4fb2ca0f142aebc265dd2d694`  
		Last Modified: Wed, 22 Jul 2026 20:09:32 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:1bbfd2d1da41ed3e20f82ed58a9b2c55308a468731bd21813069754c30342d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7095580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf23d0313d5902ffb4ccb11c29dcf1ee548e93215efcc6bd449fee3c58e88645`

```dockerfile
```

-	Layers:
	-	`sha256:f63a50ad71327c37dc5ea7d968b5b520af922d7ce6fce93f3d26677261911abd`  
		Last Modified: Wed, 22 Jul 2026 20:09:32 GMT  
		Size: 7.1 MB (7071127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:988cba99afbe9cc2bd0458874679074a8f7a24f28e6ef1b76795044c061b8209`  
		Last Modified: Wed, 22 Jul 2026 20:09:32 GMT  
		Size: 24.5 KB (24453 bytes)  
		MIME: application/vnd.in-toto+json
