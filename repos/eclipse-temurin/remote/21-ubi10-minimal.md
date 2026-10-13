## `eclipse-temurin:21-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:cc0a73c01a4b6829240512d86c7d466d3ba59521aa42823453882efe4917e5d4
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

### `eclipse-temurin:21-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:92fdd7a3b7525af625232527094c379ff20406a82e9534a0c29c803e035331b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (230963080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a34d6d42cf0a38d98338a44d532dbb0f343c980d32880270a8c105bb71e3d4b1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Oct 2026 11:36:12 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:36:13 GMT
ENV container oci
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:fe09ff3a49379305e1cb0e89f971424ce678aa73614343ecd1a31bb5cd5ba27f in /      
# Tue, 13 Oct 2026 11:36:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:36:14 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:5689adc5d5ec6bee467687c030512630f4ca86263fb7d693a9dce1bae6b0a2d9 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:5689adc5d5ec6bee467687c030512630f4ca86263fb7d693a9dce1bae6b0a2d9 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:36:15 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:35:38Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:35:38Z" "architecture"="x86_64" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:35:38Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:58:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:58:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:58:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:58:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:58:16 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:58:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:58:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:58:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:58:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:58:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:96e018865a7455542a612b44ed5f5973fa5ce3706b35273d9256f2da3960156c`  
		Last Modified: Tue, 13 Oct 2026 13:00:37 GMT  
		Size: 35.0 MB (34952271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c146d3fa45addd58ab5906274e67e141c5354c184726c43f7a315c56187d85af`  
		Last Modified: Tue, 13 Oct 2026 22:58:41 GMT  
		Size: 37.9 MB (37888137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988649251d72e60de975863e79aefeebc641eea59bd39d870a3d4e86f7a6bfa2`  
		Last Modified: Tue, 13 Oct 2026 22:58:43 GMT  
		Size: 158.1 MB (158120073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba1e7242fc683b145ba9f3377964c303cd1bb23d9a9390816490b60b390f9daf`  
		Last Modified: Tue, 13 Oct 2026 22:58:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0efe8b8b5a7005d5c236b9408dd489ccb39bba6a5572c670caed23dc1f0dec4`  
		Last Modified: Tue, 13 Oct 2026 22:58:39 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0b403a8dd144d8596459c3b118b251e88ddf93bc1f3d875d2246a6efe83736ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98dbbf43d9f4485ba212dafddd0ae0894e0465df199a19783ade58ca8bb77367`

```dockerfile
```

-	Layers:
	-	`sha256:6e271bd31370d0a272fb5bb82d7e0c223644cf5acf356e1c0c4ea1b628fb996a`  
		Last Modified: Tue, 13 Oct 2026 22:58:39 GMT  
		Size: 3.8 MB (3794392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:433d3ba7c9f80b9feb22992edf660bdeae643a632cf9b619c3ca6ebdb8a78c84`  
		Last Modified: Tue, 13 Oct 2026 22:58:39 GMT  
		Size: 21.4 KB (21364 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e7d1d546c9dc1a2558fef7dbcd6f23470466c8328567e96f7fc556cdcf699458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.4 MB (227368653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46072bc5b49257d38beb31bfe7c5d13771cf1d54363818adc50077b9afa4180`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:38:12 GMT
ENV container oci
# Tue, 13 Oct 2026 11:38:13 GMT
COPY dir:afba438e6c8fbafbf237be0da7ee4d78bf11b0c3e7cc19222cf85ac1fb700d8b in /      
# Tue, 13 Oct 2026 11:38:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:38:14 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:38:14 GMT
COPY dir:fe33b4e5c0b1e5a254838c04b2eae09c265227f5dbb605d1129c98df0746a610 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:38:14 GMT
COPY dir:fe33b4e5c0b1e5a254838c04b2eae09c265227f5dbb605d1129c98df0746a610 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:38:15 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:37:42Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:37:42Z" "architecture"="aarch64" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:37:42Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:56:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:56:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:56:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:56:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:56:37 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:57:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:57:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:57:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:be085d7a47c11404cbba8ea172a330ab100dad42557617444fa11a7b10a1bcfd`  
		Last Modified: Tue, 13 Oct 2026 13:00:34 GMT  
		Size: 33.1 MB (33127982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29750480f99a5c5a36f035e3b588c442927ed3c4b33aad2b152849cc82b8272`  
		Last Modified: Tue, 13 Oct 2026 22:56:54 GMT  
		Size: 37.8 MB (37834671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1ef5a4f4a1f0f195db164d8c43626432b2f2a141e93ecb0ad669954686d4d3`  
		Last Modified: Tue, 13 Oct 2026 22:57:29 GMT  
		Size: 156.4 MB (156403400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825fbe13b8acbf0770d5ad2911b99042a7ff567763a793179826533756c81c73`  
		Last Modified: Tue, 13 Oct 2026 22:57:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5cff2b2f499e07d0a662c9a4c500aa9917c90a439bf8c908383bd1ea65099d`  
		Last Modified: Tue, 13 Oct 2026 22:57:25 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:85bca1b256f2d88319531e038895b830f43ecafa5c035f1995a2e943ca9a92c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed33704422472437fd4b2cb03917930e7718458efc43a638118744fd53e78a0`

```dockerfile
```

-	Layers:
	-	`sha256:3f68aa9201bf6aa14bf448cd35d2482268ce1b57a646844f3b546eb26c29b663`  
		Last Modified: Tue, 13 Oct 2026 22:57:26 GMT  
		Size: 3.8 MB (3793818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21eef0d941e689964398525bcd889de648cf9c6ae74091e14225aa548c0c265b`  
		Last Modified: Tue, 13 Oct 2026 22:57:25 GMT  
		Size: 21.5 KB (21480 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:ae7b909328e6dddaf54293bfebfc06ac3fced6651a972dd79c4654577377cd3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237071401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15afd3e7f98182f158c5c5e739e06d9f3c67e256ada98848e0951857b868807a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:40:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:40:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:40:12 GMT
ENV container oci
# Tue, 13 Oct 2026 11:40:13 GMT
COPY dir:6eb3f609bc4e564b1e0f3615d9e0a50a15d83aa1392f9c11e0ce78b56c6d1f52 in /      
# Tue, 13 Oct 2026 11:40:13 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:40:13 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:40:14 GMT
COPY dir:5fe1f91fc0fc0351209cf5804013b88c8fe2990db4fa63780198492ee6928ab8 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:40:14 GMT
COPY dir:5fe1f91fc0fc0351209cf5804013b88c8fe2990db4fa63780198492ee6928ab8 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:40:14 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:39:48Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:39:48Z" "architecture"="ppc64le" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:39:48Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:55:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:40 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 23:03:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 23:03:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 23:03:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 23:03:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 23:03:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cae3e061a7afa15909e77da897ec7c0aded380e79c5df5ed8870cb712d112de9`  
		Last Modified: Tue, 13 Oct 2026 16:45:35 GMT  
		Size: 39.1 MB (39113979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817884d4fc6351ec75c0b22c811b098c1f63bd0504a857ff68b68f04ecaa39c5`  
		Last Modified: Tue, 13 Oct 2026 22:56:39 GMT  
		Size: 39.7 MB (39670359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa38d29dade384e3e9fc5ff6b5eb563f03701bb3790e03ee133926f2ab592350`  
		Last Modified: Tue, 13 Oct 2026 23:04:24 GMT  
		Size: 158.3 MB (158284460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933160372a0ba4c6ae41afb56f364d3bd15a03575d65de5fb9322b30a258557d`  
		Last Modified: Tue, 13 Oct 2026 23:04:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad948a0a122528ebb9c20c0549c5b3aa8c22cf9350f8a1208c4a27fe6d266ce4`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2607f893d90e5124da607f8a2c3b90fbb2094b3e9252cb3f5afee66b77ca4145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb19e6fdb2c1d8c6d87d907f9076a3e9762d57a7a5c574e5e1f6a0547d5f79f`

```dockerfile
```

-	Layers:
	-	`sha256:06fb15582cb707ff9a1cadaf9dd52618f38dffbd61ea10390ef83a8c44a3ccc6`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 3.8 MB (3781224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc34b0e00add57bc75a61c995c489491d6e1e2dfe996cdff84ffbf58627997e`  
		Last Modified: Tue, 13 Oct 2026 23:04:21 GMT  
		Size: 21.4 KB (21400 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:da27394874476f6367b8914f689edfa50e308fb620ecdf59876c85086ba12fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.4 MB (220446308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b51bf55e16d3561fb75644d7ef5227266e506f39e0607690eed3b4561791c6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Oct 2026 11:50:19 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:50:19 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:50:21 GMT
ENV container oci
# Tue, 13 Oct 2026 11:50:23 GMT
COPY dir:1e6e97c7b08276d6fc241657760d66b7afc6a0634288bfec812f60856399bac6 in /      
# Tue, 13 Oct 2026 11:50:24 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:50:24 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:50:24 GMT
COPY dir:a1971d62b01fb53b8823b9e3a25eadc4645703c309044f9cff0e33ddbf4d511d in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:50:25 GMT
COPY dir:a1971d62b01fb53b8823b9e3a25eadc4645703c309044f9cff0e33ddbf4d511d in /root/buildinfo/      
# Tue, 13 Oct 2026 11:50:26 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:48:36Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:48:36Z" "architecture"="s390x" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:48:36Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:55:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:19 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:56:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:56:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:56:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9a74cc32d0c11450cc3df28e940e72b0fc246b2ea4419b55b451e71c6cb0957e`  
		Last Modified: Tue, 13 Oct 2026 16:45:48 GMT  
		Size: 34.8 MB (34822258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37738299d37c835c30a436e5426ee0a7a6f254177dfc73825e46e460b422c76c`  
		Last Modified: Tue, 13 Oct 2026 22:55:52 GMT  
		Size: 38.3 MB (38273423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cd4c77d44002c443e77ba5f591806affaa0803b9d315f4b5057154a2533136`  
		Last Modified: Tue, 13 Oct 2026 22:57:20 GMT  
		Size: 147.3 MB (147348024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef87670e1a976cc62a9666304f1a2089f4b73c4c56fa7f68bbd878fe1ee299b`  
		Last Modified: Tue, 13 Oct 2026 22:57:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061b07e1bc3380274c28331106f654a33eff10e161abd491ff2cde2c57c700bf`  
		Last Modified: Tue, 13 Oct 2026 22:57:02 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5867b7f8dae204e52d645268340d94e82207984dc47a767a6a5dcd2a527cd11e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b3537247b15fb2ab4ef221a38b43aad23943a0659a0a5208aea95f4f46fee5`

```dockerfile
```

-	Layers:
	-	`sha256:505a5aef3cc4a378755c146937f39fa2596d4ff8f79e5a09e47a96ed9392fbfb`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 3.8 MB (3779982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:591ee4f168d5f78e406abc8ff90f352254f4702505c414f5c4f7e36ca8e06abd`  
		Last Modified: Tue, 13 Oct 2026 22:57:18 GMT  
		Size: 21.4 KB (21364 bytes)  
		MIME: application/vnd.in-toto+json
