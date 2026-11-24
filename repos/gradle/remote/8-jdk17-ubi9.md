## `gradle:8-jdk17-ubi9`

```console
$ docker pull gradle@sha256:f6b00bb75f760f1c736c4ad12d20fbb2b488e99ce16fd81afd9c67918176a136
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

### `gradle:8-jdk17-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:479558ba3391790e66e52513934dd0e306e31ccf3b1e63360fe2cc1d15e9acdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.9 MB (391948245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976b5c05eae3031ae7a6322062e67f320c94e70b72dfb76d601961546b6fb1aa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:08:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:08:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:08:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:08:23 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:08:23 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Mon, 23 Nov 2026 22:08:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:08:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:08:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:08:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:08:31 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:09:51 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:09:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:09:51 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:09:51 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:09:51 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:09:57 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:09:57 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 23:09:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 23:09:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:09:59 GMT
USER gradle
# Mon, 23 Nov 2026 23:10:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:10:00 GMT
USER root
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9671daa2ecaefc28250c67b769eb8774c0f3aa5607244a4e3c7f96488b0372a`  
		Last Modified: Mon, 23 Nov 2026 22:08:47 GMT  
		Size: 27.7 MB (27660558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ddd16245141c02c715b9acc31ef08d1f702c1b73b240e0413885a23eb9cfaf1`  
		Last Modified: Mon, 23 Nov 2026 22:08:49 GMT  
		Size: 146.1 MB (146119337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8131cbde85f9975f3187992bc30be861e2716be511b0a9264f7ce0905485f820`  
		Last Modified: Mon, 23 Nov 2026 22:08:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad3ee483bd05d3d0f9499815c0ac0545a7acb017e9ada2429b6a989720e1af0`  
		Last Modified: Mon, 23 Nov 2026 22:08:46 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51fde70cf46c54c744148eb4e81121e570fca531bd64811bb0e8efbfa6690bc0`  
		Last Modified: Mon, 23 Nov 2026 23:10:17 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b2dc3360a863c71d54e0204f14da114d324a77445369b9ae0f93539ee2d288`  
		Last Modified: Mon, 23 Nov 2026 23:10:18 GMT  
		Size: 38.0 MB (37962946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ebf17a6d252e7ad6387e694f6510ce87047c600bfc82f1532c823c8a05a0579`  
		Last Modified: Mon, 23 Nov 2026 23:10:21 GMT  
		Size: 139.5 MB (139499312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b3f6a64f21cbf27b7d7c97640ef6bcf8c616e3e56bb91623b86d6c9255efee`  
		Last Modified: Mon, 23 Nov 2026 23:10:17 GMT  
		Size: 54.9 KB (54900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:02d4003a20dcc5909cc42a854e9bc33677bee20630b11d93efcf634f3e9ffe2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5415932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0104a4243be6b1aef656697085489bf464895837192bcc34d91f9b4a90fa538f`

```dockerfile
```

-	Layers:
	-	`sha256:46626f0517bd2cb0ef692bb96a4fe76edd268ae36410050f4ac84d2e977d626d`  
		Last Modified: Mon, 23 Nov 2026 23:10:17 GMT  
		Size: 5.4 MB (5392085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bf285c58e5a2e5261b4d66179bd425cf27f7f5637cc7a255346d5dc31843272`  
		Last Modified: Mon, 23 Nov 2026 23:10:17 GMT  
		Size: 23.8 KB (23847 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:09dca1609b05f6117d33bc4f4802895cc6ed48a4e8ed0e50f3680f52cf4a5c65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.5 MB (388547454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a722b04ef89cdec61c06e500ce73538da586bdf0eb2a7efb98570a2f51cdd03`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:41:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:41:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:41:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:41:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:41:16 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 18 Nov 2026 21:41:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 21:41:25 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 21:53:39 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:53:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:53:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:53:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:53:39 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:53:44 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 18 Nov 2026 21:53:44 GMT
ENV GRADLE_VERSION=8.14.7
# Wed, 18 Nov 2026 21:53:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Wed, 18 Nov 2026 21:53:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:53:47 GMT
USER gradle
# Wed, 18 Nov 2026 21:53:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:53:48 GMT
USER root
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55951453d4b9db71ef83bf4f8a2fa8d00127c2124dfcd231726ef85157f6534e`  
		Last Modified: Wed, 18 Nov 2026 21:41:43 GMT  
		Size: 28.1 MB (28080246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e6cb2073f9fe631f1978e161461e240392c407ebd87604665802b7de23be74`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 145.0 MB (144966372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6e2478f418db0d5a2f2ae046ab6e88eea06e3f2cd4cc0639b7a818d2554b42`  
		Last Modified: Wed, 18 Nov 2026 21:41:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85d902be97cee342d6a70134e400c5171484340cc4217cdc67eaa30620804ea`  
		Last Modified: Wed, 18 Nov 2026 21:41:20 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20daaa25eb6b26ffb83678743b53ea9866fc76ce50a5c4d59f63296461f70446`  
		Last Modified: Wed, 18 Nov 2026 21:54:04 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695656a9c360e49b3f3acb4b7418c89722b3309195ba2b4b9297fcf159b2f63f`  
		Last Modified: Wed, 18 Nov 2026 21:54:05 GMT  
		Size: 37.3 MB (37260308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d52959a94d31f7fc314707450dd889b3885921203aeff1f472b5018605e13988`  
		Last Modified: Wed, 18 Nov 2026 21:54:07 GMT  
		Size: 139.4 MB (139431920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e52ff6e40c0dd7ce52e3c8a9a8f5a864b956901c1db0575f57bac99e89956ec`  
		Last Modified: Wed, 18 Nov 2026 21:54:04 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:e1fe04674d713ecb58a983949ced51ff12b54ef900dbe77fb5ab6eade8248739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5413702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364fc2554845c17b4ed8d04f80b7eb1e08448eba2621365545e5d5b3d72d4c67`

```dockerfile
```

-	Layers:
	-	`sha256:e89afcd8ba427f5db7a040ee73e203c7de50208f9e4b42ed1a5e429ae4185aa2`  
		Last Modified: Wed, 18 Nov 2026 21:54:04 GMT  
		Size: 5.4 MB (5389653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06f8020612f9516681e3aea76dc7b5c902f868e28b2a2fb87611783286cc0a83`  
		Last Modified: Wed, 18 Nov 2026 21:54:04 GMT  
		Size: 24.0 KB (24049 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:59cd478f850ac40d8e146d5b009d66489cac5d58b0e1a7d3a04bd54e5c5da0ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.8 MB (398772459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df0f7a33ca9f7a3c2ee6be8525fcb5426ef26186829c39892f7d7b9a48a11145`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:21:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:21:53 GMT
ENV container oci
# Fri, 20 Nov 2026 18:21:53 GMT
COPY dir:9d42577db2dc9d97b6db090d2d65c35ca6b076e887552712746b7559e7eae01d in /      
# Fri, 20 Nov 2026 18:21:54 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:21:54 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:21:54 GMT
COPY dir:ab6ed5ccaae221eefc015f1cf511e671a90d35c952f4480f0970740c7b1f1a8b in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:21:54 GMT
COPY dir:ab6ed5ccaae221eefc015f1cf511e671a90d35c952f4480f0970740c7b1f1a8b in /root/buildinfo/      
# Fri, 20 Nov 2026 18:21:55 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:21:30Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:21:30Z" "architecture"="ppc64le" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:21:30Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Mon, 23 Nov 2026 22:10:08 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:10:13 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:10:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:10:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:10:13 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 23:11:11 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 23:11:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 23:11:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 23:11:11 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 23:11:11 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 23:11:24 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 23:11:24 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 23:11:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 23:12:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 23:12:39 GMT
USER gradle
# Mon, 23 Nov 2026 23:12:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 23:12:41 GMT
USER root
```

-	Layers:
	-	`sha256:c97b9a308c8eb9502e6d4ff0ae8c362b07bd35b8e0a0e3a4e8a1e495976591bc`  
		Last Modified: Sat, 21 Nov 2026 00:18:56 GMT  
		Size: 45.0 MB (45027256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7aacf7537282855b98b7871ddc721a81a0058cc5e019d99c2fb43f04ebb85f4`  
		Last Modified: Mon, 23 Nov 2026 22:06:42 GMT  
		Size: 30.1 MB (30084401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9826e58877971f260c30a4d69b0ea0f739d7f7477751aa6a1567c4ac9482ee8`  
		Last Modified: Mon, 23 Nov 2026 22:10:59 GMT  
		Size: 144.9 MB (144911270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09fcdf24af4419761a175477150f7a3628f9633027718477154cacf4b8aab07`  
		Last Modified: Mon, 23 Nov 2026 22:10:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8e6b347b8641077d6c4f5d6b436634c4db9a3c787d69344d426f2219ad1a94`  
		Last Modified: Mon, 23 Nov 2026 22:10:55 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e4abeb7b21e200fe4e0cba1ce845b08a2ae428c63c2e99409c6301a48251eb`  
		Last Modified: Mon, 23 Nov 2026 23:12:07 GMT  
		Size: 1.7 KB (1717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55f38533083fa0f0da4eb4fc3c199b9171f52c9a7944bf7be188abee5390107`  
		Last Modified: Mon, 23 Nov 2026 23:12:10 GMT  
		Size: 39.2 MB (39210859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a364b9640968b5f0167f592ea3d127b7daebdc8b016cca6604fffb878e9ec7`  
		Last Modified: Mon, 23 Nov 2026 23:13:19 GMT  
		Size: 139.5 MB (139499313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc3099ddb3158ee9a8dd000cdff12decbec27ac3a301f93917a54d95632c38a`  
		Last Modified: Mon, 23 Nov 2026 23:13:15 GMT  
		Size: 35.0 KB (35010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:d61f8b00438df626625f3d29ce458a90e65554957875f99ef49f469dec92944b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5410364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fff0f768ce0e070ab8d6e0cfab3e9ab740919bf06fba7b88344cd8329512e7e`

```dockerfile
```

-	Layers:
	-	`sha256:765dd02305cec8cb9319f185f2f294c0dc9d079420236d6774f47ed7a0a85591`  
		Last Modified: Mon, 23 Nov 2026 23:13:15 GMT  
		Size: 5.4 MB (5386418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68bf81a36883efc0c173c55a56205217c9c4a45af3b4d01bbd163bd282832a73`  
		Last Modified: Mon, 23 Nov 2026 23:13:15 GMT  
		Size: 23.9 KB (23946 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:0b6fddeaf44a0e96a8540344f73efbd778e65c2ee069e6ef5791e8c000eecf65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.8 MB (378846331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deafcf4d552e6d638609b5275a010acb927da6747787690319c8e928d090c6af`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:47:48 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:47:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:47:49 GMT
ENV container oci
# Fri, 20 Nov 2026 18:47:49 GMT
COPY dir:4860b72aebf06285c055212d0515db541664c99cacb0a5928bddfb8368bad1f4 in /      
# Fri, 20 Nov 2026 18:47:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:47:50 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:47:51 GMT
COPY dir:578ee725f27a0a02192213651b81dddb3f241dbd46fc05097b5828039995de43 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:47:51 GMT
COPY dir:578ee725f27a0a02192213651b81dddb3f241dbd46fc05097b5828039995de43 in /root/buildinfo/      
# Fri, 20 Nov 2026 18:47:51 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:46:44Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:46:44Z" "architecture"="s390x" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:46:44Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:05:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:52 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:52 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Mon, 23 Nov 2026 22:05:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:06:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:06:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:06:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:06:01 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 22:10:20 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 22:10:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 22:10:20 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 22:10:20 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 22:10:20 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 22:10:26 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 23 Nov 2026 22:10:26 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 22:10:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 22:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 22:11:22 GMT
USER gradle
# Mon, 23 Nov 2026 22:11:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 22:11:23 GMT
USER root
```

-	Layers:
	-	`sha256:12ee8f9b356a9697783bcbbc91605329f7064346789cdc657774072dc51daf3e`  
		Last Modified: Fri, 20 Nov 2026 19:55:28 GMT  
		Size: 38.7 MB (38653844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765f9b563d70cddd2448b248d5ba9c7bd65465dc4ba0cb88b6e93e9ecc3368e3`  
		Last Modified: Mon, 23 Nov 2026 22:06:15 GMT  
		Size: 27.7 MB (27686489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681484fa34a9132a2940a6d511efca19c1285381979dee073f71263348cc6a1d`  
		Last Modified: Mon, 23 Nov 2026 22:06:25 GMT  
		Size: 135.4 MB (135418905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af0a71054b3f9ce2253e31abbc1e5e9bf672b52c4eeeb893d3ed6e19ab82b700`  
		Last Modified: Mon, 23 Nov 2026 22:06:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1387befb5790575abfa37369a4f92e1abd483d1be46d888e2123102b458127ca`  
		Last Modified: Mon, 23 Nov 2026 22:06:23 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098743430042b8a143c6afb40046f1687fc2adcf9ce1844ed23427f6ebd5588c`  
		Last Modified: Mon, 23 Nov 2026 22:10:59 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd023ce257631634414fe10e23aac7f200ac32fda85e1fa64071dcba0d05c19a`  
		Last Modified: Mon, 23 Nov 2026 22:11:00 GMT  
		Size: 37.5 MB (37548423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7646a1edc938d07594e2ae60037cc2b64030c3d2a983c7c5dedd9ba9350378`  
		Last Modified: Mon, 23 Nov 2026 22:11:48 GMT  
		Size: 139.5 MB (139499315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972d00268a4e01623d2213fcebe4a6911c92a5f7e502f403cc0e4a1b01d8a6b9`  
		Last Modified: Mon, 23 Nov 2026 22:11:46 GMT  
		Size: 35.0 KB (35009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:7f8252d50a747a7460762d749bddab0d31568b6cb0f1a477b56d63f7c7e546e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5399545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614a1f2e8176e26f80bfe998d116b9bcb59b0011b9bdd1f5c79ac36dde4f048d`

```dockerfile
```

-	Layers:
	-	`sha256:7373f138ef7df473d73b6cec4d04de3d1a5e4e72c8c3ffba548ae204028f04be`  
		Last Modified: Mon, 23 Nov 2026 22:11:46 GMT  
		Size: 5.4 MB (5375662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f348dafd250a0bc2889be5869277fa858ecae5f06b27b59736dc6d67e246a6`  
		Last Modified: Mon, 23 Nov 2026 22:11:46 GMT  
		Size: 23.9 KB (23883 bytes)  
		MIME: application/vnd.in-toto+json
