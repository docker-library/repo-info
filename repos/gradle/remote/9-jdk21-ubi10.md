## `gradle:9-jdk21-ubi10`

```console
$ docker pull gradle@sha256:c4a3aab9aafec7ad71ff926cbd512e89bbb9b2cdbc51e4e8f378edd53f4d9e4b
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

### `gradle:9-jdk21-ubi10` - linux; amd64

```console
$ docker pull gradle@sha256:d8d3cd4f87944ccdc10083737457e944642e62bf00994de26d236c410d043794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.6 MB (422598286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b161a5c9fd17d4a924b7c5e041ddb97f8d99b0ec86b638e842c2ad938fd26c50`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:29:44 GMT
ENV container oci
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:ddc630cb027274e98af97a1af6083c7b263b7cb019f3df1cfe8e4c98672cda82 in /      
# Thu, 08 Oct 2026 07:29:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:29:45 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:1fa5b8bc3bea37c9dd5b7f56283b2a920b53a13a06588e0df1136508b541f21f in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:1fa5b8bc3bea37c9dd5b7f56283b2a920b53a13a06588e0df1136508b541f21f in /root/buildinfo/      
# Thu, 08 Oct 2026 07:29:45 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:29:25Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:29:25Z" "architecture"="x86_64" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:29:25Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 21:53:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 21:53:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:53:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 21:53:28 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:53:28 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Thu, 08 Oct 2026 21:53:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 21:53:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 21:53:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 21:53:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 21:53:35 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 22:11:08 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 22:11:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 22:11:08 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 22:11:08 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 22:11:08 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 22:11:13 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 22:11:13 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 22:11:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 22:11:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 22:11:16 GMT
USER gradle
# Thu, 08 Oct 2026 22:11:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 22:11:16 GMT
USER root
```

-	Layers:
	-	`sha256:710627c3bbd291aa98b69cb89112ad2293928540481a1386e0ff674eb782c88c`  
		Last Modified: Thu, 08 Oct 2026 08:18:51 GMT  
		Size: 34.9 MB (34937054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc294927ed629d40121888a21cbba01f06eb882c1be48cfd41f1997a458bf7d`  
		Last Modified: Thu, 08 Oct 2026 21:53:53 GMT  
		Size: 37.9 MB (37877110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d3eea6a1c200125dcd97dca46387f44cf92f8b22bfa7f59e62351537a9124d`  
		Last Modified: Thu, 08 Oct 2026 21:53:56 GMT  
		Size: 158.1 MB (158120065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce78041db7e3668ce63f876e7c3c131275aff502f9a8756562e4c93d96487ef`  
		Last Modified: Thu, 08 Oct 2026 21:53:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258072da16c02a941156d0afb9aea664cf87825643f59cc1911353d8643bc05a`  
		Last Modified: Thu, 08 Oct 2026 21:53:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211109bccb7940965ea3dd410b4e1d67db815f5edcc5e82c947a9588b37c75ef`  
		Last Modified: Thu, 08 Oct 2026 22:11:35 GMT  
		Size: 1.6 KB (1583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd06b647ed1ce7fe077e2ceace79c18db5c4144e2ad3dc79191a077334b8894f`  
		Last Modified: Thu, 08 Oct 2026 22:11:37 GMT  
		Size: 40.1 MB (40100617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b3a2f24e96f11c55825a9bf139ac0c489b3cc00f055146dde72bb6ba401977`  
		Last Modified: Thu, 08 Oct 2026 22:11:39 GMT  
		Size: 151.5 MB (151533612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f52796871b426a15ac6155ba690bdc87c5a3020a0da1497637c34087e3d498`  
		Last Modified: Thu, 08 Oct 2026 22:11:35 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:ba5e101daace2a591529dcdcc7f8d4a04502f815cc01a08dc0ecf8628655cd6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7119985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6629ce7c6a4f503ce90d92d2d9e55e168b657fb2ee0722c7aa08c563db59cd03`

```dockerfile
```

-	Layers:
	-	`sha256:70b3676a57d15cb923aeb76bd46b19f795ba92d7a0909443ccb030cfce86a1d3`  
		Last Modified: Thu, 08 Oct 2026 22:11:35 GMT  
		Size: 7.1 MB (7095526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a070afda7f714643bd45a9715b9a4d3633f18dc5766b4b6e5b3f9cbeff55854`  
		Last Modified: Thu, 08 Oct 2026 22:11:35 GMT  
		Size: 24.5 KB (24459 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi10` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2afaf6c7d3485ff276fef7aa2d86b12084022a07cbfbaa53994b97b3da40e919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.5 MB (418472980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9f4279bd730447dd8fa4fd050bc898bfb5c3b794db1d87a8d167e19130754c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:31:33 GMT
ENV container oci
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:3b693ee56c8e02a0c8e6ed8f8171cc2234846abd348b9639ea706b42112670bc in /      
# Thu, 08 Oct 2026 07:31:34 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:31:34 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:680f884ce4f44b383a8b4383e602fd99d7e00d1f627ba9ceb02434c83b3c1cb0 in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:680f884ce4f44b383a8b4383e602fd99d7e00d1f627ba9ceb02434c83b3c1cb0 in /root/buildinfo/      
# Thu, 08 Oct 2026 07:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:31:12Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:31:12Z" "architecture"="aarch64" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:31:12Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 22:45:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 22:45:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 22:45:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 22:45:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 22:45:35 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Thu, 08 Oct 2026 22:45:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 22:45:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 22:45:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 22:45:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 22:45:43 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 23:40:07 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 23:40:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 23:40:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 23:40:07 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 23:40:07 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 23:40:11 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 23:40:11 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 23:40:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 23:40:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 23:40:14 GMT
USER gradle
# Thu, 08 Oct 2026 23:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 23:40:15 GMT
USER root
```

-	Layers:
	-	`sha256:8b2c25e4bec99a21d5c99e83343d0b1d76d3c026b29b0092e0f6b68de46679a2`  
		Last Modified: Thu, 08 Oct 2026 08:20:50 GMT  
		Size: 33.1 MB (33126510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e73c229508761c558087abbe8ebb0f5505a88d8b79b461bba1fbca71b83f510`  
		Last Modified: Thu, 08 Oct 2026 22:46:04 GMT  
		Size: 37.8 MB (37825268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d609203c36a103cb803c2d08fe5fb6ff5127fe1bca17ef0a2e34c48dcc91be`  
		Last Modified: Thu, 08 Oct 2026 22:46:06 GMT  
		Size: 156.4 MB (156403498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5bb1cf44841c2c40738f57c30d5311eb7910cd2ccfad1d23a9fee9d32be187`  
		Last Modified: Thu, 08 Oct 2026 22:46:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f87ccc3c3e72d2c56ef42f4777af65a1486f38e220e04f7b1f23c82aa491d15`  
		Last Modified: Thu, 08 Oct 2026 22:46:02 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f13490040621be81aab73ffb0f3f4f1d07dd4ecca0cbef54b9dffef091b7d8`  
		Last Modified: Thu, 08 Oct 2026 23:40:34 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e71df4e5057c92783135f9455b81f570bc4acb803884768e525a45138a0abb2`  
		Last Modified: Thu, 08 Oct 2026 23:40:36 GMT  
		Size: 39.6 MB (39550530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e6e4d564735da6be082e9f120a61a9a74699273063d2a836e00c79c5d33d3c`  
		Last Modified: Thu, 08 Oct 2026 23:40:39 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fa18a781e559d5bd4ef22545f502b3049b928eb52e1e239c3d6a496d0e43e7`  
		Last Modified: Thu, 08 Oct 2026 23:40:35 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:0528318f4907578838b8d912e7feaf6936ddd25140090da5737143869e8a2208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7118438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85e38c81129f73f0978eff80eb1f259c31f3ccdab173113c31056b87a9e271d`

```dockerfile
```

-	Layers:
	-	`sha256:83ae6a2c324fabf5e855b2ab09670dba9d55dd4b133f89c8cea2ba20d720b837`  
		Last Modified: Thu, 08 Oct 2026 23:40:35 GMT  
		Size: 7.1 MB (7093782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26705fcb163156b916fc8da5d02657ecdfdb1fcaf4cbf1b531209af01d0efe14`  
		Last Modified: Thu, 08 Oct 2026 23:40:34 GMT  
		Size: 24.7 KB (24656 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi10` - linux; ppc64le

```console
$ docker pull gradle@sha256:b3de5d71351a39775dc969531ce845fca9df0c46a12be4998f16a939f98b480d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.5 MB (430458190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215b87a7c2866544d20b8eff5cd5b1b81e3550d932d9fc35c54c75a7c3ec5ca1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:36:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:36:40 GMT
ENV container oci
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:388f591eac105a4440fdce238f0ad736ed3b491450d48baf032edf518479d515 in /      
# Thu, 08 Oct 2026 07:36:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:36:40 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:5ad892eb87479bd4b3c99be2ca7f61e3602e21f09d90f472444a46d544881207 in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:36:40 GMT
COPY dir:5ad892eb87479bd4b3c99be2ca7f61e3602e21f09d90f472444a46d544881207 in /root/buildinfo/      
# Thu, 08 Oct 2026 07:36:41 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:36:23Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:36:23Z" "architecture"="ppc64le" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:36:23Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 21:54:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 21:54:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:54:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 21:54:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:54:13 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Thu, 08 Oct 2026 21:57:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 21:58:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 21:58:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 21:58:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 21:58:06 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 22:10:39 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 22:10:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 22:10:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 22:10:39 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 22:10:40 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 22:10:56 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 22:10:56 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 22:10:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 22:11:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 22:11:09 GMT
USER gradle
# Thu, 08 Oct 2026 22:11:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 22:11:12 GMT
USER root
```

-	Layers:
	-	`sha256:64c368eb978920b7af84152d3940ec25758b46a3457852eccedf5de2484cd15f`  
		Last Modified: Thu, 08 Oct 2026 12:22:44 GMT  
		Size: 39.1 MB (39110445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb83c38091915b22657b2f2847166260cc37cfb4c40a0f8997adc9a1bd699ae2`  
		Last Modified: Thu, 08 Oct 2026 21:55:01 GMT  
		Size: 39.7 MB (39650943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af53cf7fec23a5a428773add4681eb94c8830249656da95a05b30be8f798831`  
		Last Modified: Thu, 08 Oct 2026 21:59:07 GMT  
		Size: 158.3 MB (158284499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b157fcbbe7cfd679a9452d4e0e35b54af04ee5e67ec40d10599ea919d1d6eb3b`  
		Last Modified: Thu, 08 Oct 2026 21:59:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74bcf5a1b9e80d16e518f21b24b08e91aa5521984ea2ce1bc8eb1664d3480fd`  
		Last Modified: Thu, 08 Oct 2026 21:59:04 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c799e108cf26472293d6f3ba4793f527af1d5458b382cd233c9932b5b3348c0`  
		Last Modified: Thu, 08 Oct 2026 22:12:35 GMT  
		Size: 1.6 KB (1588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5b35056b8e3b5edb268e28d020d5947ef29d55db2449f8f321c12e84914f05`  
		Last Modified: Thu, 08 Oct 2026 22:12:37 GMT  
		Size: 41.9 MB (41874083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4021bd8f1ee2023248f7bc2551b2e3ce808edff76fe1e3bc93f25b8a429d087b`  
		Last Modified: Thu, 08 Oct 2026 22:12:40 GMT  
		Size: 151.5 MB (151533614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e3979b11c4e2b0d962f4ef9627a36e5d66b5ebd207ff3b2546b7f166512e5d`  
		Last Modified: Thu, 08 Oct 2026 22:12:35 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:8fd4f7fde347d3e1c146aa7f1685d67381e24ac9ffe10c565d86afc2565efc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7111475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e4d4b7f77639793339c7db43401f111aefb8b77a46c645df0856f2c2c2a21f`

```dockerfile
```

-	Layers:
	-	`sha256:6289c311227e4d6363bbad7b18330e7a2a4b0b9791db6dfc22f19b760564f690`  
		Last Modified: Thu, 08 Oct 2026 22:12:36 GMT  
		Size: 7.1 MB (7086944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9909698053991927025e28abd5078d76c2d48ef16d8b37e9ecd12688b05740e7`  
		Last Modified: Thu, 08 Oct 2026 22:12:35 GMT  
		Size: 24.5 KB (24531 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-ubi10` - linux; s390x

```console
$ docker pull gradle@sha256:700137b32b89df461bb1a15c5a7e8e9d065c30c168b1d6f931df2f0e4d504511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.2 MB (414170214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a304c30e315c181a9e86fba861260d2745d2152aa17ac5d64c250e190a3dbd9c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:38:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:38:49 GMT
ENV container oci
# Thu, 08 Oct 2026 07:38:49 GMT
COPY dir:2185e09a553c6a0e7730da84252854ea804b5de5f96680b868cbbe1579c38c18 in /      
# Thu, 08 Oct 2026 07:38:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:38:50 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:38:50 GMT
COPY dir:42bdc584280eebd24bad4f1889eac720868389fd49bdf4aff0f8c3f4fbc0f34b in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:38:50 GMT
COPY dir:42bdc584280eebd24bad4f1889eac720868389fd49bdf4aff0f8c3f4fbc0f34b in /root/buildinfo/      
# Thu, 08 Oct 2026 07:38:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:37:24Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:37:24Z" "architecture"="s390x" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:37:24Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 21:50:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 21:50:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:50:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 08 Oct 2026 21:50:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:50:55 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Thu, 08 Oct 2026 21:51:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 08 Oct 2026 21:51:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 08 Oct 2026 21:51:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 08 Oct 2026 21:51:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 08 Oct 2026 21:51:49 GMT
CMD ["jshell"]
# Thu, 08 Oct 2026 22:08:57 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 22:08:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 22:08:57 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 22:08:57 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 22:08:57 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 22:09:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 08 Oct 2026 22:09:00 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 22:09:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 22:09:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 22:09:04 GMT
USER gradle
# Thu, 08 Oct 2026 22:09:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 22:09:05 GMT
USER root
```

-	Layers:
	-	`sha256:153dd3294949a84a2e9eb09a5b4df7d9084a22632384e0b1cdfc24de2db74211`  
		Last Modified: Thu, 08 Oct 2026 12:22:39 GMT  
		Size: 34.8 MB (34799545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a54b9d0617c4f84f14347443b7934f8e942872e8f2e9d06c9f2fa3f60b657a`  
		Last Modified: Thu, 08 Oct 2026 21:51:20 GMT  
		Size: 38.3 MB (38259978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d2e0834ed54df0f557b33d810a9ddea7c9a126b730447f8e7f0ca73c22aeb5b`  
		Last Modified: Thu, 08 Oct 2026 21:52:14 GMT  
		Size: 147.3 MB (147348021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2296ac8e03669bfd115f3dc9d8a38b0b3e87d8af072eb16836d37e3806bc8c`  
		Last Modified: Thu, 08 Oct 2026 21:52:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6674fb094a71b8e346fc4afc4f0d8068bb60a3504c7614ed96a46eb895f82c4f`  
		Last Modified: Thu, 08 Oct 2026 21:52:11 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae3790f716f4897621fc3bfa2547317d5af80d7c4aae0c35a3b8cf711c92467`  
		Last Modified: Thu, 08 Oct 2026 22:09:32 GMT  
		Size: 1.6 KB (1585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ae6732f8c16370ecb507fd6720803c03c04f64ad1c81b159f202133fe1a479`  
		Last Modified: Thu, 08 Oct 2026 22:09:33 GMT  
		Size: 42.2 MB (42224398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5fe83ceb93d66b69fe89c95a48f4cf203c4a256042dc47f7c61a2a925cb944`  
		Last Modified: Thu, 08 Oct 2026 22:09:36 GMT  
		Size: 151.5 MB (151533680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc3538f37512786fd0c1dba2b021b18f6c3f9e4ab94993d0df70e1d32ec9ad3`  
		Last Modified: Thu, 08 Oct 2026 22:09:32 GMT  
		Size: 376.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-ubi10` - unknown; unknown

```console
$ docker pull gradle@sha256:fa2e573783fa29b7ccf28545d95f5e08f9d09ced0bd014b39de7eab834b8ab74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7100629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861c4a13c2b1a497ac373c68eb2d05d0304dcb0301ed48b99d4603db21778c9c`

```dockerfile
```

-	Layers:
	-	`sha256:e661d9397249ddbd97c3e0605d7687c28aeedb80dc0ae1506b527342cabfd987`  
		Last Modified: Thu, 08 Oct 2026 22:09:32 GMT  
		Size: 7.1 MB (7076173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a6a279ffea0c90842e03102e00eb8fefc0e3fc51e014a5f6c59b1aced621852`  
		Last Modified: Thu, 08 Oct 2026 22:09:32 GMT  
		Size: 24.5 KB (24456 bytes)  
		MIME: application/vnd.in-toto+json
