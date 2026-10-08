## `gradle:9-jdk27-ubi`

```console
$ docker pull gradle@sha256:3721ab474cc8105734823d01fecdc4ba0d2a0cdf91ff687504290c5a6f271f83
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
$ docker pull gradle@sha256:a1b4f7309e2ed89cb884d1e6191f8d2d3c3e79b7933f5cce3bfd31721d925cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.0 MB (360976258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6beef3c9616c73917431ac6e729fc114fa70712aa299bd77a436cb62fc3225`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:04 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:04 GMT
COPY dir:7c2bbbb7f5210f15511c07d2c4001d7fe8f4d068648bb2a4ad6d3eda0100bdce in /      
# Wed, 07 Oct 2026 04:15:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:04 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:14:06Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:14:06Z" "architecture"="x86_64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:14:06Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:08:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:08:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:08:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:08:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:08:00 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 07 Oct 2026 22:08:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 07 Oct 2026 22:08:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:08:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:08:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 07 Oct 2026 22:08:31 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 16:41:20 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:41:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:41:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:41:20 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:41:20 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:41:25 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 16:41:25 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:41:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:41:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:41:28 GMT
USER gradle
# Thu, 08 Oct 2026 16:41:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:41:29 GMT
USER root
```

-	Layers:
	-	`sha256:7622e8b6ee5965126c68b18861709ea82ce88ca92ffc0ce29f05c5a215e20b96`  
		Last Modified: Wed, 07 Oct 2026 06:14:48 GMT  
		Size: 35.0 MB (34950412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8e1cf68c1f830ada9184d8afddc658ee8abebeed398c8c73aa306f2f1fd458`  
		Last Modified: Wed, 07 Oct 2026 22:08:18 GMT  
		Size: 40.7 MB (40732319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b9bc2a796c73cccffd6ca29918d78bebf00ad27be84563947fdffec7ad0a18`  
		Last Modified: Wed, 07 Oct 2026 22:08:48 GMT  
		Size: 93.6 MB (93623614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c418de04dd5bcbe9e0ff60498b63c0c445d0270718668f4b7b167dc58ba93f`  
		Last Modified: Wed, 07 Oct 2026 22:08:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f8f0af15871d29f0bc21e59c093942e77bd7d1a944eafd4c16334628b5769d`  
		Last Modified: Wed, 07 Oct 2026 22:08:46 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddf2d808b81ce7307caea1c1db3fd32e32e5b1af9268f418b47d931da47a382`  
		Last Modified: Thu, 08 Oct 2026 16:41:46 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1552023dedf30f2c095bf87ba6a2d18794b8fe9dcc2484239067e92ebff8119b`  
		Last Modified: Thu, 08 Oct 2026 16:41:47 GMT  
		Size: 40.1 MB (40106453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a60649d83071e6fe3efe57684621531d0c3468dcda1f9528724b759b048f861`  
		Last Modified: Thu, 08 Oct 2026 16:41:49 GMT  
		Size: 151.5 MB (151533613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe7ecddb80a24978e4a4a63389571e6ac21f7d30f01b372fee8d6c05aee9b19`  
		Last Modified: Thu, 08 Oct 2026 16:41:46 GMT  
		Size: 25.6 KB (25631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:4ff129f028ac058a3fa64b1c7c6d576468b71ff40c4e820867db53649f0308c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7081707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3976dccfa36bb8c9fe01dca69d48026504e61819bab38efa40d897f453cf7021`

```dockerfile
```

-	Layers:
	-	`sha256:4a4f97fed9cbb407da390463d2794aeedb99f3e5096cf115c85862fa36b8b275`  
		Last Modified: Thu, 08 Oct 2026 16:41:46 GMT  
		Size: 7.1 MB (7057298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45564ab49638278acd7d0b328e24c3f2ab9794939d4f426e4db741696dfddaf4`  
		Last Modified: Thu, 08 Oct 2026 16:41:46 GMT  
		Size: 24.4 KB (24409 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a9522993d9a94bba32ebc6aa4a91d98c7280a034b64e4693cd01b01db0657e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.4 MB (357427335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9203fd50b8f952c3e381b5138a199066c3cdde5633281e6b072c36dbb30b0da8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:40 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:40 GMT
COPY dir:2ef2e4e2a6b41f232e640f18c3dc5f15c442e4e4c8f84bc19a7a6f7ec341c008 in /      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:41 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:15:20Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:15:20Z" "architecture"="aarch64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:15:20Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:07:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:07:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:07:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:07:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:07:43 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 07 Oct 2026 22:08:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 07 Oct 2026 22:08:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:08:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:08:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 07 Oct 2026 22:08:19 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 16:41:20 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:41:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:41:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:41:20 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:41:20 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:41:26 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 16:41:26 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:41:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:41:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:41:29 GMT
USER gradle
# Thu, 08 Oct 2026 16:41:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:41:30 GMT
USER root
```

-	Layers:
	-	`sha256:a74897f26d06e9dd89c15728fca5ccd6144a0eb4a8a988677b35be5ef16025a2`  
		Last Modified: Wed, 07 Oct 2026 06:15:00 GMT  
		Size: 33.2 MB (33194468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c47c93f2da7d511b9e3d100670bde2e277fcc75c38118d48a57df604983be76`  
		Last Modified: Wed, 07 Oct 2026 22:08:03 GMT  
		Size: 40.5 MB (40470691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978c15cdb79ef7b6a13585663eb6554e6c21292ca8a71cbf360a4c72cfaf2943`  
		Last Modified: Wed, 07 Oct 2026 22:08:37 GMT  
		Size: 92.6 MB (92633754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2156ac2a5215e8ea7d1a35a51164314db00c1c2f9a0753fb2536de88eb602f30`  
		Last Modified: Wed, 07 Oct 2026 22:08:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92df2377dc1d8d27d572831b02e629dc00c9ab17110377d58c495b6797825111`  
		Last Modified: Wed, 07 Oct 2026 22:08:35 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835faf4b355f823fb959aa97247fa01baef54c755e413aa011943bca1f208448`  
		Last Modified: Thu, 08 Oct 2026 16:41:49 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa2c98e5a2cb7ee3f1edd8aa589744feafaed30269874af30f3faeb000caa5c`  
		Last Modified: Thu, 08 Oct 2026 16:41:51 GMT  
		Size: 39.6 MB (39561249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d709249b4dbeaf409e592062d2f8c4bb420e314833a1004d5b93d48af8c5eee8`  
		Last Modified: Thu, 08 Oct 2026 16:41:54 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab149cabeaf1210b2d3f051a188aee9449cd11368d9e64007fabfee41ba86708`  
		Last Modified: Thu, 08 Oct 2026 16:41:49 GMT  
		Size: 29.3 KB (29343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:2fd958f078718d89773367b1a9cabfae5fd3c1a2f109dbb7436a47a78a371c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7080157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfddfae4449fada1279ef4baee4be4fcc585248c4a9f35e6156edd8c66759ab2`

```dockerfile
```

-	Layers:
	-	`sha256:95af115ddfed42f6e1f10c240edc84f9ca2990cd50373d61d04d25dffbe74af1`  
		Last Modified: Thu, 08 Oct 2026 16:41:50 GMT  
		Size: 7.1 MB (7055551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7507582ebb7f6203a944da7ca492e17a45a84d6ec43540728cc29f24ca5c4eee`  
		Last Modified: Thu, 08 Oct 2026 16:41:49 GMT  
		Size: 24.6 KB (24606 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:f8bd0fc30ab4fa042c3ff4362fa00023ba7a6d84d3bbab7ab46ac398e543d8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.4 MB (367425258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173c2bca0adbc6cc880dba4f4df5bbf71c06685cd1ec0db9416f28e37890cbd8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:21:21 GMT
ENV container oci
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:2487f3d5e203d3216a55dc379085a4d7d5554d8e2f02df41000fbb0e3e09aa93 in /      
# Wed, 07 Oct 2026 04:21:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:21:22 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:f1aa898926061f8db7d6cba7b85a7dfe413a7429132b3c5ede46914750ecf0ff in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:f1aa898926061f8db7d6cba7b85a7dfe413a7429132b3c5ede46914750ecf0ff in /root/buildinfo/      
# Wed, 07 Oct 2026 04:21:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:21:04Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:21:04Z" "architecture"="ppc64le" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:21:04Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:21:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:21:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:21:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:21:20 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 07 Oct 2026 22:28:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 07 Oct 2026 22:29:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:29:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:29:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 07 Oct 2026 22:29:02 GMT
CMD ["jshell"]
# Wed, 07 Oct 2026 23:11:15 GMT
CMD ["gradle"]
# Wed, 07 Oct 2026 23:11:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 07 Oct 2026 23:11:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 07 Oct 2026 23:11:15 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 07 Oct 2026 23:11:16 GMT
WORKDIR /home/gradle
# Wed, 07 Oct 2026 23:11:40 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 07 Oct 2026 23:11:40 GMT
ENV GRADLE_VERSION=9.8.1
# Wed, 07 Oct 2026 23:11:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:53:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:53:05 GMT
USER gradle
# Thu, 08 Oct 2026 16:53:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:53:07 GMT
USER root
```

-	Layers:
	-	`sha256:b5d9c969c5baa30f03fe96495c747916f02c7eeeb53fe9ad61b3f919d3b4317c`  
		Last Modified: Wed, 07 Oct 2026 06:15:42 GMT  
		Size: 39.1 MB (39091436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a1e8879bdb28e6db16e53f2e5fb958bd30c0c8fd918d85338639b348a71392`  
		Last Modified: Wed, 07 Oct 2026 22:22:08 GMT  
		Size: 42.7 MB (42656404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90289d3a2819037a76fabb62de71597e3a8c469eb555cf38abe74bbd062f8a88`  
		Last Modified: Wed, 07 Oct 2026 22:29:52 GMT  
		Size: 92.3 MB (92257175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27be3b14478114714a5fe9b441640f050b957a1d9bf751a65f6b5c6de41b864`  
		Last Modified: Wed, 07 Oct 2026 22:29:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea436b283cb96501505dfdf9550374e359d638d9fc474d5508d1b9338e8a859`  
		Last Modified: Wed, 07 Oct 2026 22:29:50 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2708d1a520cfb9faa95b16cbec6346ef74c70c87d50ecd4f973a115bea79fa`  
		Last Modified: Wed, 07 Oct 2026 23:12:34 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8b50cbb286701ea1fbc9483a88a67d2a404a2b2d6d089b722eb36efeecf7a7`  
		Last Modified: Wed, 07 Oct 2026 23:12:36 GMT  
		Size: 41.9 MB (41881994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd060991f836bade43fd7030c19d088cb5dc04ab01414aa10c58cf119cf123c`  
		Last Modified: Thu, 08 Oct 2026 16:54:07 GMT  
		Size: 151.5 MB (151533650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a05eafb8d9983b466151c0e75487a2984b598b36d79f9bbcb9be50fd533b4703`  
		Last Modified: Thu, 08 Oct 2026 16:54:04 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:5cf3bdc80625d6862a07b9dad7797a4d5929c48263282d7f1c808cd6fcecfdff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7057133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2614d316e78c43d1f261edf053cb7ddcdab53334c7836f478005108048ae9a9`

```dockerfile
```

-	Layers:
	-	`sha256:57ad81dccc3aaa747381d48123815924e5c5c7cb56066a648012d5d50873ef7a`  
		Last Modified: Thu, 08 Oct 2026 16:54:04 GMT  
		Size: 7.0 MB (7032652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3749fa465d8a850ce9b80d4d49378c9f70f368f2a150df03d160ca80d0af94e`  
		Last Modified: Thu, 08 Oct 2026 16:54:03 GMT  
		Size: 24.5 KB (24481 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:de8aa895a7205d501fdf496f263a4172f2409543af9bf8b2126ade275dae7931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.8 MB (359811837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b818c3f8eed65805e9e0eb594c48543bfd2fbdd222789342f0995b4d73fcd0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:42:03 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:42:03 GMT
ENV container oci
# Wed, 07 Oct 2026 04:42:04 GMT
COPY dir:edc9a871e1b15cc4e528c324e484e27c0b6ed38df4b3279d07fad9c148deb885 in /      
# Wed, 07 Oct 2026 04:42:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:42:04 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:42:04 GMT
COPY dir:6544090d2515d740e9e7cc3578cccbf97a74265317faa8f8a6a85f6321178ee8 in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:42:04 GMT
COPY dir:6544090d2515d740e9e7cc3578cccbf97a74265317faa8f8a6a85f6321178ee8 in /root/buildinfo/      
# Wed, 07 Oct 2026 04:42:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:40:47Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:40:47Z" "architecture"="s390x" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:40:47Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:06:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:06:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:06:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:06:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:06:20 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 07 Oct 2026 22:07:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e4ec5c7276290c7bde0baecba9a29be4962f5388684296406a9799d465936087';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='49a350d6e0fe41f7ee94ffaf101f0951f35042e86c52efa8a751a38fcb2126bb';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='5bc83a1453c2b68963218717f138512ce10d7553a68432082e6553ac31fa829b';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='1cf69a4848ffb728b3b260dfd45206a51566ab571a02a30092271d4c580bccbc';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jdk_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 07 Oct 2026 22:07:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:07:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:07:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 07 Oct 2026 22:07:57 GMT
CMD ["jshell"]
# Wed, 07 Oct 2026 23:09:16 GMT
CMD ["gradle"]
# Wed, 07 Oct 2026 23:09:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 07 Oct 2026 23:09:16 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 07 Oct 2026 23:09:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 07 Oct 2026 23:09:16 GMT
WORKDIR /home/gradle
# Wed, 07 Oct 2026 23:09:19 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 07 Oct 2026 23:09:19 GMT
ENV GRADLE_VERSION=9.8.1
# Wed, 07 Oct 2026 23:09:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:48:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:48:56 GMT
USER gradle
# Thu, 08 Oct 2026 16:48:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:48:59 GMT
USER root
```

-	Layers:
	-	`sha256:f73b18af918eb1ad6c5813aab1506f4f41ebde8362c5bdcc4221d961cc288f38`  
		Last Modified: Wed, 07 Oct 2026 06:15:28 GMT  
		Size: 34.8 MB (34844684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b099d87e10bc10ad113dbfc93ae657536bc2605d3fbb570b9c5a67ed0f172559`  
		Last Modified: Wed, 07 Oct 2026 22:06:43 GMT  
		Size: 40.9 MB (40881969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8446669f1b3bfee2e7c284a731d7dbed213ecc8d1f2ad9c3921be1cfc3c05a4`  
		Last Modified: Wed, 07 Oct 2026 22:08:20 GMT  
		Size: 90.3 MB (90325733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a84f94d2744a953f1b2c4daae3d2aa46aa52de8c7fd25792b53992d456ed6a6`  
		Last Modified: Wed, 07 Oct 2026 22:08:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71d6c91266339c32aab132d3d55440737ec5ea8f137d628ff3de05d88b470a5f`  
		Last Modified: Wed, 07 Oct 2026 22:08:19 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de05080f72c49923e99e5223a794f96377e54011b30247490297d905cfe53c91`  
		Last Modified: Wed, 07 Oct 2026 23:09:51 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845c1e9184b38c5171167b0ce65a0431545ee2dd122e3281367abf703075392e`  
		Last Modified: Wed, 07 Oct 2026 23:09:53 GMT  
		Size: 42.2 MB (42221231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f8d09fc47986124c443ba01a97a4c95654a7be03fd7f8a8d0c2aeb59ca08380`  
		Last Modified: Thu, 08 Oct 2026 16:50:46 GMT  
		Size: 151.5 MB (151533619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6c35ec142e37d909da0fd7e943feb0bbfe0c2c7bbeb491e81b4214b0576cc1`  
		Last Modified: Thu, 08 Oct 2026 16:50:40 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:a08be73754bf1d414582f5ccd8bf47061df667e99d4c985eb08930beebdb513f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7047538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:693042c80a71d890cd930672ec1ed8aaaee1ef6ba3b4ded7508995fcc6a50634`

```dockerfile
```

-	Layers:
	-	`sha256:61ecd8d3605df71b4e5617a6e904102bf6ae0196a00e35c2b95dc2cd906238b5`  
		Last Modified: Thu, 08 Oct 2026 16:50:40 GMT  
		Size: 7.0 MB (7023131 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1a9f146d4d2543c0c6a720bb997c3170bc6ae1d7c7a4037a6b00a7952336be7`  
		Last Modified: Thu, 08 Oct 2026 16:50:38 GMT  
		Size: 24.4 KB (24407 bytes)  
		MIME: application/vnd.in-toto+json
