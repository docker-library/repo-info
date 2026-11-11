## `gradle:ubi10`

```console
$ docker pull gradle@sha256:d14c6786cc6958f61a7f270714f16ea4e0dabcba0a0d19ebcfe8d30e3c878cd4
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

### `gradle:ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:e187fbc67dde5f619f9a26b7f42f3ef58b9c7b88dcdf2cc54bc2c983076fab70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357185308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f968096a107bdea733ed38cfdceec445f90b35a9fd71b4963d1cb84c9e99c4b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:26:07 GMT
ENV container oci
# Mon, 09 Nov 2026 12:26:07 GMT
COPY dir:de8dd738944ef6f5b4d97345e9a50f3fee83357444222ef69d5f7873b509f97e in /      
# Mon, 09 Nov 2026 12:26:07 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:26:08 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:26:08 GMT
COPY dir:2e9c6dae68dcfc921d3ed6e1432dcf31580e458a2773247f4b6f7a0702800b5c in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:26:08 GMT
COPY dir:2e9c6dae68dcfc921d3ed6e1432dcf31580e458a2773247f4b6f7a0702800b5c in /root/buildinfo/      
# Mon, 09 Nov 2026 12:26:08 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:25:43Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:25:43Z" "architecture"="x86_64" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:25:43Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 21:48:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:48:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:48:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:48:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:48:32 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Tue, 10 Nov 2026 21:48:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 21:48:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:48:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:48:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 21:48:39 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 22:10:06 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 22:10:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 22:10:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 22:10:06 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 22:10:06 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 22:10:11 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 22:10:11 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 22:10:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 22:10:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 22:10:15 GMT
USER gradle
# Tue, 10 Nov 2026 22:10:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 22:10:15 GMT
USER root
```

-	Layers:
	-	`sha256:69b57da00fac19111ae56640149ff52360565f228e0311da5314d5052ae6a477`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 34.9 MB (34932314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451c8a1c9fa37fb6152388c0b651a92054aaebdd4a01b8a6d850c42d4b08232c`  
		Last Modified: Tue, 10 Nov 2026 21:48:56 GMT  
		Size: 37.9 MB (37893854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c0b8ca08482b5214ce4a542c91236a4502fa055121d7a742afca7e6508c87d`  
		Last Modified: Tue, 10 Nov 2026 21:48:57 GMT  
		Size: 92.6 MB (92599201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a3136eb9d631c9c6f7470dc82f4dbfcb4c4b4bbd729e2bb224de95a0c997e0`  
		Last Modified: Tue, 10 Nov 2026 21:48:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0dd5b7b8279417e7394d7c341bf81c2be716b4de6847e18737e69049e05980d`  
		Last Modified: Tue, 10 Nov 2026 21:48:54 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24949a46478eeead13bf6463c27fb79a32cdd310c4594be8aa35022270e3b18e`  
		Last Modified: Tue, 10 Nov 2026 22:10:34 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664a1c7726666886ac88004e5b660ac0efd08959a346b4e082b84c158140d784`  
		Last Modified: Tue, 10 Nov 2026 22:10:36 GMT  
		Size: 40.2 MB (40196494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f2d0d7dc6fa1cfff9e36de027d450b8fef65f2ba141a0bf07bf68660e11ee1`  
		Last Modified: Tue, 10 Nov 2026 22:10:37 GMT  
		Size: 151.5 MB (151533621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df2abc8cb45d11eb44ba707c570658aa58a918ab26b2574675f216a7b99eab7`  
		Last Modified: Tue, 10 Nov 2026 22:10:34 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:4fea183fca95000eb5fc922b2c35889dc86bcc4718bdbd05f773beaa3f3eb6b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7073026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:766c4d969569c1d84f8a5adc01ca0a8fca6c68dcbea9a40ed96ebabb235ec79a`

```dockerfile
```

-	Layers:
	-	`sha256:a0776d95ba53485a5fa09d24e83f6432793174e31c08537f3f9c9b7727ed20de`  
		Last Modified: Tue, 10 Nov 2026 22:10:34 GMT  
		Size: 7.0 MB (7048017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e51278fafe822ed816ee737325cd777a82603f8a9f78fe5703875468ea0f820`  
		Last Modified: Tue, 10 Nov 2026 22:10:33 GMT  
		Size: 25.0 KB (25009 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:09a7dec1ce931a29e61e00d6419703c639ec382fda5c6458312eed408fedb72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.7 MB (353651173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a1af74671b343f850f42a1ebc5ca23df4615c7f684efdea46fc73ca27c77db`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:30:50 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:30:50 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:30:50 GMT
ENV container oci
# Mon, 09 Nov 2026 12:30:51 GMT
COPY dir:bf003691994de32df5104daabfbd9232c3fc6127a3d2eea464e7f865a51f97b3 in /      
# Mon, 09 Nov 2026 12:30:51 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:30:51 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:30:52 GMT
COPY dir:e41cb72f62e144ba0400c303aa4242e38a9ceaff1fdb33d5559f5ebc8f63325d in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:30:52 GMT
COPY dir:e41cb72f62e144ba0400c303aa4242e38a9ceaff1fdb33d5559f5ebc8f63325d in /root/buildinfo/      
# Mon, 09 Nov 2026 12:30:52 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:30:22Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:30:22Z" "architecture"="aarch64" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:30:22Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 21:51:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:51:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:51:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:51:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:51:35 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Tue, 10 Nov 2026 21:51:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 21:51:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:51:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:51:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 21:51:43 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 22:10:10 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 22:10:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 22:10:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 22:10:10 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 22:10:10 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 22:10:16 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 22:10:16 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 22:10:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 22:10:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 22:10:20 GMT
USER gradle
# Tue, 10 Nov 2026 22:10:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 22:10:20 GMT
USER root
```

-	Layers:
	-	`sha256:79d5de29018018708e9112a663bf8efe877acdd3d07ba720507df4eef16fb72d`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 33.1 MB (33060918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb8a20c4568e8cd25a522129bac43b002eabc66d189b4960833f041dd7da7c33`  
		Last Modified: Tue, 10 Nov 2026 21:52:02 GMT  
		Size: 37.8 MB (37833189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0962c039955dcd6d5f401a04c9664ab73cbb4908e3cb4cdad691906430a298c0`  
		Last Modified: Tue, 10 Nov 2026 21:52:03 GMT  
		Size: 91.5 MB (91526373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9441a37a5e06fa4f5cb0b81c240eb85707d4f638ab49a9d51f5045a8fec46758`  
		Last Modified: Tue, 10 Nov 2026 21:52:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effb007a7ebfd76c3d1378234672a2b76d51c6e58aa127779014a1450610bd09`  
		Last Modified: Tue, 10 Nov 2026 21:52:00 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1d20c8e2e7da8cb4bd3a43708a08d3836a2658bb06f72fca60fcc57d833126`  
		Last Modified: Tue, 10 Nov 2026 22:10:39 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c33a6288ca2f273ea2f86ac1345310f4d72e7659594cdfedc971b499048008`  
		Last Modified: Tue, 10 Nov 2026 22:10:41 GMT  
		Size: 39.7 MB (39663520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85db36ae086ab419f8ff8b8fa8ce1aea74737fb9cf8121d5b5df533fab2b410`  
		Last Modified: Tue, 10 Nov 2026 22:10:43 GMT  
		Size: 151.5 MB (151533620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed53a8958a6b43c7cdd3d6797f64bb697a91523450018ebe359a20aacd8b8dad`  
		Last Modified: Tue, 10 Nov 2026 22:10:40 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:991cdd8b2184ad0507571ce8ac8dcf63ffe3f50c412c12891f0215a0fb3a046c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7071523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a6887a1cd006bca30bc5b4fa57dc8e3995aaee3cb05f00a0c61c8ee849ad8f`

```dockerfile
```

-	Layers:
	-	`sha256:eb04431e85cf136599b88a0a44e3470c6ab84efe2ddfe5f04d272041ed4806f6`  
		Last Modified: Tue, 10 Nov 2026 22:10:40 GMT  
		Size: 7.0 MB (7046294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf6f2502980d640dde7f63da6dda8e28d186704f7ecc3768dee40c445e20cc71`  
		Last Modified: Tue, 10 Nov 2026 22:10:39 GMT  
		Size: 25.2 KB (25229 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:fd6d6a61bde3908d9fe343a72b77f7077838d05ca02688f0ec3dff8d58dd3aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.4 MB (362376138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1376e9e38aa35915ca5f4e14817ee374a89f3bac160eaf3e651425accaad63eb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:29:05 GMT
ENV container oci
# Mon, 09 Nov 2026 12:29:06 GMT
COPY dir:0142191d7882bfcd1a642f157feb9fe0f606d143d9c1d9a77ef434e357ac4cf5 in /      
# Mon, 09 Nov 2026 12:29:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:29:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:29:06 GMT
COPY dir:eb3e47531baf4fb6578dff0b54a6c80c07b067beb496e68f478fd566ca4500c9 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:29:07 GMT
COPY dir:eb3e47531baf4fb6578dff0b54a6c80c07b067beb496e68f478fd566ca4500c9 in /root/buildinfo/      
# Mon, 09 Nov 2026 12:29:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:28:37Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:28:37Z" "architecture"="ppc64le" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:28:37Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 23:52:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 23:52:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 23:52:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 23:52:23 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 23:52:23 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 00:02:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 00:02:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 00:02:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 00:02:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 00:02:25 GMT
CMD ["jshell"]
# Wed, 11 Nov 2026 00:15:11 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 00:15:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 00:15:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 00:15:11 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 00:15:11 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 00:15:37 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 11 Nov 2026 00:15:37 GMT
ENV GRADLE_VERSION=9.8.2
# Wed, 11 Nov 2026 00:15:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Wed, 11 Nov 2026 00:15:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 00:15:47 GMT
USER gradle
# Wed, 11 Nov 2026 00:15:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 00:15:54 GMT
USER root
```

-	Layers:
	-	`sha256:ed28db74a3ef4dc59de6b526427c8c3a556936eb057f0923cc4be84bca6817bb`  
		Last Modified: Mon, 09 Nov 2026 18:22:05 GMT  
		Size: 39.1 MB (39069438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4082f8f249a65d1ca6e2dff783e599cebda5fb8051de428b448ce5c2cf783a1b`  
		Last Modified: Tue, 10 Nov 2026 23:53:10 GMT  
		Size: 39.7 MB (39671657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d640200d4c5c110fd64b11067818e90d6ad2e09a21f441b01bad1dafc0bce4b0`  
		Last Modified: Wed, 11 Nov 2026 00:03:07 GMT  
		Size: 90.1 MB (90111103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2e782c8a764e07150394ef181811c137f1ef8eebef42bffd548d89adc5d457`  
		Last Modified: Wed, 11 Nov 2026 00:03:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d452f37e5ae49256d6bdef0c9d04e6cf6c7488a4af39b2adfb7b8e900a573b`  
		Last Modified: Wed, 11 Nov 2026 00:03:04 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56436b69f889132cc12d9571142e2820b489fd7b52031fb616983d960b0acd36`  
		Last Modified: Wed, 11 Nov 2026 00:17:02 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc05ef2158be8a4e87081c5d88053818d88ef1b168d18d750ed33df954267578`  
		Last Modified: Wed, 11 Nov 2026 00:17:04 GMT  
		Size: 42.0 MB (41985723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaff657adc02eb0ec6976318e1572d665a57d1d77ba65d72f63bfc1b2e6ce20`  
		Last Modified: Wed, 11 Nov 2026 00:17:06 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c18ba1b5fdb3ea2c9f67c10d7af21c9d8316aa4db71d2d6eba40b317aa4e824`  
		Last Modified: Wed, 11 Nov 2026 00:17:02 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:20849b0f2be62f10ea86de1aa3cec03aff6d49cc83960da4ffca007ec9439a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7045991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15bf80312aff5fa142d42ef3dec19894791a8bfb282d8f23b32539d0099ff75e`

```dockerfile
```

-	Layers:
	-	`sha256:d47c95904e50787494ee41871cf9dc63e653686cbdeefb7221d3e902b090f63c`  
		Last Modified: Wed, 11 Nov 2026 00:17:02 GMT  
		Size: 7.0 MB (7020898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c3ed06fecd970e96eef80384f12b8e7f402c6e69a30b5fb266d8bb9e8bc9eb6`  
		Last Modified: Wed, 11 Nov 2026 00:17:02 GMT  
		Size: 25.1 KB (25093 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:e780a74bdd31ffb21efa476a5cb0c3faf463ee24375191128bc636af074bc03a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.0 MB (355015075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f280c8ce3d85dedf91f57527a7888f3976b98a4791c559068bee34619c49424e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:45:22 GMT
ENV container oci
# Mon, 09 Nov 2026 12:45:23 GMT
COPY dir:d12d65b9ef1c46718ee21196fcc3025bc337aeb7a761a8432166375e120770b8 in /      
# Mon, 09 Nov 2026 12:45:23 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:45:23 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:45:24 GMT
COPY dir:86c9bd055e7df245798740ba1f2bd92a4e2862708391b43aa25b1e3890a08f1e in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:45:24 GMT
COPY dir:86c9bd055e7df245798740ba1f2bd92a4e2862708391b43aa25b1e3890a08f1e in /root/buildinfo/      
# Mon, 09 Nov 2026 12:45:24 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:44:00Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:44:00Z" "architecture"="s390x" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:44:00Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 22:55:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 22:55:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 22:55:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 22:55:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 22:55:46 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Tue, 10 Nov 2026 22:59:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 22:59:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 22:59:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 22:59:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 22:59:30 GMT
CMD ["jshell"]
# Tue, 10 Nov 2026 23:11:18 GMT
CMD ["gradle"]
# Tue, 10 Nov 2026 23:11:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Nov 2026 23:11:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 10 Nov 2026 23:11:18 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Nov 2026 23:11:19 GMT
WORKDIR /home/gradle
# Tue, 10 Nov 2026 23:12:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 10 Nov 2026 23:12:00 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 10 Nov 2026 23:12:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 10 Nov 2026 23:12:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 10 Nov 2026 23:12:16 GMT
USER gradle
# Tue, 10 Nov 2026 23:12:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 10 Nov 2026 23:12:20 GMT
USER root
```

-	Layers:
	-	`sha256:06080e5ed1e7453afb1c4cce82c124613221fc6e9b9184d3a4d5fd1c6a308b4f`  
		Last Modified: Mon, 09 Nov 2026 18:21:56 GMT  
		Size: 34.8 MB (34761006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:466ca5ee394f3eec45d527dc25824ddecdb111d1f837231a13270cb0a3125bfe`  
		Last Modified: Tue, 10 Nov 2026 22:56:44 GMT  
		Size: 38.3 MB (38274152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4bf2a45f960f7e04ec5b7fcc2d32f2e57863af1b0c92acdd45ddec6f825f09`  
		Last Modified: Tue, 10 Nov 2026 23:00:36 GMT  
		Size: 88.1 MB (88054401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:776d35b7d609950a31c049c9a42678a2860e0f06eb1bd19cd70fd734fd684c0a`  
		Last Modified: Tue, 10 Nov 2026 23:00:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e49c6d6637736110f0fa4eedf594b5ca188e193fa61aa804ef9ab2614f2ad3`  
		Last Modified: Tue, 10 Nov 2026 23:00:30 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:861dead24eada296a9534e962c44689c760cf64434fa8dd8c28e7fef6182f62b`  
		Last Modified: Tue, 10 Nov 2026 23:13:28 GMT  
		Size: 1.6 KB (1589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106fd24ed8e91fb8aeadf2b55a595f1b2b37df34431fb03748b6b41263d291e2`  
		Last Modified: Tue, 10 Nov 2026 23:13:31 GMT  
		Size: 42.4 MB (42387387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f558c45169814d6e4ee43c5e87dad90d540500822481fb63149cff760a12db`  
		Last Modified: Tue, 10 Nov 2026 23:13:34 GMT  
		Size: 151.5 MB (151533531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3066b14839a326866bd95938cd301205729024aa4bb9c5e7e47ca693d85f4ef3`  
		Last Modified: Tue, 10 Nov 2026 23:13:28 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:55fcbe9c316232c10b9a358bd1cdaa406ec8778b5f75eb10132ead9565ef5eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7036372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5407e37cfc3fbf5903347fbcae4d99c1718d3fd1ce8635dc53f011b358a753c`

```dockerfile
```

-	Layers:
	-	`sha256:ddce696ffd9668c4cc04f4096b6da46324c023878a7f1fc93430115cda4eb5ae`  
		Last Modified: Tue, 10 Nov 2026 23:13:29 GMT  
		Size: 7.0 MB (7011365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0697911b84bfbba126fb12c4b2acdc21716f8a0465157e2587c31f2d73beff68`  
		Last Modified: Tue, 10 Nov 2026 23:13:28 GMT  
		Size: 25.0 KB (25007 bytes)  
		MIME: application/vnd.in-toto+json
