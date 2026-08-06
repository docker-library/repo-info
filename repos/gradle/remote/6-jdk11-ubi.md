## `gradle:6-jdk11-ubi`

```console
$ docker pull gradle@sha256:89c4ab348ea5a89f94e1acd1c92f7341bbf39eee2f856cf14ef7d315b04febd7
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

### `gradle:6-jdk11-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:a06a7838822d6351bb7f0deba784c8e8f1233cd7d47ea843efefe4359a09b52b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.8 MB (356765060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3b0f11fdd801dd1ea8d84e83b5f1646df5021248c9fc72800a8ca0247fab2ef`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:12:12 GMT
ENV container oci
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:566bd7ceef314001d2d4000252aedc98335cb96737e8ca003268a81789b22de2 in /      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:12:13 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /root/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:11:46Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:11:46Z" "architecture"="x86_64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:11:46Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:14:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:55 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 05 Aug 2026 18:15:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 05 Aug 2026 18:15:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:15:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:15:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 05 Aug 2026 18:15:04 GMT
CMD ["jshell"]
# Wed, 05 Aug 2026 19:11:39 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:11:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:11:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:11:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:11:39 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:11:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:11:43 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 05 Aug 2026 19:11:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 05 Aug 2026 19:11:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:11:45 GMT
USER gradle
# Wed, 05 Aug 2026 19:11:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 05 Aug 2026 19:11:45 GMT
USER root
```

-	Layers:
	-	`sha256:f5e26a8514cb54661b214b756f0f307e562755e1865d1e13fa375c8e6c6b88ae`  
		Last Modified: Wed, 05 Aug 2026 06:11:38 GMT  
		Size: 40.7 MB (40708771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bdcb719ab53289902924be1ff3f47ffb553e0675dd473e4d4fabbcecdfed27e`  
		Last Modified: Wed, 05 Aug 2026 18:15:21 GMT  
		Size: 27.7 MB (27658009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46192b578c29dfac74ebcd65b21b50999b2160ee5a0a663051846f0b407042c`  
		Last Modified: Wed, 05 Aug 2026 18:15:24 GMT  
		Size: 142.3 MB (142348804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9285af1813cf274ff31ade0976221d6233ba236d11d13d67596e44cb4da3b7`  
		Last Modified: Wed, 05 Aug 2026 18:15:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f80dcf592e4d704866cdf0117a165c2d6fb11a25f5c2f449f87eb8b5ec4428d`  
		Last Modified: Wed, 05 Aug 2026 18:15:20 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa420471abc1a25f1390fd817badc6993a98122ce65cfd287d9bb27350d456e`  
		Last Modified: Wed, 05 Aug 2026 19:12:02 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9e68cc86d1fc5251f9190f1b3a2eee37dc8cbc808ca237dc2a56a2fc9ee010`  
		Last Modified: Wed, 05 Aug 2026 19:12:03 GMT  
		Size: 37.9 MB (37917383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fbdcea7e7bfdf204000fe7be4c6bd6d4863d8deedeb753f61b4e541e2430b9e`  
		Last Modified: Wed, 05 Aug 2026 19:12:05 GMT  
		Size: 107.7 MB (107696663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d726b238a726f240ea90fc3b247c916819bcdaa75f11cfac550d79eac6689f2`  
		Last Modified: Wed, 05 Aug 2026 19:12:02 GMT  
		Size: 431.3 KB (431269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b0902f49ca960eb15491b8d4b55c6df66b835af373ebf6ee0dbfcf26422e7c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32a193c993cee0dd4a9305901c299a180b89aa0a660692ab4dff06af9a51b38`

```dockerfile
```

-	Layers:
	-	`sha256:248b9c8bca506499a541290263c16f278e469d91949286f257e0adad5c54747e`  
		Last Modified: Wed, 05 Aug 2026 19:12:02 GMT  
		Size: 5.3 MB (5318765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f2a1d096ac13137973ecfbdbf13d7f1ab25293825b63ca7f938517dbcd8c39d`  
		Last Modified: Wed, 05 Aug 2026 19:12:01 GMT  
		Size: 23.5 KB (23548 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ba80cd9a7866c9704835004b052c5a71169169ab9250655839b2946551bbc2e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351281098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b7874b3d9a17bc05b525a26d0a1ee8776cf2dafbad36cb6e04b67b7d6cfc928`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:14:19 GMT
ENV container oci
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:353d0b802c7bafe293cb00c4bee1ca7723a5390ae04dc844a3a7d0512dfa7188 in /      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:14:20 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /root/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:13:59Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:13:59Z" "architecture"="aarch64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:13:59Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:14:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:30 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 05 Aug 2026 18:14:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 05 Aug 2026 18:14:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 05 Aug 2026 18:14:40 GMT
CMD ["jshell"]
# Wed, 05 Aug 2026 19:10:41 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:10:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:10:41 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:10:41 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:10:41 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:10:45 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:10:45 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 05 Aug 2026 19:10:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 05 Aug 2026 19:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:10:48 GMT
USER gradle
# Wed, 05 Aug 2026 19:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 05 Aug 2026 19:10:48 GMT
USER root
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8afe5052ab1eb54a3aca70f5055fad8549d71f99ea8eaa6129950f5453a31eff`  
		Last Modified: Wed, 05 Aug 2026 18:14:57 GMT  
		Size: 28.1 MB (28101268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5324bb5584799c85f70464663d2a9f328a784e420b890343e02d67e0f4b7bd8e`  
		Last Modified: Wed, 05 Aug 2026 18:15:00 GMT  
		Size: 139.0 MB (139040640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c33a47a42491284e30e576aa85de66e1abbec9abb0f1b877fcc1d8c6e522462`  
		Last Modified: Wed, 05 Aug 2026 18:14:55 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8702e84bea6647b5df27701fb751a0326b447e2fde853fdde6de0294f26fd61a`  
		Last Modified: Wed, 05 Aug 2026 18:14:56 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c901193af90e00dac80322fb2505f18602da7f3817ca456bff542d2d378b59`  
		Last Modified: Wed, 05 Aug 2026 19:11:04 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c66c520d1e035de8f4cddef65b543ce55d097046bd8c2fbfe67413abd08bec`  
		Last Modified: Wed, 05 Aug 2026 19:11:06 GMT  
		Size: 37.2 MB (37204051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d36df736a671719ce8c947b09f1e21eb1dd4d63324d262c9d00a3bd3136eb5`  
		Last Modified: Wed, 05 Aug 2026 19:11:08 GMT  
		Size: 107.7 MB (107696672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ba137cde5d94876e3df6c85411ef79adf9e5f6aef66f9103a63e5d13170b40`  
		Last Modified: Wed, 05 Aug 2026 19:11:04 GMT  
		Size: 425.0 KB (425021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:67d6346b66e72b76efda31f594de589249a7fc7082f298efc3d1c59de6b58a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fbc152deb9b335902a2f476eb9ab31b5b47bb4955d109831425f5cf7f6d2c3a`

```dockerfile
```

-	Layers:
	-	`sha256:c741f90856749fd1923166647bddfecc047271494b43a892ae43b19af2025521`  
		Last Modified: Wed, 05 Aug 2026 19:11:04 GMT  
		Size: 5.3 MB (5317007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f66a3f4833710d64add5a7a5f3fe5028acf72c5ce98f2cc5bb90918f4fffc3a`  
		Last Modified: Wed, 05 Aug 2026 19:11:04 GMT  
		Size: 23.7 KB (23719 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:25fcc5c717db73de927606cf0a556f0d60472d8232b8b0ac4cb457254aa6334a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.7 MB (351746053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3a6aa647b35b38368246a21dfee40253ae4b7283ae2a30f85ba3a5489f335b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:17:07 GMT
ENV container oci
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:1ade7d4dffe44110b5720076840490f6baa7301b84541d08c0ea6a38569ff32e in /      
# Mon, 03 Aug 2026 17:17:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:17:08 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:c4aef7217014f798a2cbbb791d2d6bc060d5a6d90fc8cf9706d57150150b9513 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:c4aef7217014f798a2cbbb791d2d6bc060d5a6d90fc8cf9706d57150150b9513 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:17:08 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:16:50Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:16:50Z" "architecture"="ppc64le" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:16:50Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 20:54:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 20:54:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:54:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 20:54:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 20:54:00 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 20:55:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 20:55:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 20:55:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:55:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 20:55:49 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 22:32:44 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 22:32:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 22:32:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 22:32:44 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 22:32:44 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 22:34:20 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 04 Aug 2026 22:34:20 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 04 Aug 2026 22:34:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 04 Aug 2026 22:35:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 22:35:43 GMT
USER gradle
# Tue, 04 Aug 2026 22:35:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 22:35:44 GMT
USER root
```

-	Layers:
	-	`sha256:d878f355008c362e8a970b32096625c413c4690a3b0d735cf1fb625e90c0a75d`  
		Last Modified: Mon, 03 Aug 2026 18:11:34 GMT  
		Size: 45.1 MB (45128614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550cac100c4810402c753e19231ae0aefe14a5cc8a455755ec291a1491fd764e`  
		Last Modified: Tue, 04 Aug 2026 20:54:41 GMT  
		Size: 30.1 MB (30082322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7ce9add321ffe4ff05cb16d4dced8afe2e8983f269a4b3252f63e3daf488803`  
		Last Modified: Tue, 04 Aug 2026 20:56:22 GMT  
		Size: 129.6 MB (129614210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0122e86e7eb0892c876c56ab60a9666d8a6b6e37039c7eb42d2584a7a181c538`  
		Last Modified: Tue, 04 Aug 2026 20:56:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeeb00d86a240f37f4a55115b3adaa569df149df76e6c5f42680130b50b89ce`  
		Last Modified: Tue, 04 Aug 2026 20:56:19 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f745b58a4f704049106ea5021a529ce13501ae3ceb2654df62ec8a22aa49f0`  
		Last Modified: Tue, 04 Aug 2026 22:33:54 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9397ae7c50c0addb59aebb4612c3d5d808c91aeae8d41959b5c014d93731064`  
		Last Modified: Tue, 04 Aug 2026 22:35:15 GMT  
		Size: 39.2 MB (39185082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef930526d43a28477dd8963ae397b9deca3cc5c442af8536286e04a7097b526d`  
		Last Modified: Tue, 04 Aug 2026 22:36:20 GMT  
		Size: 107.7 MB (107696673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e135c89fddf64fac985998815f61859b5a1f3994470ac9c30936ba134b7ae755`  
		Last Modified: Tue, 04 Aug 2026 22:36:17 GMT  
		Size: 35.0 KB (34986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:8b941cf4b1a3293d141e3f2fa8f3f507fbe17cfee179718cc9249c663fb44ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5337370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8afd075a87c091b795bef3bd1d1478e086013b0449d86745babb6e27eca8af56`

```dockerfile
```

-	Layers:
	-	`sha256:eed9bdb6fc030617e452a6a35314db541a1fd2372b9aa5d57df4e9e3c86c9e6e`  
		Last Modified: Tue, 04 Aug 2026 22:36:18 GMT  
		Size: 5.3 MB (5313725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81df59ea532092c310424531e0bd09a95dce6a808564300d4efe0570c8638a0c`  
		Last Modified: Tue, 04 Aug 2026 22:36:17 GMT  
		Size: 23.6 KB (23645 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:bb21bb769514673e781342065668de45cb23211c2a2e98876281131ae2c2712f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334751771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f77e3c57730916b99ba9a04e1e064dadd5b91f78f19ef50c3adbd06ee55b03`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:18:51 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:18:51 GMT
ENV container oci
# Wed, 05 Aug 2026 05:18:52 GMT
COPY dir:6e7493a5dbcc43892e3007443f96f0cad75760ac381522a81b13e40f8c1fc362 in /      
# Wed, 05 Aug 2026 05:18:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:18:52 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:18:52 GMT
COPY dir:02e12ebc58e554f85181a7facb97561edf7af08a76981a2505ab1f0a802c448a in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:18:52 GMT
COPY dir:02e12ebc58e554f85181a7facb97561edf7af08a76981a2505ab1f0a802c448a in /root/buildinfo/      
# Wed, 05 Aug 2026 05:18:52 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:17:42Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:17:42Z" "architecture"="s390x" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:17:42Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:13:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:13:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:13:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:13:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:13:55 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 05 Aug 2026 18:14:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 05 Aug 2026 18:14:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 05 Aug 2026 18:14:04 GMT
CMD ["jshell"]
# Wed, 05 Aug 2026 19:09:47 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:09:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:09:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:09:47 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:09:47 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:09:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:09:58 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 05 Aug 2026 19:09:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 05 Aug 2026 19:10:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:10:01 GMT
USER gradle
# Wed, 05 Aug 2026 19:10:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 05 Aug 2026 19:10:01 GMT
USER root
```

-	Layers:
	-	`sha256:0b0edb564a4b5f3b8fdb7181835fe0f793a01ee7ce586005b92f344f184fa14b`  
		Last Modified: Wed, 05 Aug 2026 06:12:06 GMT  
		Size: 38.8 MB (38750854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d3637e524870369aa9f6775879769a86b86b51a7f4e747b90b5bf03fa5a8de`  
		Last Modified: Wed, 05 Aug 2026 18:14:33 GMT  
		Size: 27.7 MB (27687648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa92f55b934ea6539663fb979bf8df7751f4d7358ee8935fbd490516c4a0ab1`  
		Last Modified: Wed, 05 Aug 2026 18:14:40 GMT  
		Size: 123.1 MB (123061367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af13686415922981cb4630a0b394a4fe117235dcb69e8893fde043abb61ed0e3`  
		Last Modified: Wed, 05 Aug 2026 18:14:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e9a71f364c903abdfada09cec410678f966376b8a398fc82871ed470284c65`  
		Last Modified: Wed, 05 Aug 2026 18:14:36 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b770904e2f2b923796614b080e26a5777e30dec67990ae958fc8bd100ff149`  
		Last Modified: Wed, 05 Aug 2026 19:10:20 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e421a9070ba1fed730b98549ca9a9489562ef7049ce7ba3b74a0ecc7c01766d`  
		Last Modified: Wed, 05 Aug 2026 19:10:25 GMT  
		Size: 37.5 MB (37516095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815d7b463e8554b413c5fed13c1e8eff5001ab5288f286568a9b92708890feba`  
		Last Modified: Wed, 05 Aug 2026 19:10:26 GMT  
		Size: 107.7 MB (107696670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8f054d12f183f8434ca12c4b8db93c464cca2dcec4d16f0a24353c520bdbab`  
		Last Modified: Wed, 05 Aug 2026 19:10:24 GMT  
		Size: 35.0 KB (34977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:05663919c64170f3f61eb04dbe4a304fea39d7661d4abc1f17852e2b0a6d8d6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5327175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c04477c50546f4d179f6a106ededbf7b9ce231b2553ee22094bf365be77430`

```dockerfile
```

-	Layers:
	-	`sha256:e62683ff7e71e06a6a2557a44e59e6dc025c26a8b766fa066be64e06dc3b6f05`  
		Last Modified: Wed, 05 Aug 2026 19:10:24 GMT  
		Size: 5.3 MB (5303592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de4d378556627a6b936348bdaff409a7a57ee72639d71e82492b67c88fe073c0`  
		Last Modified: Wed, 05 Aug 2026 19:10:24 GMT  
		Size: 23.6 KB (23583 bytes)  
		MIME: application/vnd.in-toto+json
