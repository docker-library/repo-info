## `eclipse-temurin:8u512-b09-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:313a5f1a507f2db85a3fb60e26ed32e52806fadf69702550e08bc159b4bdd2a4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u512-b09-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4beb5fd097088717d0e6025415644f7851f39e9d65586667bcfa3c2f6f62a6fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116446774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb811a0da2fa47010eb476fa1a3e31ce103099cd4ea125c5c035d7fcb5143449`
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
# Wed, 11 Nov 2026 22:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:35:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:35:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:35:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:35:59 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:58:54 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 11 Nov 2026 22:58:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:58:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:58:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:28ef7da311d21b17d83cb3ebe1c7ddf3916b5397c8df943f9c89a9749b397529`  
		Last Modified: Wed, 11 Nov 2026 22:59:07 GMT  
		Size: 55.2 MB (55208420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea814657946f61354aa3a22a4b8e12f2b602853b7c5947035b38062e80020139`  
		Last Modified: Wed, 11 Nov 2026 22:59:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfcbf3400525997aaed3f77a57cd80c159ef646efa1752a60e4cac71537b24ad`  
		Last Modified: Wed, 11 Nov 2026 22:59:06 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8f132bbec9a0b1b842f3595421011c65c3f795793eebee4505a91b3e29d26a71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3002875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e26c25ddf3450339447cba7bb22d356ca8165dc3e65728947c0a44f696788a8`

```dockerfile
```

-	Layers:
	-	`sha256:04efd4a9770adc5ec343d5801687dc53b0070deb58d4047ce942177aabe82eda`  
		Last Modified: Wed, 11 Nov 2026 22:59:06 GMT  
		Size: 3.0 MB (2983002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:765b56f054181869ff8dcf30c527d3b7e7af26aba0293fff6043b0c43d9adca9`  
		Last Modified: Wed, 11 Nov 2026 22:59:06 GMT  
		Size: 19.9 KB (19873 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u512-b09-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e9b19ed95652addabb2a59ada3d116fee1cd173476d17aff5cf2b37e66b1e8ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113405099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eca703486dd0ae2dbf3ae503418ad835a0640fe0939ec0f6d01fdac4fb09a48`
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
# Wed, 11 Nov 2026 22:41:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:41:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:41:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:41:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:41:36 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:41:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 11 Nov 2026 22:41:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:41:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:41:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3396fd427adb60a3c75b722f66c60c1f0be0c52e7bb21dee129d4022fad5ed5`  
		Last Modified: Wed, 11 Nov 2026 22:41:53 GMT  
		Size: 20.4 MB (20362083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f430904c2981420f1661256075d5f3582af9e29886c7466d173626abbe462fe8`  
		Last Modified: Wed, 11 Nov 2026 22:41:54 GMT  
		Size: 54.3 MB (54270879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788a43c53c49d5c9fbd1fb89262168d3d71c40828fa63b3d91c85036fb582214`  
		Last Modified: Wed, 11 Nov 2026 22:41:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5168b41366e49ec7f5a83db0eea7ac63f4febf6b0cc63d02e17de53f3b4f0a44`  
		Last Modified: Wed, 11 Nov 2026 22:41:52 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c374fdc285f1dc114489fda5914bfa9351289b42bc54621961c4eae9e5b84fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3002508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d26134def197ff6112afcf1863a2eacc0af8c7529bb4417d4a22e7297d113a7`

```dockerfile
```

-	Layers:
	-	`sha256:b8b9df96d62d38e457efbad530526e535153e872e5997526932df9be4a27cee7`  
		Last Modified: Wed, 11 Nov 2026 22:41:52 GMT  
		Size: 3.0 MB (2982520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:140ed60fcb351178d819b8365ff30a551d817c28c92cb65d53816e0c9a47acf1`  
		Last Modified: Wed, 11 Nov 2026 22:41:52 GMT  
		Size: 20.0 KB (19988 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u512-b09-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:004c6847204ccaba93071bf92edd43ce174152c75d1efdf555ff8a5d0dbe72f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127752157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fda2153e30fcaa5ffb7e7806bb4772ff7458b702b4e6f0f2c31d735027ac53`
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
ENV JAVA_VERSION=jdk8u512-b09
# Tue, 10 Nov 2026 23:53:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 10 Nov 2026 23:53:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:53:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:53:27 GMT
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
	-	`sha256:1833cfa78202cc383410e09b58319561ed901c560a2dab7a688588229802275e`  
		Last Modified: Tue, 10 Nov 2026 23:54:21 GMT  
		Size: 52.7 MB (52689679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc68cb8798cf8be6db5690bc8270c492940960f5e6165ff8e38d4c717848f3ae`  
		Last Modified: Tue, 10 Nov 2026 23:54:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563e5df2368c3e00986a27642d10694c565b187b3af878209f00df72e55ff5fc`  
		Last Modified: Tue, 10 Nov 2026 23:54:19 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cb56517186877605003e5c05231fad7ac1db9bc2f0e3f296d3a4801b68ddf8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2614471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e2165506dc6b10e8cf57128704674e4b03995f4a4d14501baed0835d3b32095`

```dockerfile
```

-	Layers:
	-	`sha256:e855eb8fd8d55f0c83bf08b89ef480824b173172b23370d8f81ba260d47eee64`  
		Last Modified: Tue, 10 Nov 2026 23:54:18 GMT  
		Size: 2.6 MB (2594562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a536c1e31ce7a61ca406bfb408fc6ece3e60a60b92108ed6c6529955c7e4db7c`  
		Last Modified: Tue, 10 Nov 2026 23:54:18 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
