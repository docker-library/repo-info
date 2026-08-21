## `gradle:9-jdk17-ubi`

```console
$ docker pull gradle@sha256:ce2b3eb96d43ba5b5c6b50a12562987e6bf20a17b6b95711035627db72afbb33
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

### `gradle:9-jdk17-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:682cf7d541256445af06d8e348302bb89d82df39638884edae97ca12189cb5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.8 MB (409779646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7274961e3f2e66c41e4c9675bce7a60ceda1742a7a1746b9acc0b11d42e8279`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:43:08 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:43:08 GMT
ENV container oci
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:9f021fb13f2371556f5330777fa50b285029910699c8db1352c33ddbfc4aa6e0 in /      
# Thu, 20 Aug 2026 05:43:09 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:43:09 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:bf294f09ff82d16384bebbac392bb5b44f58ff0fde6056277f77e6dc82df16e4 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:43:09 GMT
COPY dir:bf294f09ff82d16384bebbac392bb5b44f58ff0fde6056277f77e6dc82df16e4 in /root/buildinfo/      
# Thu, 20 Aug 2026 05:43:09 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:42:51Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:42:51Z" "architecture"="x86_64" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:42:51Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 17:47:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:47:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:47:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:47:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:47:22 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:24:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:24:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:01 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:44:31 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:44:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:44:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:44:31 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:44:31 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:44:36 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 18:44:36 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:44:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:44:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:44:39 GMT
USER gradle
# Fri, 21 Aug 2026 18:44:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:44:40 GMT
USER root
```

-	Layers:
	-	`sha256:d61293fa3d3593fa639f5bfdc418af2cbb4e25ccdf20c6ff76fc342b18e72883`  
		Last Modified: Thu, 20 Aug 2026 06:41:10 GMT  
		Size: 34.9 MB (34881705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbca6b68f39b39fcbe889088077e10d8abcbd8f45c89df71031b9f08028847d6`  
		Last Modified: Fri, 21 Aug 2026 17:47:39 GMT  
		Size: 37.8 MB (37796038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b35ff7cedaed792e117cefe20f3ea15c787dca4262092112e90f1af422328d`  
		Last Modified: Fri, 21 Aug 2026 18:24:19 GMT  
		Size: 145.8 MB (145828528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d4dba6bd386eb9bc7e5c38f2f863f41e921af66a1e8550d79948cdd78a7d38`  
		Last Modified: Fri, 21 Aug 2026 18:24:16 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a83493b4a14fc0efc439c74ac7e66ec888100e1108c05e4fc56305249f9ad39c`  
		Last Modified: Fri, 21 Aug 2026 18:24:16 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2f11783b08642c2e2c654eece4b5c2b3ba19f6afda075dc0a00dbab7c3cd13`  
		Last Modified: Fri, 21 Aug 2026 18:44:59 GMT  
		Size: 1.6 KB (1584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2bf8f21e06bb149e7554a1ad2f54a858d778ffd2a566446ea178f57e58590a`  
		Last Modified: Fri, 21 Aug 2026 18:45:01 GMT  
		Size: 39.9 MB (39889545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5dbbdaf394de3db5183c39dd167d54f064fe79f2f94c30fe21fcd60bd59301`  
		Last Modified: Fri, 21 Aug 2026 18:45:04 GMT  
		Size: 151.4 MB (151353993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9304f47a69009722600a905c32ff4a9da8bd5a8ec8c80ea3ddbf2a502ccab628`  
		Last Modified: Fri, 21 Aug 2026 18:44:59 GMT  
		Size: 25.6 KB (25621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:064e396a754f7736aaad2e28a05a478b6f04d66d1d25f4c5ec8139def92e2abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7121269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5133611692711573879facfeedf117fa52600ba846c20a874b6d7d41c81f3533`

```dockerfile
```

-	Layers:
	-	`sha256:47b2c89d311155ebc649133cd276930e9ebfa1626bf395766b2192d73c7d4c85`  
		Last Modified: Fri, 21 Aug 2026 18:44:59 GMT  
		Size: 7.1 MB (7096818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dae932b7f5a107bcf0e2d41ae287eeb70dd5f706edb02c599833d1c9a6aae097`  
		Last Modified: Fri, 21 Aug 2026 18:44:58 GMT  
		Size: 24.5 KB (24451 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c4eb74a3e5e4812e95dda399db96a78b7b2a22fb345931c84f3bc3035a6fe328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.2 MB (406223165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c149478d350f52fefec2b230e102c2b44b18cd50a90672f2a29ff04f144d782`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:45:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:45:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:45:25 GMT
ENV container oci
# Thu, 20 Aug 2026 05:45:25 GMT
COPY dir:e44f9197bfd72bc658385b5b15ab7462e17e7efd592f16da1d8b4e59c9a00dc2 in /      
# Thu, 20 Aug 2026 05:45:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:45:25 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:45:25 GMT
COPY dir:7954bbfaabcb4f9d29560c7d7cdb21c9cca4ba55a953c5ccc5d80e9881cc587c in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:45:26 GMT
COPY dir:7954bbfaabcb4f9d29560c7d7cdb21c9cca4ba55a953c5ccc5d80e9881cc587c in /root/buildinfo/      
# Thu, 20 Aug 2026 05:45:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:45:03Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:45:03Z" "architecture"="aarch64" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:45:03Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 18:25:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 18:25:46 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:27:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:27:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:27:03 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:38:23 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:38:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:38:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:38:23 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:38:23 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:38:28 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 18:38:28 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:38:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:38:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:38:31 GMT
USER gradle
# Fri, 21 Aug 2026 18:38:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:38:32 GMT
USER root
```

-	Layers:
	-	`sha256:68774b1c806af71a34a179e2397bd0a4568f97681106fab710192c96e498f363`  
		Last Modified: Thu, 20 Aug 2026 06:41:06 GMT  
		Size: 33.1 MB (33110773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44ad036c84168387728088b1bf9c59b7be7e676f978cedca2671bf47664646f`  
		Last Modified: Fri, 21 Aug 2026 18:26:05 GMT  
		Size: 37.7 MB (37724110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026a1e397d48f7f96a6d86943facf8e96f02bd249a5e9c3ed289fabb4b2a5765`  
		Last Modified: Fri, 21 Aug 2026 18:27:24 GMT  
		Size: 144.7 MB (144651279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5306a596761e58fd1a6a7520bf8cc64dd24ae71055102862de069a278eb52405`  
		Last Modified: Fri, 21 Aug 2026 18:27:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1c70ba646d9dc33d4773c1807c214bbb611bf4729920304754c6d32ae75b98`  
		Last Modified: Fri, 21 Aug 2026 18:27:19 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06dcc8e465566c5ab9a4aab8077c9bef68e54caf3b46b2acbc7efd46950bfeb3`  
		Last Modified: Fri, 21 Aug 2026 18:38:51 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0f21b583326ca0624a79e656ebf2b4a92fdefa92396e2df041ac7ba6114b3f`  
		Last Modified: Fri, 21 Aug 2026 18:39:09 GMT  
		Size: 39.3 MB (39349427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28afeef2b9a4d9f018c51475d00b2dd57a4b72324645c7374c966ef9bc6502c`  
		Last Modified: Fri, 21 Aug 2026 18:39:15 GMT  
		Size: 151.4 MB (151354019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72553b4e3df86a20e2bc0bb3e2b7211b2e92e25ce953713ac3bfc16cf0bd93a`  
		Last Modified: Fri, 21 Aug 2026 18:38:51 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:551fd1bf98d8e1041a311a1917d9a7fa5ffa4e4c12ca580c5d5504f2d7f10821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7119722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386bd1d4601eaaa3b59235e0bd5156d275aecd84afe2ba96259b6e2dc6ba8c8e`

```dockerfile
```

-	Layers:
	-	`sha256:4fed428d39391663abd1b0f2e45af14f39a2beb741341678f9d929dcad0b0b6c`  
		Last Modified: Fri, 21 Aug 2026 18:38:52 GMT  
		Size: 7.1 MB (7095074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b06287c25dd434aff78b4274f401b440edaa5b17e2113d34f36f0396b9cce17`  
		Last Modified: Fri, 21 Aug 2026 18:38:51 GMT  
		Size: 24.6 KB (24648 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:039856c3680f2bbe96e7de57a0197ce6ba44a2e56ac40906c9dca3b04a6b04f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.3 MB (417322684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6a4dff5e3b80940e50f7b67324bd6c34af378d10fa11e0fd8b5d2d094d85a4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 05:46:50 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 05:46:50 GMT
ENV container oci
# Thu, 20 Aug 2026 05:46:51 GMT
COPY dir:2a8249143d8cd7d8ebdfee6463c48e23365f201df5582d40605373a68f16d359 in /      
# Thu, 20 Aug 2026 05:46:51 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 05:46:51 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 05:46:51 GMT
COPY dir:dcf909e21a05f38ab87d2f9c934d32a06cab5c1bc0293add6794503c862ed395 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 05:46:51 GMT
COPY dir:dcf909e21a05f38ab87d2f9c934d32a06cab5c1bc0293add6794503c862ed395 in /root/buildinfo/      
# Thu, 20 Aug 2026 05:46:51 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T05:46:34Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T05:46:34Z" "architecture"="ppc64le" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T05:46:34Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 17:54:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:54:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:54:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:54:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:54:40 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 20:35:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 20:35:13 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:35:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:35:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:35:13 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 20:57:47 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 20:57:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 20:57:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 20:57:47 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 20:57:47 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 20:58:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 20:58:10 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 20:58:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 20:58:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 20:58:15 GMT
USER gradle
# Fri, 21 Aug 2026 20:58:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 20:58:17 GMT
USER root
```

-	Layers:
	-	`sha256:4bb5a8f1015bf2945048edabe211d1710021017f522c212f4562ed8a4fe7f37b`  
		Last Modified: Thu, 20 Aug 2026 12:16:42 GMT  
		Size: 39.0 MB (39047835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864ef3c63d9d6537f5cc2daf3f15246d7138cf5c2b2b31da7edf3fc44e1e6e03`  
		Last Modified: Fri, 21 Aug 2026 17:55:30 GMT  
		Size: 39.6 MB (39556036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b21f95de7907337fc301120761da6163c3633494918b26d04fa19b8577e245c`  
		Last Modified: Fri, 21 Aug 2026 20:35:49 GMT  
		Size: 145.7 MB (145691836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfcdb5c19c09cc54a878de57926c5aa4872973cde78d5a478b32284e17f2faf4`  
		Last Modified: Fri, 21 Aug 2026 20:35:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fa16b537f09c308c5db3c20526bdb2731074cd158f44ed074048bcd551c6df`  
		Last Modified: Fri, 21 Aug 2026 20:35:46 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8f9cd5290cdb194370a3f5a61c19e03864476ee53b1c1c970f60ff115070f9`  
		Last Modified: Fri, 21 Aug 2026 20:58:57 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fcef802492ad5f3703b8909b6502ecabb3679bd075cfb93dd1e69b845e07ef5`  
		Last Modified: Fri, 21 Aug 2026 20:58:59 GMT  
		Size: 41.7 MB (41668358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf1d4378fb6de2f3f31bcad9505f5febed25ebd6356aaceda5f1b456660f1e3`  
		Last Modified: Fri, 21 Aug 2026 20:59:02 GMT  
		Size: 151.4 MB (151354020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fd260f80f5c84a111327ee3cf35151c2ed6eada5d4413b3c08c40fac3fcc55`  
		Last Modified: Fri, 21 Aug 2026 20:58:57 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:bfb4cce698d07a7726362184bd923770053bee63171e281af33e3e402a637839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7112759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637ee232dde0d8b0bbb292dcbed1d6178694b5c9f8204729933ada624afb9f3b`

```dockerfile
```

-	Layers:
	-	`sha256:13c4db2eae7a16b0a5186f519c80f3875114ba78843e97585e99c5b1dd7d6554`  
		Last Modified: Fri, 21 Aug 2026 20:58:57 GMT  
		Size: 7.1 MB (7088236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62d0045907378534897caf2f475031f5d83ecd1102a9d70dc52c993573ec7923`  
		Last Modified: Fri, 21 Aug 2026 20:58:57 GMT  
		Size: 24.5 KB (24523 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:3c34dfde4e9c8943e5f25ffec4908490c36e216eab04105d9acd36db064fbff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.2 MB (402193333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe19f1ccbc3d1e862f77d8155da858a91207d36414d39f50428843b68e1ec37d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.openshift.expose-services=""
# Thu, 20 Aug 2026 06:03:17 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 20 Aug 2026 06:03:17 GMT
ENV container oci
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:eb18fd88295490f3f96fdde5a853a45643aef05924fb21e2cc03135e89cc179a in /      
# Thu, 20 Aug 2026 06:03:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 20 Aug 2026 06:03:17 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:b4a8f7f96c926329ee4146bbe412375c58d085296683d1ba2080891348b92698 in /usr/share/buildinfo/      
# Thu, 20 Aug 2026 06:03:17 GMT
COPY dir:b4a8f7f96c926329ee4146bbe412375c58d085296683d1ba2080891348b92698 in /root/buildinfo/      
# Thu, 20 Aug 2026 06:03:18 GMT
LABEL "org.opencontainers.image.created"="2026-08-20T06:02:11Z" "org.opencontainers.image.revision"="b2232799f269a1f388bb8eab702d61fa78c72fce" "build-date"="2026-08-20T06:02:11Z" "architecture"="s390x" "vcs-ref"="b2232799f269a1f388bb8eab702d61fa78c72fce" "vcs-type"="git" "release"="1787204459"org.opencontainers.image.created=2026-08-20T06:02:11Z,org.opencontainers.image.revision=b2232799f269a1f388bb8eab702d61fa78c72fce
# Fri, 21 Aug 2026 17:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 17:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 17:46:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 17:46:27 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 17:46:27 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:28:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:28:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:23 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:40:51 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:40:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:40:51 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:40:51 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:40:51 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:40:55 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 18:40:55 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:40:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:40:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:40:59 GMT
USER gradle
# Fri, 21 Aug 2026 18:41:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:41:00 GMT
USER root
```

-	Layers:
	-	`sha256:b046321c2e480498ac362a67b448add00a021c25fec4bcba6fd7a58d411dc197`  
		Last Modified: Thu, 20 Aug 2026 12:16:34 GMT  
		Size: 34.8 MB (34761940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddb87076a5ab9009889fcfce1485d30640da13853a0d57772521606befae416`  
		Last Modified: Fri, 21 Aug 2026 17:46:49 GMT  
		Size: 38.2 MB (38170739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab0ed0a195888236a2392a1c30901ec0627e565b6eb95ed0ae8e39537e76acd`  
		Last Modified: Fri, 21 Aug 2026 18:28:50 GMT  
		Size: 135.9 MB (135876094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe0d63587a48c216222dfc4da73c0ad7d70a6fdb0b4e9b5b3da50ae0796beb9`  
		Last Modified: Fri, 21 Aug 2026 18:28:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f4278e61083a48eb01b9ae4135b65040ff13cb69f46780011c093c9c4bb316`  
		Last Modified: Fri, 21 Aug 2026 18:28:47 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73ec311882993e85002161613583ca15f245d045e73a606ab6ada215897b433`  
		Last Modified: Fri, 21 Aug 2026 18:41:27 GMT  
		Size: 1.6 KB (1586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab8553cb6027d5d3bda8f38236516ad895de9edaef5d8aac1ad19a768e0b7dd`  
		Last Modified: Fri, 21 Aug 2026 18:41:28 GMT  
		Size: 42.0 MB (42025949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:097d26d251bb93781cecfd1ceb904601a5bfdd81f3ceff97c6c51a7d6910cc24`  
		Last Modified: Fri, 21 Aug 2026 18:41:31 GMT  
		Size: 151.4 MB (151354021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb09c6be70e3b590e7ae16ce6d3e18f8bc07622e77bb37f62b318bfb27ded5d`  
		Last Modified: Fri, 21 Aug 2026 18:41:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:b0cefc1247894fc2e0887d2385ef3a840d2be0aec239cdaf49952ad436f38a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7101914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c90fd8d329c5908759674fb42f56d78fa033779a2ff29b4c9188f63747320f`

```dockerfile
```

-	Layers:
	-	`sha256:464e6d29ce19433c1be908655ad4ec2a5525b4affd2d00b03079cf65b943c017`  
		Last Modified: Fri, 21 Aug 2026 18:41:27 GMT  
		Size: 7.1 MB (7077465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20169388ff36d4b72da041284c95c541fe196fb4aa0e1da4f3733e5b71693416`  
		Last Modified: Fri, 21 Aug 2026 18:41:27 GMT  
		Size: 24.4 KB (24449 bytes)  
		MIME: application/vnd.in-toto+json
