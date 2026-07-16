## `gradle:jdk21-ubi`

```console
$ docker pull gradle@sha256:29848d04d81e731e4516622dff5b71d9f4f2660e88013e6380cb7097ce9b6969
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
$ docker pull gradle@sha256:463927dd927cc41d1201e280db9cf3fd1ee714078b337c34f35f49858034c9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411346057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9a19f36b92a9085cbba3e3983c9816292fd5d9ba0295e30d58bbd510bb43ce`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:52:21 GMT
ENV container oci
# Wed, 15 Jul 2026 05:52:22 GMT
COPY dir:e80ceae0f38fed255e475d6f3c857d9cc653b611388172a20e2345e2608f2c11 in /      
# Wed, 15 Jul 2026 05:52:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:52:22 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:52Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:52Z" "architecture"="x86_64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:52Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:22:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:22:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:22:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:22:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:22:22 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 16 Jul 2026 00:22:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:22:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:22:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:22:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:22:29 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:13:47 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:47 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:47 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:50 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:50 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:13:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:13:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:13:53 GMT
USER gradle
# Thu, 16 Jul 2026 01:13:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:13:53 GMT
USER root
```

-	Layers:
	-	`sha256:c7288023ded975bbfebf94654b2abd0529e40b52fa589ee42fa73afc0e6c0670`  
		Last Modified: Wed, 15 Jul 2026 06:55:17 GMT  
		Size: 34.9 MB (34898991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4750f299570da49c562eda5a2c78acfe714086355c51fd49de08121f0837cab`  
		Last Modified: Thu, 16 Jul 2026 00:22:47 GMT  
		Size: 37.8 MB (37772867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6789110fb1b493574da2a40c0c6409d0f51782e58a8ff8aaa163b21d97c5e74`  
		Last Modified: Thu, 16 Jul 2026 00:22:49 GMT  
		Size: 158.2 MB (158172720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911796e44c9a4a22eb3fe9e84eba20109aa1e3768c60805d96afc2e5f211b7bf`  
		Last Modified: Thu, 16 Jul 2026 00:22:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4712545fdb7155104752e7d9a4a3a69646f327f14ae4a290ed8716bf2a80b3c5`  
		Last Modified: Thu, 16 Jul 2026 00:22:45 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abb2d6b42823115a9eb9d83f1924411c34229580eb8620ec0cda9ae4e572420`  
		Last Modified: Thu, 16 Jul 2026 01:14:13 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf8d16bffd4a33a019addf2d5980c92cdc3f86842f8935446bc1d2fb59bceed`  
		Last Modified: Thu, 16 Jul 2026 01:14:15 GMT  
		Size: 39.9 MB (39875811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c4adad6503cff8d4441d428d39937e5078ca818dc0d3aaa75419849e116beb`  
		Last Modified: Thu, 16 Jul 2026 01:14:17 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4fe57e47bc746951168910f22a4e92611aa10ab7212230d1afe8b9ed5510df2`  
		Last Modified: Thu, 16 Jul 2026 01:14:13 GMT  
		Size: 25.6 KB (25610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:5c4c4afe450419995a10890fd152467c6a7f5d6552958b93aa8dc99f5300455a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7114926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e7ed9cc4548f0f04696d123a45d5f158417a146b925de8ae62b88e56cfd7c2`

```dockerfile
```

-	Layers:
	-	`sha256:18e7d782e5453a3379f860b5dcc421eeafc65b2d2ad98ce911bc4726a6e87447`  
		Last Modified: Thu, 16 Jul 2026 01:14:13 GMT  
		Size: 7.1 MB (7090472 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa031665bd0501f1dd98361ce98d5aace63fe94cafbf9df54b485948e65e9677`  
		Last Modified: Thu, 16 Jul 2026 01:14:13 GMT  
		Size: 24.5 KB (24454 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a3a42e8b85162a867137f581fd806b403a8cce4fe374fb16e8e97fa615ec4e31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.2 MB (407165011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749509b29d5b6cba5df47e7941789cb43d3230df3ae61ea89aa3710e94f09f19`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:50:02 GMT
ENV container oci
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:8f070411f1ee56ca3961d04e0e908caad0eb4e03104d45b7f770bb84cd3a08af in /      
# Wed, 15 Jul 2026 05:50:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:50:03 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:04f8dce71511af7de523b5498ebb5427d3946b49dd8d31c37d9494947f53788a in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:04f8dce71511af7de523b5498ebb5427d3946b49dd8d31c37d9494947f53788a in /root/buildinfo/      
# Wed, 15 Jul 2026 05:50:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:49:39Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:49:39Z" "architecture"="aarch64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:49:39Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:21:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:21:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:21:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:21:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:21:39 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 16 Jul 2026 00:23:08 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:23:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:23:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:23:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:23:10 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:13:48 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:48 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:48 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:52 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:52 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:13:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:13:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:13:55 GMT
USER gradle
# Thu, 16 Jul 2026 01:13:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:13:55 GMT
USER root
```

-	Layers:
	-	`sha256:877a7cfebba1327468a9ce7bb85f9afffbfb1c95701f76d33d81f3833987c4e2`  
		Last Modified: Wed, 15 Jul 2026 08:02:44 GMT  
		Size: 33.0 MB (33038203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fdf0d7cd2e03fb2c24ebc526d644a524989198b5838f656947e3e676b32ad0`  
		Last Modified: Thu, 16 Jul 2026 00:21:59 GMT  
		Size: 37.7 MB (37707928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854ee0747cc8ef7eda894f385da9613c396744f7fbac90ffd6035feea2ae1b40`  
		Last Modified: Thu, 16 Jul 2026 00:23:31 GMT  
		Size: 156.5 MB (156464379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f291eb96dc1def3acec4fd79161ee21d73a0764404115563bbae79f06bdf78d0`  
		Last Modified: Thu, 16 Jul 2026 00:23:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aacc5d2bba8fe5ed2d7b6d1b26f91a18009e78730518d3c54190239ec9cc66a`  
		Last Modified: Thu, 16 Jul 2026 00:23:27 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf065833c94597ae37ccd83cd3e6612dec95a6b0ba2b4c2a6545339e1a8e319`  
		Last Modified: Thu, 16 Jul 2026 01:14:15 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d3f6c05f582d0508934aecb948df444737360952777b55910fd52568cd69e1`  
		Last Modified: Thu, 16 Jul 2026 01:14:17 GMT  
		Size: 39.3 MB (39325125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ea9542334869d525c9df9b90db1bd94e1ed7bc76b079f72bef89233dbaf6077`  
		Last Modified: Thu, 16 Jul 2026 01:14:19 GMT  
		Size: 140.6 MB (140596005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354bf8fc8545b3a0dd22ca79743455d19f684255cb57815b3c1258aaa0135a14`  
		Last Modified: Thu, 16 Jul 2026 01:14:15 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:901fcd55f5b195c83a0b1459795121ef4fde75cffa3043f30a4235c086fe53b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7113380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be53cfccdb940b67358c2086fdeea06e679f95c48c31159e8f583bb32bd7b2b0`

```dockerfile
```

-	Layers:
	-	`sha256:e4971053efd64b576fd04ffbb8db2ab41df609d894785374ac870cffeaa22077`  
		Last Modified: Thu, 16 Jul 2026 01:14:15 GMT  
		Size: 7.1 MB (7088728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f878c4fbe5efff4c8e7365b0e7c4e344e718cd6b8e3487aa75038bb14c8387d7`  
		Last Modified: Thu, 16 Jul 2026 01:14:15 GMT  
		Size: 24.7 KB (24652 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:9dab8c20eb0f28fb4f719d6862cc23ad7568bba8d4eaf4bd7605680c92a9e5b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.1 MB (419125596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f37b02e92c3adc1a979879a799012b78e324dd19effe38d65a1708b8778f002`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:49:00 GMT
ENV container oci
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:10526134b402f96b01913ff63c11090d12c71c1f3d96105fcd44fc1b9ebc9a4e in /      
# Wed, 15 Jul 2026 05:49:01 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:49:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:cf7642e6d55956d71e3aaebdbf758e9516171ed79668415a4710b1fdcb1ac147 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:cf7642e6d55956d71e3aaebdbf758e9516171ed79668415a4710b1fdcb1ac147 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:49:01 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:41Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:41Z" "architecture"="ppc64le" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:41Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:19:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:19:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:19:49 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 16 Jul 2026 00:24:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:25:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:25:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:25:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:25:02 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:15:06 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:15:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:15:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:15:06 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:15:07 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:15:20 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:15:20 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:15:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:15:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:15:26 GMT
USER gradle
# Thu, 16 Jul 2026 01:15:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:15:28 GMT
USER root
```

-	Layers:
	-	`sha256:b060fee38424df7cdccede0607ef847e0d227597b97b59bc32fa6707e32cfd57`  
		Last Modified: Wed, 15 Jul 2026 12:17:24 GMT  
		Size: 39.0 MB (39003367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90cf761edb0d2dff4b7a85b108a0da2334197a83aac08a67d64abddc2b6414a`  
		Last Modified: Thu, 16 Jul 2026 00:20:26 GMT  
		Size: 39.5 MB (39529262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbd487e20bb504f1b28c3d6fde18de827b00b17b38d27db8b442ef4cb393bdf`  
		Last Modified: Thu, 16 Jul 2026 00:25:42 GMT  
		Size: 158.3 MB (158348513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6770c775ee1f6a3de38f56378136cb27eed6c3294ff589a1634095b7080bd3c3`  
		Last Modified: Thu, 16 Jul 2026 00:25:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce363fbad84d91272cf5c9e5e836367524e840578402c7bc1d2a3b3292f420bd`  
		Last Modified: Thu, 16 Jul 2026 00:25:38 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1779f5175311086ff87ac4bda8b33075c5ba53203fd63bfa356ebb97a0875a`  
		Last Modified: Thu, 16 Jul 2026 01:16:07 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:489bdf59b236a1c8760cdbcfb4a550bcfd3569456e61b12e0e42d3dd3e8806c0`  
		Last Modified: Thu, 16 Jul 2026 01:16:09 GMT  
		Size: 41.6 MB (41644010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76a10b6d1f6d3fefe867284912fa6ecc835cf69fdb374bef37faff4138f1c02`  
		Last Modified: Thu, 16 Jul 2026 01:16:12 GMT  
		Size: 140.6 MB (140596029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e5f1633deaf5ec3db645df4c6d0a6b222d873f82f0df55c4b29962daea7244`  
		Last Modified: Thu, 16 Jul 2026 01:16:07 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:1d4e9533b5888197c33f64aecdd84e822cd35751125831db19e97bb992801c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7106417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd49c0e1ef6d40d9607ab290ee67c4a3e44628c811806eda2ca5d04a485664d`

```dockerfile
```

-	Layers:
	-	`sha256:0d117afc7a054071e4864d57077f1435e40adcc07e7e6c8dd3bf961a4b90ffcf`  
		Last Modified: Thu, 16 Jul 2026 01:16:08 GMT  
		Size: 7.1 MB (7081890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:587e972ca37f05dcb760f8d22adbccc05ae6b99242d868fbb84c45a10ab1eb38`  
		Last Modified: Thu, 16 Jul 2026 01:16:08 GMT  
		Size: 24.5 KB (24527 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:c430f188fb7839c9cdf8cca089cb557a42a129aca90f7ef0b6ad1862cf9e3b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.9 MB (402912617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cef13cbf0d40eb6e5f9575d5bce4f75bc50f632a2f204a5b8501527e9eefc3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 06:07:28 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 06:07:28 GMT
ENV container oci
# Wed, 15 Jul 2026 06:07:28 GMT
COPY dir:c139a456fb0c48548e9f88c9c78776f62ee6b4cb82d5cb148f031ebc4cd871b9 in /      
# Wed, 15 Jul 2026 06:07:28 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 06:07:28 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 06:07:29 GMT
COPY dir:7bd72475117264ee7e80797e1635130baf9553b3e299ea41ac556164e2790e11 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 06:07:29 GMT
COPY dir:7bd72475117264ee7e80797e1635130baf9553b3e299ea41ac556164e2790e11 in /root/buildinfo/      
# Wed, 15 Jul 2026 06:07:29 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T06:05:53Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T06:05:53Z" "architecture"="s390x" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T06:05:53Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:18:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:18:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:18:43 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 16 Jul 2026 00:20:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 16 Jul 2026 00:20:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:20:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:20:18 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:12:44 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:12:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:12:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:12:44 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:12:44 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:12:51 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 16 Jul 2026 01:12:51 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:12:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:12:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:12:55 GMT
USER gradle
# Thu, 16 Jul 2026 01:12:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:12:56 GMT
USER root
```

-	Layers:
	-	`sha256:d73d4f6457bcd782d3bc06902fa556ffd91db9aab85a2358b971636d93b8103c`  
		Last Modified: Wed, 15 Jul 2026 12:17:17 GMT  
		Size: 34.8 MB (34778657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad16659d7394a61dd167bd768b66532de6dd459eeeb734253c4a878941738b32`  
		Last Modified: Thu, 16 Jul 2026 00:19:14 GMT  
		Size: 38.1 MB (38147926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720436fc9d4d9afaa0b493dfee0eeae5851ee19d1cd673fc1e9e4043f441e71f`  
		Last Modified: Thu, 16 Jul 2026 00:20:45 GMT  
		Size: 147.4 MB (147390225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d93c9194a9b921c0f73d2f0ec64c86093ba0d95fb8bc7811a3958ba6093db13`  
		Last Modified: Thu, 16 Jul 2026 00:20:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1332097554c99ed28adf79aaf82b1221c543af3725c66ed73831d7f703da468`  
		Last Modified: Thu, 16 Jul 2026 00:20:42 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33898bc29fd5807b3cfbd0cd1eca9e071f27a3efc73e6979e6ab60e615601e69`  
		Last Modified: Thu, 16 Jul 2026 01:13:23 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162e617d05959ff11851c19de97e11e2ccfe9bcf114daeb67354dbbee8cc387d`  
		Last Modified: Thu, 16 Jul 2026 01:13:24 GMT  
		Size: 42.0 MB (41995373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:844e73411030c1b4f6f4ddd6fe92ed4d306af04d9482e6cdfbd61978bb624c51`  
		Last Modified: Thu, 16 Jul 2026 01:13:26 GMT  
		Size: 140.6 MB (140596025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40870b6adbdf77f8ba555616c89df7ab19f2704b8875c0b3be4724d52bb88fdc`  
		Last Modified: Thu, 16 Jul 2026 01:13:22 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:a0054aba3f99d5a4683ba6186dc29a85bef5d880ca2c9325df78343ac3829d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7095572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc7716d412feb653c5444ed688c6b97f20e99edb8b46b2cc5b39adf8438b1270`

```dockerfile
```

-	Layers:
	-	`sha256:27ca8eab47800395a7462caa0acb0bd1f78833f09c4fe9a13b8e8919064d5960`  
		Last Modified: Thu, 16 Jul 2026 01:13:23 GMT  
		Size: 7.1 MB (7071119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b440ecde3e83969c1cd1c999fc5c12bcc40e68c004590e8ff02df5f7019b24bc`  
		Last Modified: Thu, 16 Jul 2026 01:13:23 GMT  
		Size: 24.5 KB (24453 bytes)  
		MIME: application/vnd.in-toto+json
