## `gradle:jdk27-ubi`

```console
$ docker pull gradle@sha256:99fca1903b0b0b6e3abaaca3fef05a6d14e044a42986bdd9af59f78f7e3597da
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

### `gradle:jdk27-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:1a203ebe63a62a0840be4dd02fb962347361f68c832d7f57104ffeedfe873a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358825000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f924ba1260b19230c994b5b374d6a2c7e64e1d8494c575fded6afc921a620721`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:34:34 GMT
ENV container oci
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:3fc2149cba1aae646de340c6940fc0331b4ca2629dd609c7c1400ec115ce9c6e in /      
# Thu, 05 Nov 2026 07:34:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:34:35 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:34:13Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:34:13Z" "architecture"="x86_64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:34:13Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Mon, 09 Nov 2026 23:59:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:59:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:59:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:59:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 09 Nov 2026 23:59:30 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:59:36 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:59:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:59:37 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:08:39 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 00:08:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 00:08:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 00:08:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 00:08:39 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 00:08:46 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 00:08:46 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 00:08:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 00:08:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 00:08:49 GMT
USER gradle
# Tue, 10 Nov 2026 00:08:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 00:08:49 GMT
USER root
```

-	Layers:
	-	`sha256:b0218091bf1acf0117c078cab67cd8be28c27f65609cc1af616ea6886997ebab`  
		Last Modified: Thu, 05 Nov 2026 09:20:39 GMT  
		Size: 34.9 MB (34932248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b11969a4d8320b29ac4702d0eea906f6c1b035ef0be32e4352df8f71edce8a`  
		Last Modified: Mon, 09 Nov 2026 23:59:55 GMT  
		Size: 37.9 MB (37890742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c0e9c565d75f1b5f6868a3b5a33728b46c6a769cbeb5aa7ee6c2e100626cd7`  
		Last Modified: Mon, 09 Nov 2026 23:59:56 GMT  
		Size: 93.6 MB (93648555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd18cfa921ae379a99dec4f661111b42962de5e846feec79ae47be9f0ea2516`  
		Last Modified: Mon, 09 Nov 2026 23:59:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcb58607f708e94fda1972378026d1962c40f4a7aa2f27c323ab96675113885`  
		Last Modified: Mon, 09 Nov 2026 23:59:54 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8d4e7720656b3f483c5476d29e22c5632c923ea47a007d172d88f010030633`  
		Last Modified: Tue, 10 Nov 2026 00:09:08 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c83496920659fff88b0822d14443b46319457be902ed27dfe53a68809b6125`  
		Last Modified: Tue, 10 Nov 2026 00:09:10 GMT  
		Size: 40.8 MB (40790013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69468c2ea9f4cfbd6b723afc694a52d70f26863ece49bba3bf09baf2ce482a9f`  
		Last Modified: Tue, 10 Nov 2026 00:09:12 GMT  
		Size: 151.5 MB (151533620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701e40ed10557ede49f27034f17b731c0c8e3ff89ce89c856afdb6a48623ee8f`  
		Last Modified: Tue, 10 Nov 2026 00:09:08 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:6123dbc82e2fc0de5ad510d4c4ff4b21a8f7c241e11abf16805d278b3ba9d774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca34f37fd9c4b81c37356d2bb5c3bdac154167b3b2779d2184d06ce6482a9faa`

```dockerfile
```

-	Layers:
	-	`sha256:b60c3cd955b715a268ed7d41298afecd787a0a458fffc7a418537648c2e54207`  
		Last Modified: Tue, 10 Nov 2026 00:09:08 GMT  
		Size: 7.0 MB (7048609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:785335e1ff2e7bedb89b566a7ea845ac044687238716d500e00d71ff72871543`  
		Last Modified: Tue, 10 Nov 2026 00:09:08 GMT  
		Size: 24.4 KB (24421 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e62613c2a73740072bcd30f20a7469c9c7418531929fe3755d092977e206ed2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.4 MB (355381223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908554d9faa77e9d9c6f5851abf88734873cb5bd1707634e55ef2ac971abd385`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:38:13 GMT
ENV container oci
# Thu, 05 Nov 2026 07:38:14 GMT
COPY dir:089f13b60ac5a6f3bf2df00bfd8d6b35f10e4772d781538a85ad7aaebf293498 in /      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:38:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /root/buildinfo/      
# Thu, 05 Nov 2026 07:38:16 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:37:45Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:37:45Z" "architecture"="aarch64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:37:45Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Mon, 09 Nov 2026 23:58:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:58:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:58:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:58:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 09 Nov 2026 23:58:46 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:58:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 09 Nov 2026 23:58:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:58:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:58:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:58:54 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:08:36 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 00:08:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 00:08:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 00:08:36 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 00:08:36 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 00:08:44 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 00:08:44 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 00:08:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 00:08:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 00:08:47 GMT
USER gradle
# Tue, 10 Nov 2026 00:08:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 00:08:48 GMT
USER root
```

-	Layers:
	-	`sha256:7aee463747d818b9fbc2248922298e0ccf21bdb30d3990b9ca3eec1000343059`  
		Last Modified: Thu, 05 Nov 2026 09:38:32 GMT  
		Size: 33.1 MB (33070630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5d39b0421fd0d8019b4ae68327a3ab971db5d234810f25c52a4e77a6b5b60e`  
		Last Modified: Mon, 09 Nov 2026 23:59:13 GMT  
		Size: 37.8 MB (37835378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dcd961c6efa671719ec70ec090f8f216cbdb0424b301bc4969e59f96302305`  
		Last Modified: Mon, 09 Nov 2026 23:59:14 GMT  
		Size: 92.7 MB (92660987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba1f0028ae0887c67454ea3364e16c25c7e63fc19c830e2286d39b231c0a6f`  
		Last Modified: Mon, 09 Nov 2026 23:59:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e374ad4a204372da82907fd0dd386703454a6c1016a23b8157d3e30c6850cbe`  
		Last Modified: Mon, 09 Nov 2026 23:59:11 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce4f43c192fd971bfe9ab4e719517f00cef7d2fb0526fca6b6684a85e32e9fc`  
		Last Modified: Tue, 10 Nov 2026 00:09:08 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13989514421ebe6ed590cdabceb1bc5c34d742939c2af20fecf62cfe0111c84`  
		Last Modified: Tue, 10 Nov 2026 00:09:09 GMT  
		Size: 40.2 MB (40247049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d4830300c961ecff1f038981a8c69c0b23024c8f7e3d20e34c1c9cad4b48b2`  
		Last Modified: Tue, 10 Nov 2026 00:09:11 GMT  
		Size: 151.5 MB (151533623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495566eb89ca2851328a5a2e37b64daff2c30688fe007f430d400e5e00e33cb0`  
		Last Modified: Tue, 10 Nov 2026 00:09:08 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:a5a032e38d77226cc43604c255521997d7a642624e852a8fecc8bef023aa1398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7071480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f63ab49d89ece29e5938df98f35ab1dcb06b1da4deb48f976915b196bb6a85e`

```dockerfile
```

-	Layers:
	-	`sha256:2f8eca693783577b44b2bb3054a0e2685cfe11e320880ee5bd8f45c9de969523`  
		Last Modified: Tue, 10 Nov 2026 00:09:08 GMT  
		Size: 7.0 MB (7046862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55e06ffd8b9eec9b7397bfd1417351eaf1f29497af2b4120ecc1ada819df0c75`  
		Last Modified: Tue, 10 Nov 2026 00:09:08 GMT  
		Size: 24.6 KB (24618 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:2fd7040df39ba069428fbb87529edb2d4395c8420d787a1527099306e8078a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.5 MB (364514926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fc026b89c62165f726d8722e54a1ddcce3568bdb9cb6f938f4e224c9705437`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:40:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:40:30 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:40:30 GMT
ENV container oci
# Thu, 05 Nov 2026 07:40:30 GMT
COPY dir:ef0a5b3221286bc5da7ded1d6d73993149619ebbfa1eff48bd10630e811a62f3 in /      
# Thu, 05 Nov 2026 07:40:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:40:31 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:40:31 GMT
COPY dir:bc858c1c076be826efb9489bf63488f5dbdd270173dcfb63b9afab32a68c8beb in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:40:31 GMT
COPY dir:bc858c1c076be826efb9489bf63488f5dbdd270173dcfb63b9afab32a68c8beb in /root/buildinfo/      
# Thu, 05 Nov 2026 07:40:32 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:40:01Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:40:01Z" "architecture"="ppc64le" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:40:01Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Fri, 06 Nov 2026 10:15:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 06 Nov 2026 10:15:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:15:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 06 Nov 2026 10:15:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 06 Nov 2026 10:15:49 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 06 Nov 2026 10:26:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 06 Nov 2026 10:26:41 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 06 Nov 2026 10:26:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 06 Nov 2026 10:26:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 06 Nov 2026 10:26:43 GMT
CMD ["jshell"]
# Fri, 06 Nov 2026 14:40:41 GMT
CMD ["gradle"]
# Fri, 06 Nov 2026 14:40:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 06 Nov 2026 14:40:41 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 06 Nov 2026 14:40:41 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 06 Nov 2026 14:40:42 GMT
WORKDIR /home/gradle
# Fri, 06 Nov 2026 14:40:55 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 06 Nov 2026 14:40:55 GMT
ENV GRADLE_VERSION=9.8.2
# Fri, 06 Nov 2026 14:40:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Fri, 06 Nov 2026 14:41:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 06 Nov 2026 14:41:00 GMT
USER gradle
# Fri, 06 Nov 2026 14:41:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 06 Nov 2026 14:41:04 GMT
USER root
```

-	Layers:
	-	`sha256:e2df2a13f2a2146cbf4edd81ddf04fddc43c45871b3c10eea6e38c08cdc09fc0`  
		Last Modified: Thu, 05 Nov 2026 12:26:21 GMT  
		Size: 39.1 MB (39077253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae5ca79aa4bfeebb6e95239c5d4e9200e790e213dcca34bd1a5b5d65159f996`  
		Last Modified: Fri, 06 Nov 2026 10:16:40 GMT  
		Size: 39.7 MB (39668802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca7641820d89f3fbd8455dd6ffdcd17fb6b60cdfd19428e2c35eb70b96a7cb6`  
		Last Modified: Fri, 06 Nov 2026 10:27:31 GMT  
		Size: 92.3 MB (92257182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532dcece479e4bc9b210413a4b9de06fd96b4289b3b7e67f28ffe9669b10cd69`  
		Last Modified: Fri, 06 Nov 2026 10:27:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46686285638361419099b1269831895ac5582ad55f8a1788cb61b5f60a35ee77`  
		Last Modified: Fri, 06 Nov 2026 10:27:29 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72fe37d641f22f7525f7a0a43bb740616dc49bb86f458e5d51550785245a85f`  
		Last Modified: Fri, 06 Nov 2026 14:42:02 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ad043fa7f78c07cf9b8542a0aec4349429445250f156c9de16650e399ad362`  
		Last Modified: Fri, 06 Nov 2026 14:42:04 GMT  
		Size: 42.0 MB (41973481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15aee9f5351ddcf4f90055e04f4cfcce10c12218838a0334c0ef9114d2d14f6`  
		Last Modified: Fri, 06 Nov 2026 14:42:07 GMT  
		Size: 151.5 MB (151533617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5993bf91ae012fd809c5016d61fe40d86818d99754617285b304de9a90d59b`  
		Last Modified: Fri, 06 Nov 2026 14:42:02 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:2154107da777d99f132507408303512cc92a163bdb68a7c29695b46a0b048b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7043498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7ffeb06f9fc6df1ca308a1a643fa4c73d1e0f90bd6052859ea7adbcf75a8dc9`

```dockerfile
```

-	Layers:
	-	`sha256:63d6d34344f7a32972fd6c0ed122596cfb2389e9bc42ced0ad20a0e09334b703`  
		Last Modified: Fri, 06 Nov 2026 14:42:03 GMT  
		Size: 7.0 MB (7019019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1afbd581ae7038d4f550cfe8e87d5d19aafc8d1bfb88a7e06e4e56e8bc60943`  
		Last Modified: Fri, 06 Nov 2026 14:42:02 GMT  
		Size: 24.5 KB (24479 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk27-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:8ccc478c20d5f96f338994234bc56d3443f58fea8e3104a9941805b9518a459e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.7 MB (357675808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b1c1999e25b9f962e8b173942ba0fdae303f35261f7947eec20f639f44b189`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 08:48:01 GMT
ENV container oci
# Thu, 05 Nov 2026 08:48:01 GMT
COPY dir:58e5cbdf987899e4e343a163bb22217cbde7bf746a590beffe7a2cdc589f8192 in /      
# Thu, 05 Nov 2026 08:48:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 08:48:02 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 08:48:02 GMT
COPY dir:ff22a7eb7b8af6dbfdfe7086cf3f72f26e5740e5b5b8980b18d7a78ef06f8b34 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 08:48:02 GMT
COPY dir:ff22a7eb7b8af6dbfdfe7086cf3f72f26e5740e5b5b8980b18d7a78ef06f8b34 in /root/buildinfo/      
# Thu, 05 Nov 2026 08:48:03 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T08:46:47Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T08:46:47Z" "architecture"="s390x" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T08:46:47Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 22:55:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:55:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:55:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:55:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:55:39 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Mon, 09 Nov 2026 23:51:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 09 Nov 2026 23:51:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:51:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:51:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:51:21 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 00:08:43 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 00:08:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 00:08:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 00:08:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 00:08:44 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 00:09:04 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 00:09:04 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 00:09:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 00:09:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 00:09:09 GMT
USER gradle
# Tue, 10 Nov 2026 00:09:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 00:09:10 GMT
USER root
```

-	Layers:
	-	`sha256:cbab0f587f3ad64e48f0d9219263296257c575311ec58a5c6ef9006d5af91813`  
		Last Modified: Thu, 05 Nov 2026 12:26:16 GMT  
		Size: 34.8 MB (34788872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7d265596f63282066592c92f0af8a76c30d8648e7fdd4947ca73efac5fb5ce`  
		Last Modified: Thu, 05 Nov 2026 22:56:32 GMT  
		Size: 38.3 MB (38272090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9bd6735136ffcc9ab0f0bedb923544bf3e3649e62fa335353926d4d64d1290`  
		Last Modified: Mon, 09 Nov 2026 23:51:56 GMT  
		Size: 90.1 MB (90076811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e029232f69cce8ee00724308f7762839620fcf18d465e72cbb09be0aa370fc`  
		Last Modified: Mon, 09 Nov 2026 23:51:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3843bef43de362efa0b0a25cac8b3bb5fdb44bbc723ecd8bfe7daa46dda9255`  
		Last Modified: Mon, 09 Nov 2026 23:51:54 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494334125f4fd1d48394fd2db6688431921d532ece79f17bf327bc459f5de302`  
		Last Modified: Tue, 10 Nov 2026 00:09:47 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f2a2b90a45ddec95348b38e9b62890087565a56ab8626f7201aeb772871f99`  
		Last Modified: Tue, 10 Nov 2026 00:09:49 GMT  
		Size: 43.0 MB (42999821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469de294506b096f7cee540c4cdc7306a4be58d873124980888d57bfb6d19809`  
		Last Modified: Tue, 10 Nov 2026 00:09:52 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d70154d6b000417aefdd2f69242c0ac0fc08ccc578708ecaf047db8ae25a8c8`  
		Last Modified: Tue, 10 Nov 2026 00:09:47 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:bea886446799a8673a516544bb219e2287dee206a884fe550f8d173c90b8fee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7036999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d543d4f780160de0769f70bec705a95a2a658758b5e56549043614b23b36a3e`

```dockerfile
```

-	Layers:
	-	`sha256:ddd10913d0891d2e20861ae17c30c1e90d8317126471ace93e620683a69db046`  
		Last Modified: Tue, 10 Nov 2026 00:09:47 GMT  
		Size: 7.0 MB (7012581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abe90a91a04b7edcc288562341e82b90a84c2f9a0693f060b0ad4952342fd7ff`  
		Last Modified: Tue, 10 Nov 2026 00:09:47 GMT  
		Size: 24.4 KB (24418 bytes)  
		MIME: application/vnd.in-toto+json
