## `gradle:jdk17-ubi9`

```console
$ docker pull gradle@sha256:61f427532e42005b0c8ed7ef5cf3313062094be5eac258a808ce1e7b7bd3e2ab
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

### `gradle:jdk17-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:98c77ee547c14d9324e3e0e681f92ecc67cc45bd17fce3c4fefdb311e6ba7032
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.8 MB (392825406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42a8a0a4eef80e7416b76e7e4714240b6ad2b5b16c6074c5f278cfcaea745ac`
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
# Wed, 05 Aug 2026 18:15:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:15:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:15:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:15:07 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:15:07 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 05 Aug 2026 18:15:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 05 Aug 2026 18:15:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:15:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:15:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 05 Aug 2026 18:15:15 GMT
CMD ["jshell"]
# Wed, 05 Aug 2026 19:10:23 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:10:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:10:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:10:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:10:23 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:10:26 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:10:26 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 05 Aug 2026 19:10:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 05 Aug 2026 19:10:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:10:29 GMT
USER gradle
# Wed, 05 Aug 2026 19:10:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 05 Aug 2026 19:10:29 GMT
USER root
```

-	Layers:
	-	`sha256:f5e26a8514cb54661b214b756f0f307e562755e1865d1e13fa375c8e6c6b88ae`  
		Last Modified: Wed, 05 Aug 2026 06:11:38 GMT  
		Size: 40.7 MB (40708771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7bf047c4b9d7afdf357425353ae83cb04a2a2a7aeb9e64b6dee6bba122261a`  
		Last Modified: Wed, 05 Aug 2026 18:15:31 GMT  
		Size: 27.7 MB (27657982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7113a367c7f2378a206b457fbed46be5c315fbd33731a9a32e6d2cb7bd8cbd08`  
		Last Modified: Wed, 05 Aug 2026 18:15:33 GMT  
		Size: 145.9 MB (145915433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5bc7cc175eb95f46d094231dfaeeab99dbd9a4045878c809a396bcdfbe024a`  
		Last Modified: Wed, 05 Aug 2026 18:15:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af516bb057cc98ec4ac0c7a0dbe8854435a71fdcc5280e72cc95ad3ae4a0af3f`  
		Last Modified: Wed, 05 Aug 2026 18:15:30 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d541cf57403567b04dbedfc844e089957ad17b319bc4e111135872288b40ccd`  
		Last Modified: Wed, 05 Aug 2026 19:10:47 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0b939f42e02075eda25b7377a40d453a79ba8c574f80cb034b872129b53b2a`  
		Last Modified: Wed, 05 Aug 2026 19:10:48 GMT  
		Size: 37.9 MB (37917430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f9176b0be8bdb7aa861fbfe6a57683d130710eadbb5936edf669c69624e09b8`  
		Last Modified: Wed, 05 Aug 2026 19:10:51 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacb29bc384aa7e6dca4bc62b96e75292ddcbd1751499a106dd74416cc401ec5`  
		Last Modified: Wed, 05 Aug 2026 19:10:47 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:48f71f7d25d2438e1c4c5a4b57e5879010966021cc4dc4b40ec04e89f7951be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5456203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e08c906d92037381ff65ca2e4f08f5a8683a2cae35d64db2f4dcfceae1482d8`

```dockerfile
```

-	Layers:
	-	`sha256:1a923760abf56dc86e964473f1bb8ada4315290ccbf1ae251a2d4860e55894a6`  
		Last Modified: Wed, 05 Aug 2026 19:10:47 GMT  
		Size: 5.4 MB (5433003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8299712bdb758421dcdacd73a45a2200a8528bdf913197a144637b47b5f84b3`  
		Last Modified: Wed, 05 Aug 2026 19:10:47 GMT  
		Size: 23.2 KB (23200 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:f43690d28aa0685994dbe46f1bf72f4b40be107c341d54a5d0c69ee35b731b25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.5 MB (389478953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed507b0a3196b56b675e0207b82ccea3c82dbed7aaa6636885ac672b15956b18`
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
# Wed, 05 Aug 2026 18:14:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:39 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 05 Aug 2026 18:14:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 05 Aug 2026 18:14:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 05 Aug 2026 18:14:48 GMT
CMD ["jshell"]
# Wed, 05 Aug 2026 19:09:59 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:09:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:09:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:09:59 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:09:59 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:10:03 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:10:03 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 05 Aug 2026 19:10:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 05 Aug 2026 19:10:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:10:06 GMT
USER gradle
# Wed, 05 Aug 2026 19:10:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 05 Aug 2026 19:10:06 GMT
USER root
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd98afd598757ced9a6dd73d36ca104a359afc8a9a53f3c504a1bd49803e0f0`  
		Last Modified: Wed, 05 Aug 2026 18:15:06 GMT  
		Size: 28.1 MB (28101334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41340b08b8bc21cfe4b2fab6ac1c2213480657c827bbe2f9a2a38cfdff2bbb9`  
		Last Modified: Wed, 05 Aug 2026 18:15:08 GMT  
		Size: 144.7 MB (144734813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cedd82992d48bad09ba1dc278c88dffd7a4a5a7195e7fbe6298fd64019c64a`  
		Last Modified: Wed, 05 Aug 2026 18:15:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a726e7bc2b25d012e0ecedc03e6d969eac508d2872a5d9fe8c67e507ec71112`  
		Last Modified: Wed, 05 Aug 2026 18:14:55 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a96fbf8938146d72129a71832d30d6e0096d60a59ce641b86ea29b20cf0b31f`  
		Last Modified: Wed, 05 Aug 2026 19:10:23 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4aeb3475285b1d4392c2847103bcd5c8cd19e0548dfe11c5548e1dbf3263ffd`  
		Last Modified: Wed, 05 Aug 2026 19:10:25 GMT  
		Size: 37.2 MB (37203999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68338f3e4d55c7358b5cce982b504e0f990423a5d4f9beb97dfaa93d58fbf5c`  
		Last Modified: Wed, 05 Aug 2026 19:10:27 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692b9e2ac54ee6e7fe9e1daddf9d059050a261a38eafa66813827965ccb2b690`  
		Last Modified: Wed, 05 Aug 2026 19:10:23 GMT  
		Size: 29.3 KB (29338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:35dd0635029fe6e857fbf04c67a38e59dda3c5cccded3bb05c001dba7d629fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5453952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2059dede0dfba07ef48790d156a4e7b233bff942f40bcd796a63f51569de1f`

```dockerfile
```

-	Layers:
	-	`sha256:80fe5ff8f7ef966d875ebb7bb95ffae0afa56ce674bd1944553b60e9605060a2`  
		Last Modified: Wed, 05 Aug 2026 19:10:23 GMT  
		Size: 5.4 MB (5430603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d81812b961c8047db06fdcbc6b5aeac703894383c48138a201894783a0c46df`  
		Last Modified: Wed, 05 Aug 2026 19:10:23 GMT  
		Size: 23.3 KB (23349 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:8abf008c33cc41c5b437b4e76c359f0df99b0bab1a32e5e48a086e6a609642a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.8 MB (400785332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b1a22e4b2c1fea0c5ee42959d3a5211ee9a69a979d9cd26076238c4279164f2`
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
ENV JAVA_VERSION=jdk-17.0.19+10
# Tue, 04 Aug 2026 20:57:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 20:57:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 20:57:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:57:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 20:57:44 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 22:30:31 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 22:30:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 22:30:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 22:30:31 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 22:30:31 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 22:30:44 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 04 Aug 2026 22:30:44 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 22:30:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 22:30:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 22:30:50 GMT
USER gradle
# Tue, 04 Aug 2026 22:30:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 22:30:53 GMT
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
	-	`sha256:dd2c59e409a3de19b488a80625beb254f384cd7c78466b1cdb6383aa9f2d42a7`  
		Last Modified: Tue, 04 Aug 2026 20:58:24 GMT  
		Size: 145.8 MB (145788677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62a2d0c550f833c11688c2b761f165d95715ebbbf98a8a079f22144dd041e349`  
		Last Modified: Tue, 04 Aug 2026 20:58:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4137008f60ce28621e1f51c3e7bc1aa50f9445403ec01ad7e2fe63903fa7a9c5`  
		Last Modified: Tue, 04 Aug 2026 20:58:20 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cc7ed3c0dde6c51cbacb6602740a7dd36fb1b8ae3d8114fee26ec0ee0123f3`  
		Last Modified: Tue, 04 Aug 2026 22:31:33 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2ea52da722cc11bf14fbba3f096fdd9fce55e8e6774f1590b6ca95f9873806`  
		Last Modified: Tue, 04 Aug 2026 22:31:35 GMT  
		Size: 39.2 MB (39185142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4afc8cfa7a23d0b8243230817b2ac8e786cd5449f89740e63b2496e44a5de81`  
		Last Modified: Tue, 04 Aug 2026 22:31:37 GMT  
		Size: 140.6 MB (140596027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15c432b3b90749e62675ee79b13a5e19c64cbe02bec3d19c4d91c6add53cc33`  
		Last Modified: Tue, 04 Aug 2026 22:31:33 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:782499cbba56b50ec992219b9dbe7aadf25d5b4797b1296edf28edf48dc77bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5451850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c39e7d1e3359d91a508908711ea63cc15e38049c8f88a9e6e8910e45053eed`

```dockerfile
```

-	Layers:
	-	`sha256:91743c68ce3266e8a73996611b748f9b4713d17705939b5eaf692b97ac9d0003`  
		Last Modified: Tue, 04 Aug 2026 22:31:33 GMT  
		Size: 5.4 MB (5428566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2afe6f8b18cd3e51f038c8125c56ff3c00da66f2bba52e65b80cf79a8912186e`  
		Last Modified: Tue, 04 Aug 2026 22:31:33 GMT  
		Size: 23.3 KB (23284 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:a0f5cf5fb84717a7bbd0c02a742c58aaa8a07bb98f2f04ba4e29cfc476603c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.5 MB (380467322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c1c67de6929253f02da65bfbf2ebb02d0061a2b8235b40445d33957fa0724d`
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
# Wed, 05 Aug 2026 18:13:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:13:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:13:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:13:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:13:57 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 05 Aug 2026 18:14:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 05 Aug 2026 18:14:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 05 Aug 2026 18:14:07 GMT
CMD ["jshell"]
# Wed, 05 Aug 2026 19:08:45 GMT
CMD ["gradle"]
# Wed, 05 Aug 2026 19:08:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 05 Aug 2026 19:08:45 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 05 Aug 2026 19:08:45 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 05 Aug 2026 19:08:45 GMT
WORKDIR /home/gradle
# Wed, 05 Aug 2026 19:08:54 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 05 Aug 2026 19:08:54 GMT
ENV GRADLE_VERSION=9.6.1
# Wed, 05 Aug 2026 19:08:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Wed, 05 Aug 2026 19:09:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 05 Aug 2026 19:09:00 GMT
USER gradle
# Wed, 05 Aug 2026 19:09:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 05 Aug 2026 19:09:01 GMT
USER root
```

-	Layers:
	-	`sha256:0b0edb564a4b5f3b8fdb7181835fe0f793a01ee7ce586005b92f344f184fa14b`  
		Last Modified: Wed, 05 Aug 2026 06:12:06 GMT  
		Size: 38.8 MB (38750854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5994065e86c2f7040d102cd0e0b12c05856ec76de764ece67f5b0fca3f9dec9b`  
		Last Modified: Wed, 05 Aug 2026 18:14:37 GMT  
		Size: 27.7 MB (27687549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41577a570ee42fa5bf43cdd768412351e7fb8a70b30a3c1a1f6930a3df69d093`  
		Last Modified: Wed, 05 Aug 2026 18:14:47 GMT  
		Size: 135.9 MB (135912279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5669fb08ce6e64cebe4163330ea6c8140a1ed4b2ee1b0abb01db3602613b2503`  
		Last Modified: Wed, 05 Aug 2026 18:14:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffdd84e57c72f1325e080ce129564ab023d46f7d09e4de85101f2cb8bcb423d0`  
		Last Modified: Wed, 05 Aug 2026 18:14:43 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f46f043857af34568ccaa6b461c96e26a9bc1b24c0abb6e6126e6fb6d20910`  
		Last Modified: Wed, 05 Aug 2026 19:09:27 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05a419b4b2728c1573b67957fccd90e5a104fad144cb2542b00c41bdf9cf484`  
		Last Modified: Wed, 05 Aug 2026 19:09:28 GMT  
		Size: 37.5 MB (37516123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3829614592e496f224c9b74e6779cd3326274a28c00c806556037eb2f67022ed`  
		Last Modified: Wed, 05 Aug 2026 19:09:30 GMT  
		Size: 140.6 MB (140595979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bc512c2284b773d1561f4249d621a01439396b5a91ecd4736153eccb03468f2`  
		Last Modified: Wed, 05 Aug 2026 19:09:27 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:30d003f0268597300676c974d9f3d3db24ae078ceb63ca5830b221ab9603e2ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5441060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d820013e1e4b2c837e26b0c63f801ad178a8200c0d9d12748b43da5a223dd892`

```dockerfile
```

-	Layers:
	-	`sha256:a130d527eff8c15cd739cf10de042a8a7fbf96a9c893bf94f12a6f1bd92187d3`  
		Last Modified: Wed, 05 Aug 2026 19:09:27 GMT  
		Size: 5.4 MB (5417826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21b3c0d6149f2688803aff40f1d428c979968ca524af6abfe77596b2050a262e`  
		Last Modified: Wed, 05 Aug 2026 19:09:27 GMT  
		Size: 23.2 KB (23234 bytes)  
		MIME: application/vnd.in-toto+json
