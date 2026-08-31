## `eclipse-temurin:17-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:303aa2bdbe72572486b676fcfb9baf1c783eedebc645116468d73ca725ef92d4
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

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d83452d4822fcb3738d5d16dd264aaa06b97c29c5bf548bda5b6139b4e47b47e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.2 MB (214206546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e24cad5a660f6072a589e9f46180b2ddf97d59342f94f8769172bfb4d6f20efa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:15:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:15:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:15:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:15:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:15:43 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Mon, 31 Aug 2026 19:16:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:16:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:16:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:16:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:16:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7749ffa0b19d3e2dd6ac71a50418d3ed281a28d4e763092e59faa84de5d2465e`  
		Last Modified: Mon, 31 Aug 2026 19:15:59 GMT  
		Size: 27.7 MB (27665858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302845f7318c0bbcbb129b509345b672b0da6cafd67c51dc61f1504649500955`  
		Last Modified: Mon, 31 Aug 2026 19:17:11 GMT  
		Size: 145.8 MB (145828511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c04cae8a2ba25374fe2ad164ff9e55c6d3e5e72cd7e4aaea4df8162b0101ce`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c35f2d0c65120255bce696a0d06862c146b6859a6db8047f4ccff6e0886941`  
		Last Modified: Mon, 31 Aug 2026 19:17:08 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5a0ac075094c3e28e42690b85e43532f81cc134307fa5b40e55ec256e746079a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2516866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d11e55cfced98a2f3fe5aaabd6687ebd331f94f1480b7ca0e4f5fec1f325284`

```dockerfile
```

-	Layers:
	-	`sha256:0487d16f0655257ba7d4e974120d27b747d6fb4b30105542af58d6e0afb00c79`  
		Last Modified: Mon, 31 Aug 2026 19:17:08 GMT  
		Size: 2.5 MB (2495722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceb8e670b1d62c1893feac5d660617b86b35ce756c978145153130fc5123a507`  
		Last Modified: Mon, 31 Aug 2026 19:17:08 GMT  
		Size: 21.1 KB (21144 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:86e248f79881faf092e0a03d0fa5be88bd06dad9b7874dcf40ca165c463aafc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211565300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12789c6621799d66d47584cb11443e74f4f607aa79ae8a0d49443d6dc04d20e9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:33:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:33:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:33:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:33:38 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:33:38 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Mon, 31 Aug 2026 19:34:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:34:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:34:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:34:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:34:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:affa1c45452e61f3a935ac889d2269bc26e40adbdb3744de22674ba1ee9cd90c`  
		Last Modified: Mon, 31 Aug 2026 19:33:53 GMT  
		Size: 28.1 MB (28095457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac28365b9ced3fb845542bcb915ee597f171a2edc4b64de331d676e8a63074a`  
		Last Modified: Mon, 31 Aug 2026 19:34:27 GMT  
		Size: 144.7 MB (144651247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d595de462b7453caa7de55a52cfff73994e464ce64d46c5d9e65353f73bd026`  
		Last Modified: Mon, 31 Aug 2026 19:34:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c832cbaa40df9d0190d3a0c2e9602035de6c3458e642e58caa1f43d69e1f24c`  
		Last Modified: Mon, 31 Aug 2026 19:34:24 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1149eb44cf94e2e9bc0bde97e2f5b61b45c2c6fdbe754887a6d894a1b491e431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2514573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f07aa192da1fcb4417adbee9be05b730597b616f2dd3c734daea617e2b71d891`

```dockerfile
```

-	Layers:
	-	`sha256:b0af8e500658f1c74caa4dcc41a53542b8713deb1b214220ebd9a817a9e72e98`  
		Last Modified: Mon, 31 Aug 2026 19:34:24 GMT  
		Size: 2.5 MB (2493314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3653e666ae946a48c420ef3132887a1be57fd5cd7aa0b2445815f3ea26176fda`  
		Last Modified: Mon, 31 Aug 2026 19:34:23 GMT  
		Size: 21.3 KB (21259 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:83a4b1d36efe2771ff011320e6f3a876eddeea6d8e71398f625de85b70c9202f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.9 MB (220895420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8375eed7a516dc1c7784c5c44d3dd56017291fc46cdb1be41c5e33c58ef5856`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:17 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:741537afbb3785105e7b2ca806b19e20cea721418a8279ff4ede1766d643f701 in /      
# Mon, 31 Aug 2026 08:55:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:18 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:68059ba414ddd7df0a40efbe3877fcfcb91455dbd0f37dcdb8e9fe364568bcdf in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:68059ba414ddd7df0a40efbe3877fcfcb91455dbd0f37dcdb8e9fe364568bcdf in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:19 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:01Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:01Z" "architecture"="ppc64le" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:01Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:56:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:56:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:56:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:56:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:56:49 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Mon, 31 Aug 2026 19:59:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:59:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:59:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:59:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:59:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2f251b8d3e076987b58b62b3eda665de6816a418e936600327231b1852d5f30a`  
		Last Modified: Mon, 31 Aug 2026 12:14:10 GMT  
		Size: 45.1 MB (45126014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23ae3964c903e609b2272363bf6507736070cc9dc57638f1ea8927d70943cee`  
		Last Modified: Mon, 31 Aug 2026 19:57:23 GMT  
		Size: 30.1 MB (30075024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af059a8474f24e56ac829205942b5f640bc9f91400ffbb10c1f16006a570ee79`  
		Last Modified: Mon, 31 Aug 2026 20:00:30 GMT  
		Size: 145.7 MB (145691784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7504ea647a38a8bc5f1347f219add42330b10f92bf1bf203074b94a2815001`  
		Last Modified: Mon, 31 Aug 2026 20:00:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e0bf412f11220a0980b26a1bd523eb7fb83044608c821ff12d2bdd5c74c346`  
		Last Modified: Mon, 31 Aug 2026 20:00:26 GMT  
		Size: 2.5 KB (2468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9b7f5370efba7255a2dbce48e6176d22244dad12a1be833b45f7302daadcc078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2513254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5746d84739240c956deb4ae6b3c961e8657e62023d0fa9a947f49f594be6dc5`

```dockerfile
```

-	Layers:
	-	`sha256:1f4d8cc11f81f50d5320a822d411d875b1d01df0f959cf67368adf39bcc357ad`  
		Last Modified: Mon, 31 Aug 2026 20:00:26 GMT  
		Size: 2.5 MB (2492074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7903b4713d0cd6de950812cc449b2ee91cc641769f89768271584e84035cc5e2`  
		Last Modified: Mon, 31 Aug 2026 20:00:26 GMT  
		Size: 21.2 KB (21180 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:67de1c648756a8d5f072f718cde771e4bbe7a9659debeb9ac5939fff8318a3d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202353158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d99221b209d0007ade0b53b56d276d7185a40d49202664a21e8892c26606187c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:57:56 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:57:56 GMT
ENV container oci
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:297a645d2039f9d861170b120c1e35595311fb8e483281efe2ca89505fd40800 in /      
# Mon, 31 Aug 2026 08:57:57 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:57:57 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:087826d4c6d83860f2036bd66ca8f0f80382cdb8e2cd82a570728bd57e6592b0 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:57:57 GMT
COPY dir:087826d4c6d83860f2036bd66ca8f0f80382cdb8e2cd82a570728bd57e6592b0 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:57:57 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:57:16Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:57:16Z" "architecture"="s390x" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:57:16Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:02:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:02:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:02:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:02:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:02:43 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Mon, 31 Aug 2026 19:03:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:03:11 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:03:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:03:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:03:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:165a6faa80bf6d6f276863c223e4056437c02bb8c312f23f942108f889803590`  
		Last Modified: Mon, 31 Aug 2026 12:14:05 GMT  
		Size: 38.8 MB (38787783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b8579b8b5396cf950033a42efa18b67d910cdcf9c4757de03b8d5141eaa288`  
		Last Modified: Mon, 31 Aug 2026 19:03:03 GMT  
		Size: 27.7 MB (27686752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e034a544358d6a7afd418ecd989910ad5ca6d9c8e9c726031008a4091a35b23f`  
		Last Modified: Mon, 31 Aug 2026 19:03:36 GMT  
		Size: 135.9 MB (135876022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236734e177e8b459c6be7b5dd89ffe079e08a9f93f1b980671ce86cdde03c68d`  
		Last Modified: Mon, 31 Aug 2026 19:03:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ae8c85d9fdc7ab956b2962b4bad094e182eaadbc4f398f54aa76bd3b1ddc97`  
		Last Modified: Mon, 31 Aug 2026 19:03:34 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fba3eb89303235872a3f8442c2a55718e75823a4f2cf9240bff2d6bb5ed835f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2502480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9eb59eb3b8ddb5fe12ea8b4d655b9453b3d03b1992877df8d3d606ad65d3585`

```dockerfile
```

-	Layers:
	-	`sha256:46484e9c7fc1ff82e8d43da0d00b095eb468ac5d982bd9948a931b94c3c7dee4`  
		Last Modified: Mon, 31 Aug 2026 19:03:34 GMT  
		Size: 2.5 MB (2481336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0cc952207e709d23478c3ecc8e993d0be32b1458fd6d758b3b79c4c3297a82e`  
		Last Modified: Mon, 31 Aug 2026 19:03:34 GMT  
		Size: 21.1 KB (21144 bytes)  
		MIME: application/vnd.in-toto+json
