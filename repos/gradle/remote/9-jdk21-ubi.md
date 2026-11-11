## `gradle:9-jdk21-ubi`

```console
$ docker pull gradle@sha256:44e0e0bd52a1f7da321d1b06c5d43e1c85019073f04281778d7257022e0f483b
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

### `gradle:9-jdk21-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:889d9871d9b609872483119b9ce3862de0fa9717646f12ed55b094ac412be418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **408.1 MB (408083576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ce758af397f363106481d6c323162c94afb5676916920bb0dcaad149989fd8`
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
# Tue, 10 Nov 2026 21:48:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:48:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:48:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:48:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:48:25 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Tue, 10 Nov 2026 21:48:31 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 21:48:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:48:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:48:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 21:48:32 GMT
CMD ["jshell"]
# Wed, 11 Nov 2026 20:11:14 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:11:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:11:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:11:14 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:11:14 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:11:19 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 11 Nov 2026 20:11:19 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 20:11:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:11:22 GMT
USER gradle
# Wed, 11 Nov 2026 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:11:22 GMT
USER root
```

-	Layers:
	-	`sha256:69b57da00fac19111ae56640149ff52360565f228e0311da5314d5052ae6a477`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 34.9 MB (34932314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc24a863e7b70d679fca03498ae251e8e434df6ef2b6bcf71c36ed421e296f8`  
		Last Modified: Tue, 10 Nov 2026 21:48:52 GMT  
		Size: 37.9 MB (37893771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b73dc75715a616434dedf1e01a7dcd109333961907cd2aa02046a254edaa86`  
		Last Modified: Tue, 10 Nov 2026 21:48:54 GMT  
		Size: 158.4 MB (158415876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8442c8107ee94932f5eea210acdd36db5739173eabe1523e917cbb5d6bd7fd22`  
		Last Modified: Tue, 10 Nov 2026 21:48:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c934591516781b6f4f3d507aa5d97a45841d01daccaad0592f026a1d765a213`  
		Last Modified: Tue, 10 Nov 2026 21:48:50 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fea58396c569d52d8a5f60a55f7a73c275ce05078cdf7b347819885facd735`  
		Last Modified: Wed, 11 Nov 2026 20:11:41 GMT  
		Size: 1.6 KB (1590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb008f1f4393ed16c4036746c308d0fd02ae5ba199b639815cb8d9834c6d6094`  
		Last Modified: Wed, 11 Nov 2026 20:11:42 GMT  
		Size: 42.0 MB (41990876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc01a2aa44acf42f3e18c7f80438946abd9726c2b27ae661113aac80823d7c00`  
		Last Modified: Wed, 11 Nov 2026 20:11:44 GMT  
		Size: 134.8 MB (134820902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24344e4b4a59f654d9251474e836502379cdea94aa32c60b6a057b3de70f8ac3`  
		Last Modified: Wed, 11 Nov 2026 20:11:41 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:fd34a8a9130bb5ef5cc568c7f94139443b800f0ec52006a569b45c37daacc671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7112574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98275ae178644f41014bb91ba44454fa259bef241db1ebc19d5485be3a4c240`

```dockerfile
```

-	Layers:
	-	`sha256:45a30c9193c91dfe66494d626fff7d074df1ae90d9c767a20f7cc316afe2c8cc`  
		Last Modified: Wed, 11 Nov 2026 20:11:41 GMT  
		Size: 7.1 MB (7088123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f9ca063b8841d39bab66bea747c966ae117a8b76e0e2d1e768cad07b50148a5`  
		Last Modified: Wed, 11 Nov 2026 20:11:41 GMT  
		Size: 24.5 KB (24451 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c239cb13c726c85083cb93dd14d52c19865068fe9caa24d6ce60104da8e0c0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.9 MB (403869709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247c82004f0557f1e24eb9778b78c4bdbb90c8dd355d7e201bdff99d45f23b57`
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
# Tue, 10 Nov 2026 21:51:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:51:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:51:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:51:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:51:25 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Tue, 10 Nov 2026 21:51:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 21:51:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:51:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:51:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 21:51:34 GMT
CMD ["jshell"]
# Wed, 11 Nov 2026 19:51:21 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 19:51:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 19:51:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 19:51:21 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 19:51:21 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 19:51:27 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 11 Nov 2026 19:51:27 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 19:51:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 19:51:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:51:29 GMT
USER gradle
# Wed, 11 Nov 2026 19:51:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:51:30 GMT
USER root
```

-	Layers:
	-	`sha256:79d5de29018018708e9112a663bf8efe877acdd3d07ba720507df4eef16fb72d`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 33.1 MB (33060918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7447ff97fa8b6e48108276ba0de56c896b581050ec27e125e4d5e7cef1f028c8`  
		Last Modified: Tue, 10 Nov 2026 21:51:54 GMT  
		Size: 37.8 MB (37833160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1a16e2010636a11a1d82589dca323cd09d9c6c1d5ecf1f470a8b6e4214bafe`  
		Last Modified: Tue, 10 Nov 2026 21:51:56 GMT  
		Size: 156.7 MB (156696973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556a2d5ef17173fd80394a46949325446d939aaaa39e9bfbcf45da2d1ce5c77a`  
		Last Modified: Tue, 10 Nov 2026 21:51:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a45123b1272987d4abf215831ff17a6b023cb8bb7338cdaae7f2cbb6275605`  
		Last Modified: Tue, 10 Nov 2026 21:51:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99cc526f5ff48746b56c2cc7d95f87f30bfeacde6852123d7b6d90de5dcd4ccb`  
		Last Modified: Wed, 11 Nov 2026 19:51:50 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439f821c0271bb98ce98faa088cedd72ba7ed1b289c7669b27590c6d5a295981`  
		Last Modified: Wed, 11 Nov 2026 19:51:51 GMT  
		Size: 41.4 MB (41424199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af4f3da13c30cc2e3dd4ccf9a608e952d11f34894da45463990c5f965ca5d68`  
		Last Modified: Wed, 11 Nov 2026 19:51:53 GMT  
		Size: 134.8 MB (134820904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7873d5f12998ad47d4a91a68065b35742815f04124cbce8d1a23b087ac974ce`  
		Last Modified: Wed, 11 Nov 2026 19:51:50 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:da5f6e7ae1fea7bd85d4d2524e6af634dc9e8fecb71293cbbc3ad8842f6f0915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7111027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62acf41f7d478c4e3c5f22922c250e670d83a4e8e011b9533c55f0bc76ad17e0`

```dockerfile
```

-	Layers:
	-	`sha256:7587e6c4b0da03d1bc950656835dec04e696574ed9eda9518beca7b88a75c5cd`  
		Last Modified: Wed, 11 Nov 2026 19:51:50 GMT  
		Size: 7.1 MB (7086379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54f8ccfcff00520543ac39cfb611abf1b386cb3be74978d51fd808e73150786c`  
		Last Modified: Wed, 11 Nov 2026 19:51:50 GMT  
		Size: 24.6 KB (24648 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:5c7f8e7ffaf5aa1a83ec41113518e784844346263f9e51ea977f053ea4d623bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.1 MB (413131492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c852592cc3c4a5e15304e6b26131f7308b23d0795a544d45807f9db328d5bdc0`
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
ENV JAVA_VERSION=jdk-21.0.13+9
# Tue, 10 Nov 2026 23:59:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 10 Nov 2026 23:59:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:59:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:59:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 10 Nov 2026 23:59:50 GMT
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
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 11 Nov 2026 00:15:37 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 00:15:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 19:53:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:53:58 GMT
USER gradle
# Wed, 11 Nov 2026 19:54:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:54:01 GMT
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
	-	`sha256:72ed8147395653f4097c185928e2ed3e875e0bd587ee2827e14a307aedac318b`  
		Last Modified: Wed, 11 Nov 2026 00:00:53 GMT  
		Size: 157.6 MB (157579175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863a1d815417776d2664f035995be82a1f58103eb48a03d560e6d32dc4b37d3e`  
		Last Modified: Wed, 11 Nov 2026 00:00:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d363e6f862ed6423c5f0e9eecebe7e819591d43993cc0430447a524c2cce6fa`  
		Last Modified: Wed, 11 Nov 2026 00:00:50 GMT  
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
	-	`sha256:790eeff56f6187fbbab44ce5a113fc0c976cc7e5524ddcb3dd48faf4ef10f04b`  
		Last Modified: Wed, 11 Nov 2026 00:17:04 GMT  
		Size: 42.0 MB (41985708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f7282cd89b65d6b4602236419583abaf086faca0df07020c7cf231c3af47c3`  
		Last Modified: Wed, 11 Nov 2026 19:55:02 GMT  
		Size: 134.8 MB (134820909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c62117f48de3064faee9bcb60383f04fb3c88deadba20808531bd91b57106a4`  
		Last Modified: Wed, 11 Nov 2026 19:54:58 GMT  
		Size: 382.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b35108fcffa791073884ee34e47ad81e506ea613aeb21663278ff569581f9043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7099191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a118915bd9d783065c5b132e15fa9359d5f2e2fc91918b6f4908f0289b968047`

```dockerfile
```

-	Layers:
	-	`sha256:5bb911f45ae2134e6b9785f4eef440979e16cde63ba1752910b610057da0f334`  
		Last Modified: Wed, 11 Nov 2026 19:54:59 GMT  
		Size: 7.1 MB (7074668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe3f1225bae0f97f07e8277d3cd71364b5c33c800bb962e20c41a8f6eaa0ffe5`  
		Last Modified: Wed, 11 Nov 2026 19:54:58 GMT  
		Size: 24.5 KB (24523 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:527f4b300d4720d37f4eb9eb30f84e20ed2f6f7aa54e3165070967240510a71c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.0 MB (402972367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd99310b0944f1a781f9bf6057d0e67bfc03b62e3a495067a8591b19e5fde2e8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:50:00 GMT
ENV container oci
# Wed, 04 Nov 2026 23:50:01 GMT
COPY dir:41abef77eb7d97eab361d6702f401bd5cabc610a431fcfa74f91581ed0526b5d in /      
# Wed, 04 Nov 2026 23:50:01 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:50:01 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:50:02 GMT
COPY dir:d343be6a52b8557eb861538e14970a879c5cc4665db0ebe3128e0898b89043c6 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:50:02 GMT
COPY dir:d343be6a52b8557eb861538e14970a879c5cc4665db0ebe3128e0898b89043c6 in /root/buildinfo/      
# Wed, 04 Nov 2026 23:50:02 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:48:44Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:48:44Z" "architecture"="s390x" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:48:44Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:06:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:06:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:06:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:06:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:06:03 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:08:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:08:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:08:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:08:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:08:41 GMT
CMD ["jshell"]
# Wed, 11 Nov 2026 22:13:39 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 22:13:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 22:13:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 22:13:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 22:13:41 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 22:13:55 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 11 Nov 2026 22:13:55 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 22:13:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 22:13:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 22:13:59 GMT
USER gradle
# Wed, 11 Nov 2026 22:14:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 22:14:00 GMT
USER root
```

-	Layers:
	-	`sha256:64602be39c30ba4b6fc71c0d4cb6a6f38368d784d4735696f044d24b7c2453f8`  
		Last Modified: Wed, 11 Nov 2026 06:31:41 GMT  
		Size: 34.8 MB (34825852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb536e47aad736d85f01132eb667999c9ae3f27a8cd1c9d240907381c266408b`  
		Last Modified: Wed, 11 Nov 2026 22:06:34 GMT  
		Size: 28.3 MB (28292484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3097d063b3685c6217834056c4b29ee5960aeb19d0858716e39cb5090a0320e5`  
		Last Modified: Wed, 11 Nov 2026 22:09:32 GMT  
		Size: 146.9 MB (146882491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759d7bcea50433f150f23943ab168371a9077c5012675d127bf4f310750f313f`  
		Last Modified: Wed, 11 Nov 2026 22:09:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784dfd29d9df3aa348e181a27fe678644fda77cb89b17997b79f0dd70da0643e`  
		Last Modified: Wed, 11 Nov 2026 22:09:28 GMT  
		Size: 2.5 KB (2466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da78d90e2b7aa6c4216b6908475ec5ca784a0875663745fc8123f7e6453e6b19`  
		Last Modified: Wed, 11 Nov 2026 22:14:38 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0f52bd019bfe5f2476accb0537d5ea18ac7094ff27ae09bc159cbc820e6b83`  
		Last Modified: Wed, 11 Nov 2026 22:14:40 GMT  
		Size: 58.1 MB (58146185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7e9b3199fc38105574edfcf8ee0456473aca829131a657ac957c5c748a4f26`  
		Last Modified: Wed, 11 Nov 2026 22:14:42 GMT  
		Size: 134.8 MB (134820902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea46f715113dd12769981ff7eed5c04dea87891e009dc2be7e6399ade752596d`  
		Last Modified: Wed, 11 Nov 2026 22:14:38 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:e7e0de1067efee13d9b4ba73dc09d1c641ac6fd289b2d25eb5b238fab34b8a0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7091742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed4da73b0f3926d0c9ac992b56de97a5641178712062e3a7a8c70fd0fac1d78e`

```dockerfile
```

-	Layers:
	-	`sha256:2aaa853bbfd3fa95739984ec90d4613ff5f91c14ce28bc787363d132970f39ce`  
		Last Modified: Wed, 11 Nov 2026 22:14:38 GMT  
		Size: 7.1 MB (7067294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:043191706a7dbe53aef1437282384b8a13a31a7ef85c8d241907d9a483b1bb02`  
		Last Modified: Wed, 11 Nov 2026 22:14:38 GMT  
		Size: 24.4 KB (24448 bytes)  
		MIME: application/vnd.in-toto+json
