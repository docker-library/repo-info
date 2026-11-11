## `eclipse-temurin:8u512-b09-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:d5761aa30616868fdc35eafb7679b7741f64a1ea64125a6d44cfae422876acb9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u512-b09-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:20426fb846f1c06a6996659b6555f285c2d43795c2090d9c02a6aa15455659c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103586827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793995fcf697bd73e4a6a3901d310d1269ae991806359cbaa8eed60579aba3ed`
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
# Wed, 11 Nov 2026 22:58:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:58:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:58:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:58:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:58:56 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:58:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:58:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:58:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:58:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d17fc3a27a551e8e18348f89a75752fab8f83ab83c8dd4d22bcf3418f9e6a06a`  
		Last Modified: Wed, 11 Nov 2026 05:24:43 GMT  
		Size: 40.7 MB (40684080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697f62c8612e771428614e9585b286f2883ff9fad946bfc5e987a0a9ca2a9d31`  
		Last Modified: Wed, 11 Nov 2026 22:59:09 GMT  
		Size: 20.6 MB (20551698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52db48e61b49c229c1dd952fea8b641450dfe6a348c816957901c063eefb9049`  
		Last Modified: Wed, 11 Nov 2026 22:59:10 GMT  
		Size: 42.3 MB (42348450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d93bfe602bc0b4e2523555474d88e1c2c55eb24008707bf3e39dd1a033a6e6`  
		Last Modified: Wed, 11 Nov 2026 22:59:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfeb7aae9829d4bd13ca148534815175273b110f14373408d41edf99ef7ec369`  
		Last Modified: Wed, 11 Nov 2026 22:59:08 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9f5d4afbce52f46fc6f5e16259ae35ffbecfae29a8397b55c697e4cd16ff2e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2826362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051705f860224a7edd44f0f431bcc8db40e32e03f997a952efe33e512b4210aa`

```dockerfile
```

-	Layers:
	-	`sha256:4b846e87d35ebcfdbfc555f3e6d748e3ded5d596798413b72b7cc2b1778cb9a6`  
		Last Modified: Wed, 11 Nov 2026 22:59:08 GMT  
		Size: 2.8 MB (2807016 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49dff4f29d04c29cedc9e5104e0a9456944c6acfa651669bd748b419614bff21`  
		Last Modified: Wed, 11 Nov 2026 22:59:08 GMT  
		Size: 19.3 KB (19346 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u512-b09-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:43c835c307bfab2a39d661a5c8a2b1d3e7b7453370f590611300da4b5363f138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100443216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d769c8550281932a4f6b20adebbdf4e2d2bcdc2aef14284d376b069559273d3e`
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
# Wed, 11 Nov 2026 22:07:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:07:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:07:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:07:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:07:18 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:07:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:07:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:07:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:07:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d5ceb6f197425acf5c32ac1cedc02e2f97c8b1b35cb2e31fb4bec7c6399a2811`  
		Last Modified: Wed, 11 Nov 2026 05:24:42 GMT  
		Size: 38.8 MB (38769518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1d9059fdb547e425a59047feeef7ab314d837b9d6ff93524c8e8bcd662fdd7`  
		Last Modified: Wed, 11 Nov 2026 22:07:33 GMT  
		Size: 20.4 MB (20361955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef0c1d9fc92f8c01ab67f1586f6c3ae8306938a00c97f9def5d409daa89c2eed`  
		Last Modified: Wed, 11 Nov 2026 22:07:34 GMT  
		Size: 41.3 MB (41309143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76e98a2553f4c8331c7f5edd9abf1ab572013e6d8ba61cde35af7c9a6e997c7`  
		Last Modified: Wed, 11 Nov 2026 22:07:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc347f4a20680601c5c6c54c0fa9f3a23aa6d74995f72b4c157691c879764130`  
		Last Modified: Wed, 11 Nov 2026 22:07:32 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:702edbac77217fe139477bbd5cd147f6f1371ddc646a3cb11959e32f493f4e2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2825965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072b3c2a2bc3c87965c5bf4d779b69359c5a4d45165eb8a207a11a1feadeb696`

```dockerfile
```

-	Layers:
	-	`sha256:c338f7cb32ba6988352c43fb3f9fb1b1ab61f5cb4f817df2ea547d209f5829ab`  
		Last Modified: Wed, 11 Nov 2026 22:07:32 GMT  
		Size: 2.8 MB (2806514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18efe2cbf3b7f059a4d2c32b9c513f0aec98f20837b0e4b31238909e2be3a75a`  
		Last Modified: Wed, 11 Nov 2026 22:07:32 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u512-b09-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:87ccb2c558e06631b88c1225d91b6328a44c2d19f18df1c75e59b5f88832eee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116822814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7a0b5a4d18fb1e410c09f886b158dedfc42215c1b760b9fe5a5d6e37c58285`
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
# Tue, 10 Nov 2026 23:55:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 23:55:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:55:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:55:25 GMT
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
	-	`sha256:287d4afae6f2c053b609bb5257f6331a3be4d5c742d9a85848f0e54d0a74b6ba`  
		Last Modified: Tue, 10 Nov 2026 23:55:50 GMT  
		Size: 41.8 MB (41760356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21780e94ae65678d35033d8a4e8869f5a0f3aee46f6d80e4ea5b658c96518e5a`  
		Last Modified: Tue, 10 Nov 2026 23:55:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5af3b4034931e16b9a1ae0b82b42a8149c06d7d6fa599de88ad48ffb81fd048`  
		Last Modified: Tue, 10 Nov 2026 23:55:49 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u512-b09-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5072748cc292283152820873f132c8a671cb709d361900b73cac0a119d52a4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2439963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643d8366ccbbe9c443d10f41625afaad4d1cc80069c4becb92e0a9513d42b46e`

```dockerfile
```

-	Layers:
	-	`sha256:c6d8309f352a8b3399d511ca1ed94639a65a33e80558af3aaea29260d8b980fb`  
		Last Modified: Tue, 10 Nov 2026 23:55:49 GMT  
		Size: 2.4 MB (2420586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c99e819dae6a37ff3342f9e9693d36f1849903765a511e3b35ac2391331eab12`  
		Last Modified: Tue, 10 Nov 2026 23:55:49 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
