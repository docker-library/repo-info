## `gradle:9-jdk25-ubi`

```console
$ docker pull gradle@sha256:4e385fcd36429ffb22e1952d1440b6de823572eb049d3324da28321e2fe50c84
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

### `gradle:9-jdk25-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:751c34be570b1bff287e932b5b3eba70c51f8a2d75fcaee44c94ce82e0645054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357184591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1182b5ca2405bf711c1d7dca4472a2b52b9cc235b385c8bc5965ea55aaa3d8d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 02 Nov 2026 18:01:08 GMT
ENV container oci
# Mon, 02 Nov 2026 18:01:08 GMT
COPY dir:3b289561d928b0e39f6fec71dda37b654d96dcc611d360342265dac478d8a53a in /      
# Mon, 02 Nov 2026 18:01:08 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 18:01:08 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 18:01:09 GMT
COPY dir:00cabec19e29ce2b7d72051ab958e5e95551c22d29f7f83ad81b460eac205372 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 18:01:09 GMT
COPY dir:00cabec19e29ce2b7d72051ab958e5e95551c22d29f7f83ad81b460eac205372 in /root/buildinfo/      
# Mon, 02 Nov 2026 18:01:09 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T18:00:47Z" "org.opencontainers.image.revision"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "build-date"="2026-11-02T18:00:47Z" "architecture"="x86_64" "vcs-ref"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "vcs-type"="git" "release"="1793642335"org.opencontainers.image.created=2026-11-02T18:00:47Z,org.opencontainers.image.revision=f738e88b7bb7caf108d5a65ce6eaa0f284c32f73
# Tue, 03 Nov 2026 22:21:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:21:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:21:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 22:21:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 22:21:54 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Tue, 03 Nov 2026 22:22:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 22:22:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 22:22:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 22:22:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:22:47 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:56:05 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:56:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:56:05 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:56:05 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:56:05 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:56:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:56:10 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 03 Nov 2026 22:56:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 03 Nov 2026 22:56:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:56:13 GMT
USER gradle
# Tue, 03 Nov 2026 22:56:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:56:13 GMT
USER root
```

-	Layers:
	-	`sha256:41b5e888b5cdf3bececf953aef8cd8fe7aa0906db6e2fc8c7d43e8c2df221312`  
		Last Modified: Mon, 02 Nov 2026 20:01:04 GMT  
		Size: 34.9 MB (34932323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f582a7e459bbc5407a614715d38bfd0566147af5a59af59a449b6cd73b88a36`  
		Last Modified: Tue, 03 Nov 2026 22:22:13 GMT  
		Size: 37.9 MB (37889411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fffc297a5e475d36143fcf17f981213eb638f8ae3472d084348f8a8aeec3d67`  
		Last Modified: Tue, 03 Nov 2026 22:23:05 GMT  
		Size: 92.6 MB (92599231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a350b5de257b27ec2e666d1a7a5827281d555723fa2ff12a7d91f5b328b88cb3`  
		Last Modified: Tue, 03 Nov 2026 22:23:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7862be131ce04fd68b8db9fe4a7cc491600f3492c6ab99a1c0080a32964926`  
		Last Modified: Tue, 03 Nov 2026 22:23:02 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7508a69711aed55d7d752773f5c4130b37845ef7da5a36a93c2c968239bb9122`  
		Last Modified: Tue, 03 Nov 2026 22:56:30 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43461f4ee0deffe11e287be14b9d0ffea106139ddc63fd3c3c3674fd51c1899`  
		Last Modified: Tue, 03 Nov 2026 22:56:32 GMT  
		Size: 40.2 MB (40200175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc17b96011aac12f31a9959d1e4e6f694870d9bf820b587d796a33016143174`  
		Last Modified: Tue, 03 Nov 2026 22:56:34 GMT  
		Size: 151.5 MB (151533619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac267457924f61543ecb70a5ef30c9e016188f994d23bca7701d26e47d5178a`  
		Last Modified: Tue, 03 Nov 2026 22:56:31 GMT  
		Size: 25.6 KB (25610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:c50f99fa80249500ad7861f70d07c712a09b736e849114cfc6cc95004dab35cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6a93c0f38e3cb9936ba7481fb7ec61bf5c4f26cd7a15b1bdf102340b45b1b94`

```dockerfile
```

-	Layers:
	-	`sha256:b431eae4b07c1e2adff4ab14ded2c77ad3fdf80e6b400ac6b246e4e59fabdbc8`  
		Last Modified: Tue, 03 Nov 2026 22:56:31 GMT  
		Size: 7.0 MB (7048017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bd9a73d2bcd1503fc5353b81920619cf02699b7e39c40e220d49d3ae47ce6f3`  
		Last Modified: Tue, 03 Nov 2026 22:56:30 GMT  
		Size: 25.0 KB (25008 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a09b5c56cd6ae90c2750dc674e347cbe8b7fbedfeb33a4113207967c39288cd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.7 MB (353658509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0336157cdd5a9de7558a9fd3484d0f3d8b0cfc7ef28dd4b3e1c1e878dea54979`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 18:04:14 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 18:04:14 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 02 Nov 2026 18:04:15 GMT
ENV container oci
# Mon, 02 Nov 2026 18:04:16 GMT
COPY dir:f218a9631b2a14dfb2ca7c90b0ec1a1a08c90cfc301b523317dd02dac03baf96 in /      
# Mon, 02 Nov 2026 18:04:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 18:04:17 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 18:04:17 GMT
COPY dir:696d2774a063be8311b033d8912e81272872852b73c805769cbb8125af26d0ce in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 18:04:17 GMT
COPY dir:696d2774a063be8311b033d8912e81272872852b73c805769cbb8125af26d0ce in /root/buildinfo/      
# Mon, 02 Nov 2026 18:04:18 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T18:03:47Z" "org.opencontainers.image.revision"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "build-date"="2026-11-02T18:03:47Z" "architecture"="aarch64" "vcs-ref"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "vcs-type"="git" "release"="1793642335"org.opencontainers.image.created=2026-11-02T18:03:47Z,org.opencontainers.image.revision=f738e88b7bb7caf108d5a65ce6eaa0f284c32f73
# Tue, 03 Nov 2026 22:22:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:22:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:22:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 22:22:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 22:22:48 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Tue, 03 Nov 2026 22:22:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 22:22:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 22:22:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 22:22:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:22:55 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:55:16 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:55:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:55:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:55:16 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:55:16 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:55:22 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:55:22 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 03 Nov 2026 22:55:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 03 Nov 2026 22:55:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:55:25 GMT
USER gradle
# Tue, 03 Nov 2026 22:55:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:55:25 GMT
USER root
```

-	Layers:
	-	`sha256:0a29e805bdd2af84f1a4ce0c655432a7dc19376bc217d026acedf7aa8894fd15`  
		Last Modified: Mon, 02 Nov 2026 20:01:05 GMT  
		Size: 33.1 MB (33070916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71370cb9353dd32b6e673c7aca61bfc94ec43351e337e63bd60c90b0983370b`  
		Last Modified: Tue, 03 Nov 2026 22:23:14 GMT  
		Size: 37.8 MB (37834392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb445e28c40c659cbdf9234692d301302258ca912fbf319ef690404d2fecd651`  
		Last Modified: Tue, 03 Nov 2026 22:23:15 GMT  
		Size: 91.5 MB (91526372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77d65a52539ff21d3b9c550a1b7caa01d1f90d2b12dcd186e9befa24e629bd3`  
		Last Modified: Tue, 03 Nov 2026 22:23:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e026ad047f8a094c41366ac81347deb7be92d5e119a809b99fe37f52e6ef0c27`  
		Last Modified: Tue, 03 Nov 2026 22:23:13 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747609878e051f7b582a7305aae9f57721f54d939009c65a388f56fbf39ea387`  
		Last Modified: Tue, 03 Nov 2026 22:55:45 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf930bb68e5f89419ab3b5656cce7a7a558b6e2f7d28931c745a0972c0bd9191`  
		Last Modified: Tue, 03 Nov 2026 22:55:47 GMT  
		Size: 39.7 MB (39659654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01dd22484a153120e8a6c4e2ca03bf34b617ef9fa7ec7ecbacfe47ca73895a1`  
		Last Modified: Tue, 03 Nov 2026 22:55:49 GMT  
		Size: 151.5 MB (151533619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72127f7a88cf311373956c228de63a12ba350f54acee258d9bff5478dce348f`  
		Last Modified: Tue, 03 Nov 2026 22:55:45 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:98acb5049dbe8a3fd51f509b8703ef0358fd68f0968fcc15a49a00a826ef90d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7071524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061d8c661b582e22a0eb2c04f36e3407e12d45aa66805fd41cd0f2d086ef67db`

```dockerfile
```

-	Layers:
	-	`sha256:c006797a8dfb1b3787fc1228ea9f7522e72cf722d2da7e9ae217ce19d2465ef9`  
		Last Modified: Tue, 03 Nov 2026 22:55:45 GMT  
		Size: 7.0 MB (7046294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e5c990dc790340bef64e0a2f64d7941d15ebc33422b48e6ebc0625f025c9c02`  
		Last Modified: Tue, 03 Nov 2026 22:55:44 GMT  
		Size: 25.2 KB (25230 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:b46e4d386ae1ac8925b72c7b43929b69ac255caa6280fdd56c6d257783f82470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.4 MB (362367073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9eeec1e24e472610fbfb4a1b9ef2ddc3d959b0271bca33e1c9dfa046cf2d4e6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 02 Nov 2026 18:09:12 GMT
ENV container oci
# Mon, 02 Nov 2026 18:09:13 GMT
COPY dir:23f96b12a10855470b31dbaeb9242c76bed8533a25350a01720e981e06a845e9 in /      
# Mon, 02 Nov 2026 18:09:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 18:09:14 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 18:09:14 GMT
COPY dir:bbcf2ab9f5af9ab164009cfd1689bdf3e3e1f5261cc0168966aa873fa487a03f in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 18:09:14 GMT
COPY dir:bbcf2ab9f5af9ab164009cfd1689bdf3e3e1f5261cc0168966aa873fa487a03f in /root/buildinfo/      
# Mon, 02 Nov 2026 18:09:14 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T18:08:49Z" "org.opencontainers.image.revision"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "build-date"="2026-11-02T18:08:49Z" "architecture"="ppc64le" "vcs-ref"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "vcs-type"="git" "release"="1793642335"org.opencontainers.image.created=2026-11-02T18:08:49Z,org.opencontainers.image.revision=f738e88b7bb7caf108d5a65ce6eaa0f284c32f73
# Tue, 03 Nov 2026 23:27:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 23:27:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 23:27:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 23:27:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 23:27:42 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Tue, 03 Nov 2026 23:32:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 23:32:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 23:32:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:32:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 23:32:50 GMT
CMD ["jshell"]
# Wed, 04 Nov 2026 00:08:17 GMT
CMD ["gradle"]
# Wed, 04 Nov 2026 00:08:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 04 Nov 2026 00:08:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 04 Nov 2026 00:08:17 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 04 Nov 2026 00:08:19 GMT
WORKDIR /home/gradle
# Wed, 04 Nov 2026 00:08:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 04 Nov 2026 00:08:33 GMT
ENV GRADLE_VERSION=9.8.2
# Wed, 04 Nov 2026 00:08:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Wed, 04 Nov 2026 00:08:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 04 Nov 2026 00:08:38 GMT
USER gradle
# Wed, 04 Nov 2026 00:08:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 04 Nov 2026 00:08:39 GMT
USER root
```

-	Layers:
	-	`sha256:017bd409fb0ac73b7406d28a08a311079fe21ec771e81bff4261ca105361e45c`  
		Last Modified: Tue, 03 Nov 2026 00:15:49 GMT  
		Size: 39.1 MB (39077458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02256aeda862a14c29b08ac0f476f4050e4c1ed3ad917800b4d80e0e8091cf5c`  
		Last Modified: Tue, 03 Nov 2026 23:28:27 GMT  
		Size: 39.7 MB (39668108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c33a80e71cdd65f011e091fd898ecae34c14b1a1cf51788a18fd1973f6f81b`  
		Last Modified: Tue, 03 Nov 2026 23:33:35 GMT  
		Size: 90.1 MB (90111123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f46811f0a3215a4ff1d7be40e3f5aa97e63a46733691a9e14b2f0f7a723c08b`  
		Last Modified: Tue, 03 Nov 2026 23:33:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e238ebe7da33d8d71ce1b0332b990adfd0b5425f6dcb7fd6e848c9baf420847d`  
		Last Modified: Tue, 03 Nov 2026 23:33:32 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9321cf565f7bb8c6af01f1c8da671aebe820d4c99e7abc3382ca0690075550`  
		Last Modified: Wed, 04 Nov 2026 00:09:26 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c465b9f9ed1443c4707060886c2442ec5628f61e201a8dc7d4a206784881b1`  
		Last Modified: Wed, 04 Nov 2026 00:09:28 GMT  
		Size: 42.0 MB (41972161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8707badd47559370b78e3ebdf019d7a7132e07551d4b8ab19222cba7917e77c3`  
		Last Modified: Wed, 04 Nov 2026 00:09:30 GMT  
		Size: 151.5 MB (151533623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25e06d4f2cf7bcb4690a4d86c87977a136cabb1c3d568c30c065307381d85be`  
		Last Modified: Wed, 04 Nov 2026 00:09:26 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:d0e11c9e857106ef848e9c3c430c4ce5667fe8ba73ba2cb5022e26d03b8e3c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7045991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad827905a8eac8b355cdc6ab04c3630b64d1e388b2c8f92c7752a629ea1e3e0`

```dockerfile
```

-	Layers:
	-	`sha256:96737634da4dedb7e0208d753f2e78834293fcef2131493ed26855ff657b0a54`  
		Last Modified: Wed, 04 Nov 2026 00:09:26 GMT  
		Size: 7.0 MB (7020898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b12a5326da2b48c43b4ece2038645f80f97e8e6d9b283ca0e7d098e49fe75a99`  
		Last Modified: Wed, 04 Nov 2026 00:09:26 GMT  
		Size: 25.1 KB (25093 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:20df5d90b44101376b03eb6fa31eda07c216337ce68cdd392ab5c7e32ffc6729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.0 MB (355035505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5226e40549ea2414ae06afef7c3eafcde45eed91f74599e160bcc5651be221ec`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 02 Nov 2026 18:42:23 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 18:42:23 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 18:42:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 18:42:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 02 Nov 2026 18:42:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 18:42:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 02 Nov 2026 18:42:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:42:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:42:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 02 Nov 2026 18:42:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 18:42:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 02 Nov 2026 18:42:25 GMT
ENV container oci
# Mon, 02 Nov 2026 18:42:29 GMT
COPY dir:526610a4e57386b5c7430b040e5552a2d345eaaa021a12de7b055913f4124319 in /      
# Mon, 02 Nov 2026 18:42:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 18:42:30 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 18:42:31 GMT
COPY dir:d96ca3fe7a7b9c5bef55576c1ea0c46920dec462c2ca778b115639652d1b69f0 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 18:42:32 GMT
COPY dir:d96ca3fe7a7b9c5bef55576c1ea0c46920dec462c2ca778b115639652d1b69f0 in /root/buildinfo/      
# Mon, 02 Nov 2026 18:42:32 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T18:40:18Z" "org.opencontainers.image.revision"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "build-date"="2026-11-02T18:40:18Z" "architecture"="s390x" "vcs-ref"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "vcs-type"="git" "release"="1793642335"org.opencontainers.image.created=2026-11-02T18:40:18Z,org.opencontainers.image.revision=f738e88b7bb7caf108d5a65ce6eaa0f284c32f73
# Tue, 03 Nov 2026 22:23:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:23:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:23:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 22:23:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 22:23:10 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Tue, 03 Nov 2026 22:24:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 22:24:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 22:24:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 22:24:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:24:57 GMT
CMD ["jshell"]
# Tue, 03 Nov 2026 22:55:21 GMT
CMD ["gradle"]
# Tue, 03 Nov 2026 22:55:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 03 Nov 2026 22:55:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 03 Nov 2026 22:55:21 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 03 Nov 2026 22:55:24 GMT
WORKDIR /home/gradle
# Tue, 03 Nov 2026 22:56:12 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 03 Nov 2026 22:56:12 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 03 Nov 2026 22:56:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 03 Nov 2026 22:56:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 03 Nov 2026 22:56:25 GMT
USER gradle
# Tue, 03 Nov 2026 22:56:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 03 Nov 2026 22:56:29 GMT
USER root
```

-	Layers:
	-	`sha256:9a3d6c40d891b304d341a1d6ee5c8cf99c81b95429a4bf3eedf6a2ff1f340feb`  
		Last Modified: Tue, 03 Nov 2026 00:15:39 GMT  
		Size: 34.8 MB (34789253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f443284cbcd30ad4840ac16e6a7eb28af422aa48110fbb4e769e857a93bbfab5`  
		Last Modified: Tue, 03 Nov 2026 22:23:40 GMT  
		Size: 38.3 MB (38271497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc005dc448e35eb97332d5e6b313380698f5dcc87a0a73c65e6581db51e52e2f`  
		Last Modified: Tue, 03 Nov 2026 22:25:21 GMT  
		Size: 88.1 MB (88054446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c350be6af62c8067928d017b7bd8faa368ad0f9fa666f63f79e5e7f5ceebc3e`  
		Last Modified: Tue, 03 Nov 2026 22:25:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0908c4362402fe01586df358e3b21f2a763b0908368389c1fcca5ffe9c5aa63f`  
		Last Modified: Tue, 03 Nov 2026 22:25:19 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:590a8970bc6db476bc1671e21e1f19df01c4dc2e2c86361a2563f72189a826d0`  
		Last Modified: Tue, 03 Nov 2026 22:57:53 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157a177061af3bafc44f125b69dd0efe18813fe61b08f20b87a7ca9de27d3754`  
		Last Modified: Tue, 03 Nov 2026 22:57:57 GMT  
		Size: 42.4 MB (42382086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c442b9d0c47035a96179a558459d491d1db230f6c868ba74a6480e287314c78c`  
		Last Modified: Tue, 03 Nov 2026 22:58:00 GMT  
		Size: 151.5 MB (151533620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e5e04baf6367cc706eeb89ff02c3aeb7279284c679255c190a8c6e8263165e`  
		Last Modified: Tue, 03 Nov 2026 22:57:53 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:208f920a0fb0be7a46e8c4c088e7aed575ab6fe9454319c493a1fbb7cc2090e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7036372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:949bc85cb1c18282458e9e865417d2e21c6dd53f956242beddd1f0d5dedda6ed`

```dockerfile
```

-	Layers:
	-	`sha256:07a44e631ece6e9cca5e55835f2c6cf7410c9ead9ead7a274f38a734da9405ea`  
		Last Modified: Tue, 03 Nov 2026 22:57:54 GMT  
		Size: 7.0 MB (7011365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98c12cc02f7598f1e8c594089f6e8cee149eb006264c79cd4d4f9714312f662e`  
		Last Modified: Tue, 03 Nov 2026 22:57:52 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json
