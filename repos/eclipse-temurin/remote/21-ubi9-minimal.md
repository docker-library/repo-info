## `eclipse-temurin:21-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:c2d3198d8986cb534001a1c8cbb67c3c84b71cda41cc7a62c67f0b398fdfbabb
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

### `eclipse-temurin:21-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e7178b4ec7349e92a0c040a64aee9438e39efc185d151c7e5e70337d360be34d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219654186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9e4193e3d841059c52226962cb74d362a29ea318081462725eef26b4b8bbba`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:05:31 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:05:31 GMT
ENV container oci
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1065617e8ffc1bf546938007c42ca6d2543da069b404ba7a3172b874660980aa in /      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:05:32 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:05:32 GMT
COPY dir:1ab382ed5e5527a5acf26f9606924257387798102c175f648912db04e0637441 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:05:33 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:05:11Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:05:11Z" "architecture"="x86_64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:05:11Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:35:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:35:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:35:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:35:59 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:37:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:37:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:37:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:37:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:37:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5c288249e0853bbff10ef3df8b2344c0845a4af1bfce6e95f57619aa58ba1f`  
		Last Modified: Wed, 11 Nov 2026 22:36:24 GMT  
		Size: 20.6 MB (20551654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e7a5aa3113ce9e79e69a43f5c60527738b18364adf67aec2c8370f94f7ad73`  
		Last Modified: Wed, 11 Nov 2026 22:37:26 GMT  
		Size: 158.4 MB (158415854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee088b374d830a73a7dc42205b9d76bc9965abbb0af0b8bb0ef1ae368954bad`  
		Last Modified: Wed, 11 Nov 2026 22:37:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc9b80497b12356bf2e487392d940f19ced2eb4a389dc4c6de77fa886c2aa0d`  
		Last Modified: Wed, 11 Nov 2026 22:37:18 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:971601a8899b4c01ef7a385e384f2212dc7d7b717e9f1e405eeed4bdb127c7c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2885633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ade3f59371b0389b61fca0516bb56e81eb4a543ce99f1e1cc9f479f047a804`

```dockerfile
```

-	Layers:
	-	`sha256:89092322ae0a224a74d324f2123bcf38b4ba5463c4a7bb205f11c7550c8567b2`  
		Last Modified: Wed, 11 Nov 2026 22:37:19 GMT  
		Size: 2.9 MB (2864490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d665ccafd4dc2b3bc168aab7fd143da280e50547a42e40011a563cf0bf6517b`  
		Last Modified: Wed, 11 Nov 2026 22:37:19 GMT  
		Size: 21.1 KB (21143 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:adc55412358c5f8cf54949141363f9dfaff6f22c6c6f364072ead3bcf56b6b3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215831313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4e653c2950c33834cbbfdb656b541ae84f8ad655db1a52d629124c7b471611`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:08:32 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:08:32 GMT
ENV container oci
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:514821c1507761c7c104b4178930c927c06b94af3fc77862fad4455413d5880e in /      
# Wed, 04 Nov 2026 22:08:34 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:08:34 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:08:34 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
COPY dir:20e16dd534db21c03fd41a8260fa88cb0c28dcaa178172c5bc5b5c7a2dea8c79 in /root/buildinfo/      
# Wed, 04 Nov 2026 22:08:35 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:08:02Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:08:02Z" "architecture"="aarch64" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:08:02Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:07:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:07:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:07:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:07:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:07:37 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:08:08 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:08:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:08:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:08:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:08:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5fc769e2f887acf805e78ae3f60bd0daaa64cc9fe53895618bf726671fbf556`  
		Last Modified: Wed, 11 Nov 2026 22:07:52 GMT  
		Size: 20.4 MB (20362224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67a546362d3a5ef3f8e77527a6cd597954e75d67faad36e033cbc8bccef8b70`  
		Last Modified: Wed, 11 Nov 2026 22:08:30 GMT  
		Size: 156.7 MB (156696977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6543625b04f483fe8dca40be82e7280475c4c4795612986ced437ace29a7ff`  
		Last Modified: Wed, 11 Nov 2026 22:08:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa97644e61865ae83ef17c068a079ed664566774a5fb01130b549c90400cd3a`  
		Last Modified: Wed, 11 Nov 2026 22:08:26 GMT  
		Size: 2.5 KB (2467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c0d0d27d3d5bc11fcf60f8359da6fd29cb44528bb5738e3910c2f533976e3cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2884568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78cf836a2c73770eed5954b63df96fb32dc6040f841a56c7799f3069f207024b`

```dockerfile
```

-	Layers:
	-	`sha256:84c5dd4eda9ec730d3bac2c9fdc292f0a32a4640a188cbb7ac67f38bda3bd2ff`  
		Last Modified: Wed, 11 Nov 2026 22:08:27 GMT  
		Size: 2.9 MB (2863308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53cab6f6d078ed4ce5f8817f3140e5ca2a003499b08be695cf697b8e9776fbf9`  
		Last Modified: Wed, 11 Nov 2026 22:08:26 GMT  
		Size: 21.3 KB (21260 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:42bcdfb44906daffd8dffa88e6054b585b621c23da45c0b9eded3ca0e59fdbe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.6 MB (232641590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389823282cff98eddbeff703955e089138d201d044691a6b55c7976f25afd3fe`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:41 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:41 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:ae933929e423fdc96e35a47a9102721b0c39f8055e05b214b559d52ceb06cfa1 in /      
# Mon, 09 Nov 2026 01:08:42 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:42 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:450db05b77204e5448b53b7fab125a177b2d34720183cfd97ef6e5309e56d1c3 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:42 GMT
COPY dir:450db05b77204e5448b53b7fab125a177b2d34720183cfd97ef6e5309e56d1c3 in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:43 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:08:19Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:08:19Z" "architecture"="ppc64le" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:08:19Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 23:53:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 23:53:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 23:53:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 23:53:15 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 23:53:15 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 00:00:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 00:00:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 00:00:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 00:00:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 00:00:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:dd9d34dc080ec17d2c6dc06a436bf23e89831b2d08e2f855bd8a7bd52c0adc54`  
		Last Modified: Mon, 09 Nov 2026 06:13:26 GMT  
		Size: 45.0 MB (45004833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a83c89023ce7d1ea493029ab89f5d86cecc36f3f41ceaf2b6333c7a75e416a`  
		Last Modified: Tue, 10 Nov 2026 23:54:20 GMT  
		Size: 30.1 MB (30055026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a916746735acb37b677143e35f0cc3e88a29401fbf3b911633eac6c75d075704`  
		Last Modified: Wed, 11 Nov 2026 00:01:27 GMT  
		Size: 157.6 MB (157579130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ac24f828378c1769a06c1e4c67a5cc1b84b99178d7b9f60e7475dfe88ec9b1`  
		Last Modified: Wed, 11 Nov 2026 00:01:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f38c630598cc96179be744dc8f23d8f2328f29819538ecc64d6d3b4b9cb5aa`  
		Last Modified: Wed, 11 Nov 2026 00:01:24 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5a24d7a53edeb099615ecd529ab8ac0f6b0ed81b62b2528a59d7404c10238610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2495389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c042158f6d22f3bad1a1c69343e07ab642973c534a0687527079dfc620a8546`

```dockerfile
```

-	Layers:
	-	`sha256:5584e5ec1332d5c0d4d8050a332a533c84cc2365626e97e06a6dbc4dde4f8436`  
		Last Modified: Wed, 11 Nov 2026 00:01:24 GMT  
		Size: 2.5 MB (2474209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb4e3e17e5a9b94f423b8299eeeea07d173170319fa287fddda37d08f5a87e49`  
		Last Modified: Wed, 11 Nov 2026 00:01:24 GMT  
		Size: 21.2 KB (21180 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:5db8040793a5f4427ab38b014a0633c33f5db0bfca3a2ceba2c43da3b39711d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205554508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28a130304fc8437e7be92fc626335b9df216227284e15e6a4a2ebdcadcad92b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 04 Nov 2026 22:10:12 GMT
LABEL compose-id="RHEL-9.9.0-updates-20261104.1"
# Wed, 04 Nov 2026 22:10:13 GMT
ENV container oci
# Wed, 04 Nov 2026 22:10:13 GMT
COPY dir:1183716bdffd13b1517011a6f8a05bdffceced85c430a0e4def03677a2839bb4 in /      
# Wed, 04 Nov 2026 22:10:14 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 22:10:14 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:10:14 GMT
COPY dir:b73a23d4183135e6742c8afc1eb83d5e3f23cc19c4319b58e0f6782e589cc42e in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 22:10:14 GMT
COPY dir:b73a23d4183135e6742c8afc1eb83d5e3f23cc19c4319b58e0f6782e589cc42e in /root/buildinfo/      
# Wed, 04 Nov 2026 22:10:15 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T22:09:15Z" "org.opencontainers.image.revision"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "build-date"="2026-11-04T22:09:15Z" "architecture"="s390x" "vcs-ref"="3592a7d8ff6441cbbd6d757af862d711d3e1dc3a" "vcs-type"="git" "release"="1793829856"org.opencontainers.image.created=2026-11-04T22:09:15Z,org.opencontainers.image.revision=3592a7d8ff6441cbbd6d757af862d711d3e1dc3a
# Wed, 11 Nov 2026 22:06:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:06:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:06:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:06:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:06:04 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 22:08:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:08:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:08:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:08:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:08:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:130fc913343aa6c3818a044418b864b2a5ccbca46e5bf29661c9cedc39b72c41`  
		Last Modified: Wed, 11 Nov 2026 06:15:50 GMT  
		Size: 38.7 MB (38690230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88351d0f049c3f9ad5bf31ac67162f302fcc7633c13bbd9cf0be770e62e357df`  
		Last Modified: Wed, 11 Nov 2026 22:06:43 GMT  
		Size: 20.0 MB (19979165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6df844f34b59e48d78cd55a4364cad4fad7998a8c737aa928e9d72f96d7250`  
		Last Modified: Wed, 11 Nov 2026 22:09:31 GMT  
		Size: 146.9 MB (146882512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbbcac7a8eec43965cf46751dc72364a5379c3eabd1ee65a14de3da1b23b0d98`  
		Last Modified: Wed, 11 Nov 2026 22:09:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757ee8f46c2c76a9c14f98758674b4775b5264585e63ff9d44830b0b301304be`  
		Last Modified: Wed, 11 Nov 2026 22:09:10 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5846bc9739ab61afa05a931e06e4dbe330b83f52340d3bcca83a4c92ed1456be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2881868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c617b66178827cff0f5038c38b4f7ca325999772d2960e212fd3c6c30fef25c`

```dockerfile
```

-	Layers:
	-	`sha256:97eba7e2224c0330653c6825d18e34ef4853b8cd29ceccfbe6728ed0e72289f0`  
		Last Modified: Wed, 11 Nov 2026 22:09:26 GMT  
		Size: 2.9 MB (2860724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a734007bb8cb420bd33b37be5e467af050cf1035313281de3af9c6832c0912`  
		Last Modified: Wed, 11 Nov 2026 22:09:26 GMT  
		Size: 21.1 KB (21144 bytes)  
		MIME: application/vnd.in-toto+json
