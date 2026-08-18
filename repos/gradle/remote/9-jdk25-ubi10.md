## `gradle:9-jdk25-ubi10`

```console
$ docker pull gradle@sha256:f42345f2482c05fe3af8ec3f2fe90e0ac215b8d326cc1c43bb9035d82914fc0f
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

### `gradle:9-jdk25-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:2995b2d0751c5550354af5fed9686795c997673ce1f305694911a5fd0625ea01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.4 MB (355439690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fea5e891256821f35a68f77e3af57c7ba7ea50a499de723fb5d23b722ac5bae`
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
# Mon, 17 Aug 2026 22:37:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:37:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:37:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:37:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:37:37 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Mon, 17 Aug 2026 22:38:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:38:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:38:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:38:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:38:07 GMT
CMD ["jshell"]
# Mon, 17 Aug 2026 23:10:09 GMT
CMD ["gradle"]
# Mon, 17 Aug 2026 23:10:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Aug 2026 23:10:09 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 17 Aug 2026 23:10:09 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Aug 2026 23:10:09 GMT
WORKDIR /home/gradle
# Mon, 17 Aug 2026 23:10:13 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 17 Aug 2026 23:10:13 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 17 Aug 2026 23:10:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 17 Aug 2026 23:10:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 17 Aug 2026 23:10:15 GMT
USER gradle
# Mon, 17 Aug 2026 23:10:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 17 Aug 2026 23:10:16 GMT
USER root
```

-	Layers:
	-	`sha256:872a2aed985e0b2daad07dd2009dbba2c5d87b2369582eb5b179f081ac4ea0e9`  
		Last Modified: Mon, 17 Aug 2026 10:54:15 GMT  
		Size: 34.9 MB (34914306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113fb0c45fecb482265889eedee9cae4ed097c844c1bdfd2fdca317f705074f5`  
		Last Modified: Mon, 17 Aug 2026 22:37:55 GMT  
		Size: 37.8 MB (37794712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a528650422ed78b7e4b869f5b8e7205b9ae7fcdcea1ed059a1fd31b4cadc89c6`  
		Last Modified: Mon, 17 Aug 2026 22:38:25 GMT  
		Size: 92.6 MB (92579371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4153025ff819703503a9cc929f3c0ae2ee4cb7cfa22906cc1bd8c9acac14364f`  
		Last Modified: Mon, 17 Aug 2026 22:38:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eeead71bd146d5db8638274c89b8434360feb88b97c095982fa26e6746a2c5e`  
		Last Modified: Mon, 17 Aug 2026 22:38:17 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51f2f90bda0c265bd3852f6f7d86011551eb70ddfa0c7762f1b981106ade6c5`  
		Last Modified: Mon, 17 Aug 2026 23:10:34 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd403233da1e72e4594997c23c7434eefe4bc3614b3e3ee40d7e6ce07e4cb6c`  
		Last Modified: Mon, 17 Aug 2026 23:10:36 GMT  
		Size: 39.9 MB (39893709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96c630379051accab765985f42eaf0e4c9a25d7a2571d0fa403cfcdf6ff8f96`  
		Last Modified: Mon, 17 Aug 2026 23:10:38 GMT  
		Size: 150.2 MB (150227947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5cd90b8d2a9a0073df66f7584e88728ec5b73d12d10e3dd0593b91001f66ea`  
		Last Modified: Mon, 17 Aug 2026 23:10:34 GMT  
		Size: 25.6 KB (25610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:04444dfc2cc5d5033f4d7ed4e79192266b5b6be32051e1313e807754f5c88855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7088396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6347febf54eae1444b52bf54aa13846f51b43d50f15aa9384bdeb6be25f4a350`

```dockerfile
```

-	Layers:
	-	`sha256:3f18b457268be64a18b8f686a6e78492ce851fb74796792bb57f08168ef2f9c3`  
		Last Modified: Mon, 17 Aug 2026 23:10:34 GMT  
		Size: 7.1 MB (7063387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:555d3768d88f2d91a3a2ed59bec41d7c4df51171d738fdeee19bf3cba65ed1e2`  
		Last Modified: Mon, 17 Aug 2026 23:10:34 GMT  
		Size: 25.0 KB (25009 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b3c8edd830f2f797460a533743bf2ee0871d8eb1b18bcbaa2f57dc33a5e6c0cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.0 MB (351982631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faaac4849341fcdd431124d2897824bf4471ba5811c700f0a3e799867aa5d54`
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
# Mon, 17 Aug 2026 22:37:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:37:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:37:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:37:33 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:37:33 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Mon, 17 Aug 2026 22:37:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:40 GMT
CMD ["jshell"]
# Mon, 17 Aug 2026 23:10:19 GMT
CMD ["gradle"]
# Mon, 17 Aug 2026 23:10:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Aug 2026 23:10:19 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 17 Aug 2026 23:10:19 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Aug 2026 23:10:19 GMT
WORKDIR /home/gradle
# Mon, 17 Aug 2026 23:10:24 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 17 Aug 2026 23:10:24 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 17 Aug 2026 23:10:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 17 Aug 2026 23:10:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 17 Aug 2026 23:10:27 GMT
USER gradle
# Mon, 17 Aug 2026 23:10:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 17 Aug 2026 23:10:27 GMT
USER root
```

-	Layers:
	-	`sha256:ff4356eadc8eb39aa229f22a6bde46a2c9a62afe867477b6cf66b5ce54cfb5d4`  
		Last Modified: Mon, 17 Aug 2026 10:54:11 GMT  
		Size: 33.1 MB (33101866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc1a8c27548fdf5f24dda601049dc6bc5372da7a1941e875a98d3167c017490`  
		Last Modified: Mon, 17 Aug 2026 22:37:59 GMT  
		Size: 37.7 MB (37724360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1041f358a9b2d1d03f087b76a30556a6645de84af5d16c05bef3ff069f5d3b`  
		Last Modified: Mon, 17 Aug 2026 22:38:01 GMT  
		Size: 91.5 MB (91548846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cee236c694ac6cadd614a929ef4c5548fdda70fc53d7b75669710208012e724`  
		Last Modified: Mon, 17 Aug 2026 22:37:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3301441405b9763c3fa1237ea88bf1ee0b26f6df4840cc762c6aa55756753ac4`  
		Last Modified: Mon, 17 Aug 2026 22:37:58 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad94c86c7137dc0a8e3e6bedabe16fc12cae43e3776af241f5551fbd4dd6205`  
		Last Modified: Mon, 17 Aug 2026 23:10:47 GMT  
		Size: 1.6 KB (1587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ada29580774156ae78a7cda2e0f5811bd8302caa558322bcd6a63bbc1e6c61`  
		Last Modified: Mon, 17 Aug 2026 23:10:48 GMT  
		Size: 39.3 MB (39346237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e64725340e439c293260194df04a023d4cbddb62d5cf967a7dfc76165a3c0df`  
		Last Modified: Mon, 17 Aug 2026 23:10:50 GMT  
		Size: 150.2 MB (150227947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c17b14c697b786e1e241173510f0e868f84d1139c34de7fa4c4ad1c693a9d2`  
		Last Modified: Mon, 17 Aug 2026 23:10:47 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:f995c01d58bd84e2921cf58fd9d4ae64554dae6d2cb16af405eeeea4ea90eb80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7086894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e5737cf9725e3c66d1c038d0f29c7b78af8e1b7ffcee87abe48ff0c3d6a291`

```dockerfile
```

-	Layers:
	-	`sha256:1183c471424214bf8271c5211da68fee561b1dc90e57b26de25ff71d8d9223da`  
		Last Modified: Mon, 17 Aug 2026 23:10:47 GMT  
		Size: 7.1 MB (7061664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:665f10ad64edabff1373a3d4f887e9951b33a8e019e06814720cd881cb84bdec`  
		Last Modified: Mon, 17 Aug 2026 23:10:47 GMT  
		Size: 25.2 KB (25230 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:588c6f1eaa93197cddd5ae9e6916f3d988f02b78e513ea980e74daff1c5214bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.4 MB (362423791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d03410f9cabb42b17f2531781b97f4c6ea2f162a63836b2e08c168669329a39`
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
ENV JAVA_VERSION=jdk-25.0.3+9
# Mon, 17 Aug 2026 23:31:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 23:31:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 23:31:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 23:31:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 23:31:21 GMT
CMD ["jshell"]
# Tue, 18 Aug 2026 00:05:58 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 00:05:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 00:05:58 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 00:05:58 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 00:05:58 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 00:06:15 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 18 Aug 2026 00:06:15 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 00:06:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 00:06:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 00:06:20 GMT
USER gradle
# Tue, 18 Aug 2026 00:06:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 00:06:22 GMT
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
	-	`sha256:6ca3c718b15042ae6f14ef6c7e80c1fe2a3466c71f8a74e386c5999731e5ff1b`  
		Last Modified: Mon, 17 Aug 2026 23:31:54 GMT  
		Size: 91.9 MB (91912866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6e0f82cb5fc6dc8919f815dbd5ce705c7d42bc2b7b6b9cc5e1ce17bbaa826b`  
		Last Modified: Mon, 17 Aug 2026 23:31:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f549778802cfaf67affbde75c0df318c9895d74b4f37acad4b7e77ff749aba4b`  
		Last Modified: Mon, 17 Aug 2026 23:31:52 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2eeed332fabc4040d24bc467fdd4eb49a9b8627e8bdf7552565707f395755a`  
		Last Modified: Tue, 18 Aug 2026 00:07:11 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802bb9e1205909fd6de17e35c7656179c9b4946644c98bf286cbbf79adcebc4e`  
		Last Modified: Tue, 18 Aug 2026 00:07:14 GMT  
		Size: 41.7 MB (41669435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c561a53a6a6837619df1233be042deb5a9762888cf875d7cff56afb815cd7ae`  
		Last Modified: Tue, 18 Aug 2026 00:07:16 GMT  
		Size: 150.2 MB (150227950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d4750706fec2926c851826951a9fd0bbdb49fe69ae8799825c3fb30f2c7b11`  
		Last Modified: Tue, 18 Aug 2026 00:07:12 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:dc68b674678e0d2306c5dacd0195e8c1fe3e71a0d72c7668dfc52d7dc67eaded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7063222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a6a4f7d74e4539b25bcde4537542c80f782d97384d73995cee33edae57960b`

```dockerfile
```

-	Layers:
	-	`sha256:95d46bee28167993431d2d04c583ebb693c8bba5e35d0311d1edd3feef1089c0`  
		Last Modified: Tue, 18 Aug 2026 00:07:12 GMT  
		Size: 7.0 MB (7038129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f5f0bfbefbbaa3e19e71b7236ca15efec0c8f71a3aa1216b4572437961f0998`  
		Last Modified: Tue, 18 Aug 2026 00:07:11 GMT  
		Size: 25.1 KB (25093 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:90587e797b6f5b490b2333c31156906a883148e78eeaf41e8c6a6cd8624ff711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.7 MB (353666676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74fbc3d29b475139c06c8b5948cc2d8824a46be32de4654596642b305826371`
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
ENV JAVA_VERSION=jdk-25.0.3+9
# Mon, 17 Aug 2026 22:37:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64le)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:44 GMT
CMD ["jshell"]
# Mon, 17 Aug 2026 23:08:52 GMT
CMD ["gradle"]
# Mon, 17 Aug 2026 23:08:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Aug 2026 23:08:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 17 Aug 2026 23:08:52 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Aug 2026 23:08:52 GMT
WORKDIR /home/gradle
# Mon, 17 Aug 2026 23:09:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Mon, 17 Aug 2026 23:09:00 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 17 Aug 2026 23:09:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 17 Aug 2026 23:09:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 17 Aug 2026 23:09:05 GMT
USER gradle
# Mon, 17 Aug 2026 23:09:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 17 Aug 2026 23:09:06 GMT
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
	-	`sha256:808ae970ff4d61f264d2bdf3ead1994a9dc21d62bd17bed616dd3fe6a5f87eb5`  
		Last Modified: Mon, 17 Aug 2026 22:38:10 GMT  
		Size: 88.4 MB (88421668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e03fc320bb281a5473e41ce28b81fe4abb310bbee642dc2aee1a97892e02b10`  
		Last Modified: Mon, 17 Aug 2026 22:38:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202ddbb1d0cd1099036378257c8c1cad22869ea0e7f00b84d74d4e67bb03d2ba`  
		Last Modified: Mon, 17 Aug 2026 22:38:08 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac33c8cc601be25d2280864eb867fd5e5113d34c6e019408a360b3292f883e7`  
		Last Modified: Mon, 17 Aug 2026 23:09:36 GMT  
		Size: 1.6 KB (1590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adee2172314f552a40a9e3985573094de923caf7043f57e9d29ced587ef676ba`  
		Last Modified: Mon, 17 Aug 2026 23:09:38 GMT  
		Size: 42.0 MB (42025831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf20a92341d3cd205cf42b9b29617bb54a87fa067833c55d3296fdb166c557f`  
		Last Modified: Mon, 17 Aug 2026 23:09:40 GMT  
		Size: 150.2 MB (150227949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a72f902f7fe5ba6698d7abadb9fd4efafd22db1b798c89d2c13ece0c0f06b4`  
		Last Modified: Mon, 17 Aug 2026 23:09:36 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:8f6dd2ae1fec661220e4d6e338aff116794adf2642db929909a0e58b20ee1b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7053603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac548f9b6c2518a867d79170461e25f476a2e0a087bac82010666dbf0f549ba`

```dockerfile
```

-	Layers:
	-	`sha256:07b07e8d2a4ec8ec3dc0597164272e59593693226da13b22bed0b1f84c2b5718`  
		Last Modified: Mon, 17 Aug 2026 23:09:37 GMT  
		Size: 7.0 MB (7028596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fee41afdc00ba46513b63fd9119aa8b5a067c36c99fd9b2509335de68f17a0f`  
		Last Modified: Mon, 17 Aug 2026 23:09:36 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json
