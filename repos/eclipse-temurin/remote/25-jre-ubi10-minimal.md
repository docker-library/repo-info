## `eclipse-temurin:25-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:98b00567cd604b1ef5446afe8aee92f1c653c8a04f44466300df96efbef10e43
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

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:71ca71e276d25e1c332a2ddffbfbb9d3287e1535758497a0c9b980ca88c18647
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136014059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9042eebddfbddf1be8ecbca1d8ff2a3ea6a3e6cf708e993914cd2b3399086a4c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 18 Nov 2026 11:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:55:37 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:55:38 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 18 Nov 2026 11:55:38 GMT
ENV container oci
# Wed, 18 Nov 2026 11:55:39 GMT
COPY dir:7ce26feac2d51d1ee1fc114e73937c7f0ac821da4c3d39f084cd292137c13099 in /      
# Wed, 18 Nov 2026 11:55:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:55:40 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:55:40 GMT
COPY dir:eda951a047e24779df658738c5b99b9ffae05ea3d040a19e34778b61bcbb88b1 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:55:41 GMT
COPY dir:eda951a047e24779df658738c5b99b9ffae05ea3d040a19e34778b61bcbb88b1 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:55:41 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:54:48Z" "org.opencontainers.image.revision"="abb4a79265edbba658fcae1aeec48135facd6dcb" "build-date"="2026-11-18T11:54:48Z" "architecture"="x86_64" "vcs-ref"="abb4a79265edbba658fcae1aeec48135facd6dcb" "vcs-type"="git" "release"="1795002774"org.opencontainers.image.created=2026-11-18T11:54:48Z,org.opencontainers.image.revision=abb4a79265edbba658fcae1aeec48135facd6dcb
# Fri, 20 Nov 2026 17:40:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:40:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:40:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:40:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 20 Nov 2026 17:40:56 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:41:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64le)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:41:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:41:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:41:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:60a754b40933a6ce48185d0c3dedf5536e7c82bf3efc9ffdc12c68dd300f7a2f`  
		Last Modified: Wed, 18 Nov 2026 16:46:51 GMT  
		Size: 35.0 MB (34995270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263e6a4b807a5614f5ed41a75682f62d3770888de4425cd9679eaaf194afa747`  
		Last Modified: Fri, 20 Nov 2026 17:41:15 GMT  
		Size: 38.0 MB (38036087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891bcd3bac3fee750faefa0fcc199a503403b52ee9a18d3678aac4964561a18b`  
		Last Modified: Fri, 20 Nov 2026 17:41:16 GMT  
		Size: 63.0 MB (62980104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0c50a950bae96c56188ad6b8f5fc6b10a4251ca86edd7c6f3f4d421294c98e`  
		Last Modified: Fri, 20 Nov 2026 17:41:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abeeff1a61c4d490028b61f10df06f7342bd20d067db345df1f289ae473f686c`  
		Last Modified: Fri, 20 Nov 2026 17:41:14 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bdd632c68ebe15a6c9d0bfa48270f199491a791da4a329bc613ee6faf979ad45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3722246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab61bc9ba4157ae626e4f8cbdcb05e582520762d4b255f62975640e06288a423`

```dockerfile
```

-	Layers:
	-	`sha256:7109c0558159aa1aa42e6c40c89ef6ebbc779341f1f3a29fd189ad572e22d557`  
		Last Modified: Fri, 20 Nov 2026 17:41:14 GMT  
		Size: 3.7 MB (3701868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3044aaff88f3d401c808e0a7cae0d786bc63b8b9f6d19554c226a5ce2f08498b`  
		Last Modified: Fri, 20 Nov 2026 17:41:14 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b58dd5bed241d9c6a72db07848be5520b44ad5675f779d69e798f922d322c7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132922969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475bb445098c68041f5b5bb54db07cf3996b3a0bdaa50216d1a44a16f7abe4c3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 18 Nov 2026 11:59:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:59:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 18 Nov 2026 11:59:02 GMT
ENV container oci
# Wed, 18 Nov 2026 11:59:03 GMT
COPY dir:cba0a29178cb01f0e8886e995f006d94e84274213d296eea68a1603a610a2bcd in /      
# Wed, 18 Nov 2026 11:59:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:59:04 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:59:04 GMT
COPY dir:b10dbabee6740c846f8fe8b20f789e990069a84b35afd1d7aa4d17552f9deafa in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:59:04 GMT
COPY dir:b10dbabee6740c846f8fe8b20f789e990069a84b35afd1d7aa4d17552f9deafa in /root/buildinfo/      
# Wed, 18 Nov 2026 11:59:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:58:28Z" "org.opencontainers.image.revision"="abb4a79265edbba658fcae1aeec48135facd6dcb" "build-date"="2026-11-18T11:58:28Z" "architecture"="aarch64" "vcs-ref"="abb4a79265edbba658fcae1aeec48135facd6dcb" "vcs-type"="git" "release"="1795002774"org.opencontainers.image.created=2026-11-18T11:58:28Z,org.opencontainers.image.revision=abb4a79265edbba658fcae1aeec48135facd6dcb
# Fri, 20 Nov 2026 17:40:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:40:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:40:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:40:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 20 Nov 2026 17:40:59 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:41:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64le)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:41:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:41:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:41:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6f85c5180a9a251e7d4c9d164a6aa67da866626553b8733b92ea6191f8d7f9f7`  
		Last Modified: Wed, 18 Nov 2026 16:46:54 GMT  
		Size: 33.1 MB (33105939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ba5a4a4374d95ea750d9c07c0017d9e5d6c5283c20efeb9dcd8734bd41aeeb`  
		Last Modified: Fri, 20 Nov 2026 17:41:19 GMT  
		Size: 38.0 MB (37955453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac030154a4e39799c257d7ef6ccda9347cbd6c714c8d5e2e82852c1814923da`  
		Last Modified: Fri, 20 Nov 2026 17:41:20 GMT  
		Size: 61.9 MB (61858981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921002a2349575e8353ad57045527e8074ce14045f50b7c1b262abe2ba9b26b4`  
		Last Modified: Fri, 20 Nov 2026 17:41:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4249ef497e14a9e735c057b8b5513914262018f05dccaa792e19887b00104cf0`  
		Last Modified: Fri, 20 Nov 2026 17:41:17 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6dfd92a88f3eb452bc63201c01dbfc25ae23c3c8ac170cf2211f180fb50cd579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:940e7c57fbe1ce66b00659e015163d56a0a71f88dd6a8004bb9f62cfc044c07c`

```dockerfile
```

-	Layers:
	-	`sha256:4e2bfd801446e30a26c41b0b7c1385864879cf05c751b6ef32022780452761f9`  
		Last Modified: Fri, 20 Nov 2026 17:41:17 GMT  
		Size: 3.7 MB (3701279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a5b7123f04d30e9ed17c8b1e9299f38b1070cfe418cb475baf80a1646404066`  
		Last Modified: Fri, 20 Nov 2026 17:41:17 GMT  
		Size: 20.5 KB (20481 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:2006c5a1823d594b76c130fcaae27735dad9c478a7707c57069fed193dc152f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139698568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d768d5944cd6a985bdbe2d6d7f014d93c6b6b0f87996561daaa93d9bfe470822`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 18 Nov 2026 11:58:08 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:58:08 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:58:09 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 18 Nov 2026 11:58:09 GMT
ENV container oci
# Wed, 18 Nov 2026 11:58:10 GMT
COPY dir:f517d67fa956d51b18256b59fc2404506d3032ddd73b8afb6ed6d22bc30fa036 in /      
# Wed, 18 Nov 2026 11:58:10 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:58:10 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:58:10 GMT
COPY dir:218b55dcbddf2e2c03f473fb1c2c3d42646b187ef2f63b0a13c96c631dde3b94 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:58:11 GMT
COPY dir:218b55dcbddf2e2c03f473fb1c2c3d42646b187ef2f63b0a13c96c631dde3b94 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:58:11 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:57:47Z" "org.opencontainers.image.revision"="abb4a79265edbba658fcae1aeec48135facd6dcb" "build-date"="2026-11-18T11:57:47Z" "architecture"="ppc64le" "vcs-ref"="abb4a79265edbba658fcae1aeec48135facd6dcb" "vcs-type"="git" "release"="1795002774"org.opencontainers.image.created=2026-11-18T11:57:47Z,org.opencontainers.image.revision=abb4a79265edbba658fcae1aeec48135facd6dcb
# Wed, 18 Nov 2026 22:12:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:12:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:12:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:12:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:12:29 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:44:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64le)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:44:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f904918cf0313089a59a27bf5930acc4143b6ff5ecbcc1cff53fb5bcd94fda2a`  
		Last Modified: Wed, 18 Nov 2026 18:20:27 GMT  
		Size: 39.1 MB (39123752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d027351ac85c2f41ee3134488197fc84214b808c9fb864d377047a7f608964`  
		Last Modified: Wed, 18 Nov 2026 22:13:16 GMT  
		Size: 39.8 MB (39799461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23bfa7062e376ff775ba48fa1307e0a0c2a08667c4e5cfe994bf62c0d115674`  
		Last Modified: Fri, 20 Nov 2026 17:45:22 GMT  
		Size: 60.8 MB (60772757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e215dd0a7b1bafa07d768559bc4ba951bbdebb7708b5b603f1397c293050828c`  
		Last Modified: Fri, 20 Nov 2026 17:45:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4b3d967f5526993baf6f34f6e2da31bf09e5ed01e187732ab550e01c71ad2e`  
		Last Modified: Fri, 20 Nov 2026 17:45:23 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:81bc4c04c221db9518e6c3fcc184e0ce9b6221da9ccef1b6b320805781398181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3709154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b26d75a545e670d73ed5d53b27072123f1eb73e3ef0974c112119fe30fb3b8`

```dockerfile
```

-	Layers:
	-	`sha256:a965ff576f30fc689ff6c3b99615fc627c9f88b9f1cbfb3f17f1620fd477d863`  
		Last Modified: Fri, 20 Nov 2026 17:45:21 GMT  
		Size: 3.7 MB (3688746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fdb24e3095f93beed81a25df47a583e72958047114914e07684e90ca1e8b009`  
		Last Modified: Fri, 20 Nov 2026 17:45:20 GMT  
		Size: 20.4 KB (20408 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:59c41c1dd3b1c5433ea806cd38223945e7326546169c4fa6ccfafe5b6640bd9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133316395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a36790c028b129a6d60598108e6ee8ac1c4cbf5d1dcd4a4f4846dc4555899c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 12:11:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 18 Nov 2026 12:11:36 GMT
ENV container oci
# Wed, 18 Nov 2026 12:11:37 GMT
COPY dir:d262d5a3b64544367945214badb86c52b69073d0cb80a94f7da73df30f084411 in /      
# Wed, 18 Nov 2026 12:11:37 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 12:11:37 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 12:11:38 GMT
COPY dir:8146232ae5a43b0aadadb9473c54a3076874f869cc5690ebdf3d0a26acb55468 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 12:11:38 GMT
COPY dir:8146232ae5a43b0aadadb9473c54a3076874f869cc5690ebdf3d0a26acb55468 in /root/buildinfo/      
# Wed, 18 Nov 2026 12:11:39 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T12:10:23Z" "org.opencontainers.image.revision"="abb4a79265edbba658fcae1aeec48135facd6dcb" "build-date"="2026-11-18T12:10:23Z" "architecture"="s390x" "vcs-ref"="abb4a79265edbba658fcae1aeec48135facd6dcb" "vcs-type"="git" "release"="1795002774"org.opencontainers.image.created=2026-11-18T12:10:23Z,org.opencontainers.image.revision=abb4a79265edbba658fcae1aeec48135facd6dcb
# Wed, 18 Nov 2026 22:49:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:49:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:49:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:49:31 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:49:31 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:44:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64le)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:44:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:471e6d247ece94ad01a550c2a516a9c65a34f8d627869c818f11fced45fe1dcc`  
		Last Modified: Wed, 18 Nov 2026 18:20:18 GMT  
		Size: 34.8 MB (34835957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:824be2a90136cf8653de95d46308f71eabd5dcf22fb6d49149a5bf71e311a5d5`  
		Last Modified: Wed, 18 Nov 2026 22:50:56 GMT  
		Size: 38.4 MB (38407144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5cb9b1b7de5d417450b819e155c61d30e72713b92fad2854a172e7cf8513343`  
		Last Modified: Fri, 20 Nov 2026 17:45:09 GMT  
		Size: 60.1 MB (60070699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e1327a422406803d11c005c58c9c57f8fe821eb7e1fffab36ae837f3be748d`  
		Last Modified: Fri, 20 Nov 2026 17:45:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1245fe5b117c50865a2a67e85b71d87898e977c18c0d60769811a7c4b39db42c`  
		Last Modified: Fri, 20 Nov 2026 17:45:08 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8dd382e11746cee984518675dc58beb249d25677f41d9cdedc0ddeacf3293b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e914bd545e34f87c829e5c68b16edee2cbf67f836958f66bfefc116d0c072891`

```dockerfile
```

-	Layers:
	-	`sha256:cbf12f731491b613efe95e00a24302d6ae9d521eeb17962363443a0c9f935976`  
		Last Modified: Fri, 20 Nov 2026 17:45:08 GMT  
		Size: 3.7 MB (3689991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13d37e4ebfed2317f9d840c4acb15d1c3527e16702c7e50e76ac0cc1c2c68225`  
		Last Modified: Fri, 20 Nov 2026 17:45:08 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json
