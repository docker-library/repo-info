## `eclipse-temurin:21-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:dea488ba1c4d2321246cda8a2ea4d1739398224589a53587b5c7858ccc66409b
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
$ docker pull eclipse-temurin@sha256:a6d96c4a96b4e59ea085e96769284f82e6284ecc5ba7e717774c8234dd22e97f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230863145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cf3dca5818b16335459d5bb5f251125c79ff794a3f23d78559323fe255d6a3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:41:35 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:41:36 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:41:36 GMT
ENV container oci
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:ed77bb373e14ffa6b3783b4ca84874dcd05c0d6bea35c76071d4ccb41ebeef18 in /      
# Mon, 03 Aug 2026 17:41:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:41:36 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:7e4a63454f39409c213733c178806885b5a316509bc6872a23eca6721c2a73bc in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:41:36 GMT
COPY dir:7e4a63454f39409c213733c178806885b5a316509bc6872a23eca6721c2a73bc in /root/buildinfo/      
# Mon, 03 Aug 2026 17:41:36 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:40:34Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:40:34Z" "architecture"="x86_64" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:40:34Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:03:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:03:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:03:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:03:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:03:22 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 21:04:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 21:04:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:04:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ac98f959ddf9baac24d46ce09bc63e26a45b74b502da97c83be3cdfcd2b5bad0`  
		Last Modified: Mon, 03 Aug 2026 18:50:26 GMT  
		Size: 34.9 MB (34906609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb5022ea5d102b7d9029b4826d01cfe69cb773e0395149ba99955b3428360f0`  
		Last Modified: Tue, 04 Aug 2026 21:03:39 GMT  
		Size: 37.8 MB (37781439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6a763c520c9ecf4336cd2b4662a092a4ba04d5d9923f990158fdcae9556ad7`  
		Last Modified: Tue, 04 Aug 2026 21:04:36 GMT  
		Size: 158.2 MB (158172674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc3fc4f6703dca8fcb24fcbb7aef48229600253f8af57bc3cb35b76d2691fcf`  
		Last Modified: Tue, 04 Aug 2026 21:04:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7493e5983f2075901c54493f3df42fe38a5643710f679f78383cd5b32e7c2bd4`  
		Last Modified: Tue, 04 Aug 2026 21:04:33 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:58c97051c90b1d33d2a512972aff2edffe93adf115140eb8678f167ce1885d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9d4559cb12b8c4d1094c40a6c4730728d8c4ba05023c06dbf3e591189b1bb98`

```dockerfile
```

-	Layers:
	-	`sha256:b2f11c140cf02ed34b030e7ec916f536428a0fc97c060d8499a982e1f96ef953`  
		Last Modified: Tue, 04 Aug 2026 21:04:33 GMT  
		Size: 3.8 MB (3794272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31eab894453f177deddfbaee930cab68cd6411a1c0ad64661cece332b7127325`  
		Last Modified: Tue, 04 Aug 2026 21:04:33 GMT  
		Size: 21.3 KB (21340 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:73994124de77a0c1a8d67a4ee457ab50e2cc4f69744ce49121f4351aa9239df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227225816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853bf17ec1b38a6b3cea3ffcbb8e92fe1a0bf20af0c909e07f95972ce7f781e2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:42:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:42:25 GMT
ENV container oci
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:26fa351aba4d56b41677f6e2b1ab88063d4c9bbfc6176232f37e77eaf773115e in /      
# Mon, 03 Aug 2026 17:42:26 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:42:26 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:866ddf8cef7c479ff27d941240740a59788ad28338ae4d90f502ab418f7eb118 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:42:26 GMT
COPY dir:866ddf8cef7c479ff27d941240740a59788ad28338ae4d90f502ab418f7eb118 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:42:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:42:02Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:42:02Z" "architecture"="aarch64" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:42:02Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:04:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:04:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:04:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:04:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:04:02 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 21:04:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 21:04:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:04:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:37c5f70fcd6cd766028ac1d94a4780f9f0b7d6d0cef13f7218ef89620df991eb`  
		Last Modified: Mon, 03 Aug 2026 18:50:21 GMT  
		Size: 33.0 MB (33046883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0e0ff01ad4c7a81ec54e1909ae773bd61cc9ae43d6f9539cf11cbf55a77177`  
		Last Modified: Tue, 04 Aug 2026 21:04:19 GMT  
		Size: 37.7 MB (37712120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64921b5d02911fc744bec9f1b6ab0114540d943a28e1ac37dd5dfcc5a77a6416`  
		Last Modified: Tue, 04 Aug 2026 21:04:56 GMT  
		Size: 156.5 MB (156464391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731ed9d05ee970917503d53319f972fad60c43ae43bec040dfafcd194e890bf8`  
		Last Modified: Tue, 04 Aug 2026 21:04:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7de0325d4003f168f39463ae5f33119138c02e0f8575bddfb46c1894dc5181`  
		Last Modified: Tue, 04 Aug 2026 21:04:53 GMT  
		Size: 2.3 KB (2292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:35bac2e7736df8052b9646de96d6368278ffef50abe6317ebedecc36ed73339e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf41962dc2bda25a9fd449926ba787d2803b9986bcf40f70741b2cf116362698`

```dockerfile
```

-	Layers:
	-	`sha256:46472ffa012ec4a60944520fcb53535c4ffeec0b5a6b426cdf05f1bc4b042115`  
		Last Modified: Tue, 04 Aug 2026 21:04:53 GMT  
		Size: 3.8 MB (3793698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:058e662f1050ef0714097e9ddc439283abef7aeca68545e21fd83af07159626f`  
		Last Modified: Tue, 04 Aug 2026 21:04:53 GMT  
		Size: 21.5 KB (21456 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a2f980e5bb0c52ca3e8636a10e20d790af2fdfcff51689098bfefda0318e602a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236879535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec90dde0651adfbca199d465a88dfca5272169edc812ae295fbdfda6e3436ae`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:50:45 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 17:50:45 GMT
ENV container oci
# Mon, 03 Aug 2026 17:50:45 GMT
COPY dir:59842d43bb5f3afddc1c28e5e18da7b985b05428a00d20ae001285b8f505c302 in /      
# Mon, 03 Aug 2026 17:50:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:50:45 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:50:45 GMT
COPY dir:ae8dd099b872415c3b83342ad84051e92399936f8a2b6d52f98c685368d33413 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:50:46 GMT
COPY dir:ae8dd099b872415c3b83342ad84051e92399936f8a2b6d52f98c685368d33413 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:50:46 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:50:29Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T17:50:29Z" "architecture"="ppc64le" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T17:50:29Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 20:54:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 20:54:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:54:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 20:54:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 20:54:03 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 20:59:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 20:59:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 20:59:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:59:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 20:59:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:116623ca973258787b24d7b3d292610e22b2ae0e9f57a15bcf49eb44e18b11f0`  
		Last Modified: Tue, 04 Aug 2026 00:20:16 GMT  
		Size: 39.0 MB (38982890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c460c8e9859a18331fc86452678494f5f123066c74d20d535927b4675cce27`  
		Last Modified: Tue, 04 Aug 2026 20:54:45 GMT  
		Size: 39.5 MB (39545720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc26893d81fa4d422ce1910c33996f9a944bbd40720294d0a56969f4008c4cd8`  
		Last Modified: Tue, 04 Aug 2026 21:00:33 GMT  
		Size: 158.3 MB (158348504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb92902096f692f6eb2f5a79220d085cc3fbf983247f3200230f770e1775b57`  
		Last Modified: Tue, 04 Aug 2026 21:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690d32bc5cce3f3fcdcdd7efa686488999f66cc5ca4841459f6bc163d326fd26`  
		Last Modified: Tue, 04 Aug 2026 21:00:29 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6220eb6950eafe6bd1b16bb9e227af8b0555a4d6ca3727ba23dda8411142828f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2799b152a9fbe19642b0cda82d012ad4f78fbb1d9098b71ef3090a09dd68f57c`

```dockerfile
```

-	Layers:
	-	`sha256:e065507b9424f0832719883cc19794da5e95f4cc4a1e2f0dc187949d706d0f32`  
		Last Modified: Tue, 04 Aug 2026 21:00:30 GMT  
		Size: 3.8 MB (3781104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fa791c504801785dd21b1bee0cac6e4c5f14ee471cce2e99346937316aa9338`  
		Last Modified: Tue, 04 Aug 2026 21:00:29 GMT  
		Size: 21.4 KB (21376 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:bae32638b5b976021c029f15c47f43e1e3774eaaa01f6bb71eeb165b113b8f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.3 MB (220304504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ead1883154c91f4d4483bb95982fa8cbe64a16e73526daac66aded727c82e69`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 18:12:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 03 Aug 2026 18:12:05 GMT
ENV container oci
# Mon, 03 Aug 2026 18:12:06 GMT
COPY dir:51e8171b5ba6fdcffcaf306e0483673805078abd0611781794d0e9cc8454b335 in /      
# Mon, 03 Aug 2026 18:12:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 18:12:06 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 18:12:06 GMT
COPY dir:068e69fcb19fb0c4dfc44317e39e7fc0c3da9f5a9f05c92ad77178c611595f1f in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 18:12:06 GMT
COPY dir:068e69fcb19fb0c4dfc44317e39e7fc0c3da9f5a9f05c92ad77178c611595f1f in /root/buildinfo/      
# Mon, 03 Aug 2026 18:12:06 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T18:10:43Z" "org.opencontainers.image.revision"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "build-date"="2026-08-03T18:10:43Z" "architecture"="s390x" "vcs-ref"="b9fdece4d2c962654c1c4a6f9578551c79e4c4c6" "vcs-type"="git" "release"="1785778687"org.opencontainers.image.created=2026-08-03T18:10:43Z,org.opencontainers.image.revision=b9fdece4d2c962654c1c4a6f9578551c79e4c4c6
# Tue, 04 Aug 2026 21:35:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:35:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:35:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:35:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:35:17 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 04 Aug 2026 21:39:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 04 Aug 2026 21:39:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:39:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:39:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:39:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:494b827256e87615f911ef7073926aa15b60f47cb8e358a0ad0c291bde51c235`  
		Last Modified: Tue, 04 Aug 2026 00:19:38 GMT  
		Size: 34.8 MB (34756245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de20083552ad1e438f487653ca0f694365ef3ca00471146893853ae850f0eb83`  
		Last Modified: Tue, 04 Aug 2026 21:36:55 GMT  
		Size: 38.2 MB (38155618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:281e3cc16b48c095495fe3b65a5beed8dcb32df548f6a1320c2b499d2b9d4d3e`  
		Last Modified: Tue, 04 Aug 2026 21:41:10 GMT  
		Size: 147.4 MB (147390219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71f4ca174b9621be61fbd6a27b93cde194967e0f0c4e069df07034587ea1424`  
		Last Modified: Tue, 04 Aug 2026 21:41:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360deec61214a26555cb140691a37081b4ff1739047ae915beb6366c88e4e8aa`  
		Last Modified: Tue, 04 Aug 2026 21:41:04 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:311e182e5f3b1677e20f3291ff1fbba8140d1555e38bfd289962a85345104831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70535e943a07b8d447d24b1e6b736f1564abc6bd689d957a31d2eecf6fde3fc`

```dockerfile
```

-	Layers:
	-	`sha256:2ee224e146c6ff13598d39233e122b2ee9cf87386a762139d228ed9bf0571dac`  
		Last Modified: Tue, 04 Aug 2026 21:41:05 GMT  
		Size: 3.8 MB (3779862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7ef3011eedbcf7161f1c7e446539d1e7f82c4be4303743df0fee536893062b8`  
		Last Modified: Tue, 04 Aug 2026 21:41:05 GMT  
		Size: 21.3 KB (21340 bytes)  
		MIME: application/vnd.in-toto+json
