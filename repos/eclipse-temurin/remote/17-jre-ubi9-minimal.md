## `eclipse-temurin:17-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:a6507da01ac4e0ecaad970e60b8ff73ef9f98d906a73048413da17969c13f291
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

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:94f83efadea2301c24340abbcea3a34de4e8e390d622a60a2a8dd82e4bce8e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108852906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b600e5c4bc8e0b636dc8a11306e6e669f6dbe43b0b1180e9a2a73795f7917aef`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Wed, 11 Nov 2026 22:35:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:35:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:35:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:35:33 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:35:33 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:36:36 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:36:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:36:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:36:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef104a4643f915ec20a0848d2113db904106ef25aa33bcca25d150de08a2158a`  
		Last Modified: Wed, 11 Nov 2026 22:35:48 GMT  
		Size: 20.6 MB (20551677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3896e33315945d9810e55faeed1e2a465c3651b3765dd1f8d119ed45c59163`  
		Last Modified: Wed, 11 Nov 2026 22:36:48 GMT  
		Size: 47.6 MB (47614551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca85d64f56e7a9b81c81f509d86718640d4ff38d7f6151baf841de82ae8aeaca`  
		Last Modified: Wed, 11 Nov 2026 22:36:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27f8f1e756a3e4898309e7ed330a2ad64faf400eb1912560d79831a2b6b0d41`  
		Last Modified: Wed, 11 Nov 2026 22:36:47 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:60a1e36fe1ec29d2af56346f57496fbdac0bbc6b5a33d96355922568993b81f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2798343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ded87f9f241fe678dbef9e5aac24815b5252f9d59b9c4964f816dec782394c`

```dockerfile
```

-	Layers:
	-	`sha256:90275e5835ba24560d662e895d2fc1e1d9daa270fb32b7402b3072ab747a18e2`  
		Last Modified: Wed, 11 Nov 2026 22:36:47 GMT  
		Size: 2.8 MB (2778157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfa624077f183c10c1dd5430a05abc9e9d6e245287ff6534c189c8181961ed5b`  
		Last Modified: Wed, 11 Nov 2026 22:36:47 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1e7a51dbb9103e6acefad03ea1b8292b33966dfffea6e2ae19994cedc5ed83e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.3 MB (106253512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334c7320de6298b4465fbe9459ba1d3e014b7d409f642e0e3a73f3dae204bcc8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Wed, 11 Nov 2026 22:06:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:06:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:06:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:06:58 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:06:58 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:41:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:41:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:41:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:41:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e41210ee2d92c8288b3af7bc522f8245ee748a93af94d0fa422cabe93a5a9630`  
		Last Modified: Wed, 11 Nov 2026 22:07:26 GMT  
		Size: 20.4 MB (20361710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5999282ded13b5d8b309af7ccf8023417381b12ec6c04fa61dfb1a2f28eee7f7`  
		Last Modified: Wed, 11 Nov 2026 22:41:14 GMT  
		Size: 47.1 MB (47119687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7adebe4aae142e1399773e5875138293d6412807f21059e6a386b701fbfbee86`  
		Last Modified: Wed, 11 Nov 2026 22:41:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674df1ad694a1c14b0d220a95f24c01f1267a08c1bc7d2f99e401accc9e9c323`  
		Last Modified: Wed, 11 Nov 2026 22:41:12 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4b918338d20e42889e376cb3e383009da1cd2a0a7a857ef948116a4c018ff907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2797253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129679e25bfa6b2a5dc2dd4f48170f47077428106f932323e629f72f70c5b8d5`

```dockerfile
```

-	Layers:
	-	`sha256:32f6ca1b41e171f5cc233133f568a757bfe063b96f2214ec32cdd44d5574059c`  
		Last Modified: Wed, 11 Nov 2026 22:41:13 GMT  
		Size: 2.8 MB (2776963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaa9bad78c6c70b028997d5a2c963f5b81a503b2a8b965dc538e5231ab24fb02`  
		Last Modified: Wed, 11 Nov 2026 22:41:12 GMT  
		Size: 20.3 KB (20290 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:02982c1076e2c668728637a7a68dfe5b8bf614e9655b99678aa89917d20fe28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122057012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c400cfde4d2be6c9aa86b87feea238036cb8e2f437d07d54e8e482414ba0345`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 23:59:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 23:59:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:59:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:59:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:23b53bf65d2c15886b8cdd1f82223853a189d3945221679421d7825b206b1ba0`  
		Last Modified: Tue, 10 Nov 2026 23:59:55 GMT  
		Size: 47.0 MB (46994554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49753c25f9d64d2fe9e4c46d1d61b430574b052a082ee8f533514c7986275662`  
		Last Modified: Tue, 10 Nov 2026 23:59:53 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e1580bb041d06b4cc49cc9c5c168ea2592b09da6bb6e6bf551513f227c51e4`  
		Last Modified: Tue, 10 Nov 2026 23:59:54 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cbd08b20f93ab54a3aeb88fe621da443bd1c2f2fa08170a2bb97c9a76166d757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2410005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a7e5d33a3bb7ea64c8055d8ce5647a3837ceea13e3047b587b5f7d3c691951`

```dockerfile
```

-	Layers:
	-	`sha256:d489f801888e47ddc7461ba48209c87837a820fbbc726b8b178fb7c3773fc090`  
		Last Modified: Tue, 10 Nov 2026 23:59:54 GMT  
		Size: 2.4 MB (2389789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2502ecc5f815ea48009053db4446a18fc1c7e983495b5169cdf7a4fcc6820ffd`  
		Last Modified: Tue, 10 Nov 2026 23:59:53 GMT  
		Size: 20.2 KB (20216 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:bcdaa0832d3c5e0c86bbb9e12de0a6ad4b2679004cad66f438db5f1aa5cb28ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102892636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7207a42554416987dc8349ce8e402936ee8d3615fa132cfbfce7ebbe1f43b2e5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 22:07:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:07:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:07:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:07:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:0337f885cfcc0ac0c700afd9aae948d69b4548ac525ab8fe4f4bb79236399654`  
		Last Modified: Wed, 11 Nov 2026 22:07:59 GMT  
		Size: 44.2 MB (44220642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7053a2b166df9e088c7afc2514d5bd9199e770ce510e8dff14587e756160eb06`  
		Last Modified: Wed, 11 Nov 2026 22:07:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3459e8420b4c94634eed968b5739a446007bf3ac7deaaf6c35d61bfd90a96233`  
		Last Modified: Wed, 11 Nov 2026 22:07:57 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:89aa917ac7f59e46931d2441cbb830cad66092736abd4f7dc4922e17f2279c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2798977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26769ff0e8ee52c34aba8958d719631c2677e2197789838272ae908fc5a9020d`

```dockerfile
```

-	Layers:
	-	`sha256:c434c5f503263f0366bed1ca6d8a96c1b76467aa71e31b3c433d02e3cae9c714`  
		Last Modified: Wed, 11 Nov 2026 22:07:57 GMT  
		Size: 2.8 MB (2778791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c667df2e7d18cd7b71eea63fa8f1d1c5d5529462cbce24ca11da114851f278e`  
		Last Modified: Wed, 11 Nov 2026 22:07:57 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json
