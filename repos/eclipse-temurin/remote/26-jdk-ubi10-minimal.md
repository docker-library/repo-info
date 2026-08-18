## `eclipse-temurin:26-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:fe2f9726a3f482bbdebb09e094c3a8e0257e75983c8de6b3eb8f21ac5bdf3f92
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

### `eclipse-temurin:26-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:95b51fa791e9e79a2c18f2a5fd212c79e6304b15dbced2138ac34eccf4cfb5bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167237118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8660b487ac57a4f31fc91714740de661efc7c49e399a8e6a71ea89e4e431d822`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:00:29 GMT
ENV container oci
# Mon, 17 Aug 2026 10:00:29 GMT
COPY dir:e1c00668e831c6f7c1c82890c3ff2aa86777926f6fcef54ed840b79618da399c in /      
# Mon, 17 Aug 2026 10:00:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:00:30 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:00:30 GMT
COPY dir:711c35f0e0f5b6c4acb3cbb42fc5687dfbbb2a5043ce701198a3131e25785504 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:00:30 GMT
COPY dir:711c35f0e0f5b6c4acb3cbb42fc5687dfbbb2a5043ce701198a3131e25785504 in /root/buildinfo/      
# Mon, 17 Aug 2026 10:00:30 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T09:59:37Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T09:59:37Z" "architecture"="x86_64" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T09:59:37Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:38:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:38:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:38:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:38:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:18 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Mon, 17 Aug 2026 22:38:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:38:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:38:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:38:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:38:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:872a2aed985e0b2daad07dd2009dbba2c5d87b2369582eb5b179f081ac4ea0e9`  
		Last Modified: Mon, 17 Aug 2026 10:54:15 GMT  
		Size: 34.9 MB (34914306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad91cff25cf92d16a6b3e1bb648693358b1ea250f4ef0873068dbdae62831f4`  
		Last Modified: Mon, 17 Aug 2026 22:38:42 GMT  
		Size: 37.8 MB (37794829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28dc955d14653a3202d1f936e1aff8cbe578e6c03e7bfee32f8867f69b13bc01`  
		Last Modified: Mon, 17 Aug 2026 22:38:44 GMT  
		Size: 94.5 MB (94525385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de929f1267ff93268a4ab7c9c3100e2edac9da2c5c43ffb005bb0f26e9914f5f`  
		Last Modified: Mon, 17 Aug 2026 22:38:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb1b235bdc6c3ed1d3707a96593ade91826f7dbc2d82b08be60b75ac29aca23`  
		Last Modified: Mon, 17 Aug 2026 22:38:41 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3fe3f2963863fadf02a9be88d78c39d88a50b2304ec98ae0ea9b7183bca6d303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3778618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ed7b8ff282260c28173130563ca10f5aaabf0010c62a7e8bd0137cdc40b69f`

```dockerfile
```

-	Layers:
	-	`sha256:1ae7a522094bc2183348a312b13d61e6d0b92d1437d6334b2d5e121aeb7003f5`  
		Last Modified: Mon, 17 Aug 2026 22:38:41 GMT  
		Size: 3.8 MB (3757329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96a7e3446b9597c5c996be2340e8053558626c856e67c5c8cd5ae7438131aba5`  
		Last Modified: Mon, 17 Aug 2026 22:38:40 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2e0f7486ed685482a7ea410476c104b48c134535050768a8e2f860cd9f9d700b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.3 MB (164334146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804074f0e3422f2403ecc4538469161bfa18bcd0bf8af8f0f0c06d084fe588df`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:02:26 GMT
ENV container oci
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:793eca9839ba6ad23829ed8a657d8667ee4d15a851784f37c997c048e9870781 in /      
# Mon, 17 Aug 2026 10:02:27 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:02:27 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:55140f70ed2ba8822276b175ee837493eab52c96586720bf3979289e5dccba53 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:55140f70ed2ba8822276b175ee837493eab52c96586720bf3979289e5dccba53 in /root/buildinfo/      
# Mon, 17 Aug 2026 10:02:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T10:02:05Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T10:02:05Z" "architecture"="aarch64" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T10:02:05Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:37:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:37:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:37:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:37:01 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:37:01 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Mon, 17 Aug 2026 22:37:36 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ff4356eadc8eb39aa229f22a6bde46a2c9a62afe867477b6cf66b5ce54cfb5d4`  
		Last Modified: Mon, 17 Aug 2026 10:54:11 GMT  
		Size: 33.1 MB (33101866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb0e2847a6d2c8bc070dca499733f1fa2319dddb3d6bb3350d0b2cf35c9376e`  
		Last Modified: Mon, 17 Aug 2026 22:37:20 GMT  
		Size: 37.7 MB (37724362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de28ee65f9fa51b112d617925c8122d1364b1f8f2837ef5b09107853ed8d38f4`  
		Last Modified: Mon, 17 Aug 2026 22:37:58 GMT  
		Size: 93.5 MB (93505317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c7b06686781a50d72b10272260371159cd93cdfa6c8ac5ecd84830376c18f8`  
		Last Modified: Mon, 17 Aug 2026 22:37:55 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c5b9d697b4dcf25639154cb34edaaf701022155d0b57fb766dba8bc84bf713`  
		Last Modified: Mon, 17 Aug 2026 22:37:55 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dc2010f406cf5b9fcafb23c3c6c64a283f31081959c343414c22eaa62f2dcf05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3778156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1578ced74705123b447335c6104aacd3e5f03f34c1dd12ed25f58984db47958`

```dockerfile
```

-	Layers:
	-	`sha256:0eba063d741b0cebd36e1419523dedb5a3552fb96f5477b3e5dc529eb6f76759`  
		Last Modified: Mon, 17 Aug 2026 22:37:56 GMT  
		Size: 3.8 MB (3756752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0ca845ddf8764b87782b50bdac728d509863d2f9044d571814cf8d162bf950b`  
		Last Modified: Mon, 17 Aug 2026 22:37:55 GMT  
		Size: 21.4 KB (21404 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d42dd8c07a299a49970a1f87a707c95c71fd086e19b107884975371297ca3ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172443327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d6b2fa219386170dac85004b2d8d4b8e89444cfa88c94e8ff182bb0f27ec83`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:59:05 GMT
ENV container oci
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:249066be360b20bac2c3d87c82d2fd5913a2bd1c8a7703095843f7bb07f442b8 in /      
# Mon, 10 Aug 2026 21:59:05 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:59:05 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:7876787ddee47582bd5037da96d6c1c51bee54abfb82e51e92e428cf06595bca in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:7876787ddee47582bd5037da96d6c1c51bee54abfb82e51e92e428cf06595bca in /root/buildinfo/      
# Mon, 10 Aug 2026 21:59:06 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:58:46Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:58:46Z" "architecture"="ppc64le" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:58:46Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 20:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 20:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 20:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 20:19:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 20:19:36 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 11 Aug 2026 20:28:18 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 20:28:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:28:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:28:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 20:28:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8cd8bf1356749857de78a84ea2d535a37f25277dac8b1dcfbb2a37ef254ca46b`  
		Last Modified: Tue, 11 Aug 2026 00:19:54 GMT  
		Size: 39.0 MB (38992795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3681bd23f68912b8e5fc514148289990dda7f13561576208484ea88934ecba6`  
		Last Modified: Tue, 11 Aug 2026 20:20:14 GMT  
		Size: 39.5 MB (39545533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9b2f010cca38bb2f6cd29b9edfcfa6ec2aa49c063799c3c42fabb0f9d19421`  
		Last Modified: Tue, 11 Aug 2026 20:28:55 GMT  
		Size: 93.9 MB (93902398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f3cb4cf82c7b0416260a9273b6870f21e90fe3b9979c350d7cc880dc6da5c0`  
		Last Modified: Tue, 11 Aug 2026 20:28:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccc190f0317c52c276694a479c34da23b1520a6ca64b3c4a11245b5e5686470`  
		Last Modified: Tue, 11 Aug 2026 20:28:53 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:69d9c8514e79ea6acafcc3bc462a35018be3640d26e4993392f6f44df3b6078d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3749406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc18eae8150db9a1bd10fe6056b2d018a554729b6383bd81aa71d0301994ca0`

```dockerfile
```

-	Layers:
	-	`sha256:5d8e9441961fb6dccf13037187d0cc40738ddecacecaef847266812073ef79e5`  
		Last Modified: Tue, 11 Aug 2026 20:28:53 GMT  
		Size: 3.7 MB (3728081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f51e03128bb60be11e20fb4502b87443ccb870522927e5a51e3a69bd788d686`  
		Last Modified: Tue, 11 Aug 2026 20:28:53 GMT  
		Size: 21.3 KB (21325 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:ab1474a92db79da8e557c608eb674240f7f76d3252fbcf9a50828e54eb5e9c9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163526752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6c92b424a6e86a1d47eaf9a28232c7897beaf40a7a10d9e2c52a56eced7449`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:17:18 GMT
ENV container oci
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:db8c552773640bcf67a97fcba29870289b1428b16d5ec8d65c572309418e9fd3 in /      
# Mon, 17 Aug 2026 10:17:19 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:17:19 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:7d13de7d05c45bf79021a229b19a0a25e9cf990735122c09853b8d2c0611408e in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:7d13de7d05c45bf79021a229b19a0a25e9cf990735122c09853b8d2c0611408e in /root/buildinfo/      
# Mon, 17 Aug 2026 10:17:19 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T10:15:57Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T10:15:57Z" "architecture"="s390x" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T10:15:57Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:35:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Mon, 17 Aug 2026 22:37:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='613f9b2861dea937b24d5eca745ef8567733b377d0bb612195acaad0e3f61360';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='60e016faf4177840430035d948f83f2887d556fe512b78c1d43b320322fe6685';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='942de7ded1427592a2a4b6dbea4083b2d0891de2626c7863e970de3e2819a93f';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='8e512f13e575a43655fc92319436c94890c137b9035cc6bd6f9cf24239704d3a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jdk_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:50 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:12ecfd32ac8bb40ba4889411d71319e37dea47907db2b9306af99b658953469c`  
		Last Modified: Mon, 17 Aug 2026 11:32:31 GMT  
		Size: 34.8 MB (34815441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb2e1229ed031edd8ad8cd675a2fc89246c29704423ccaa73fcdc1aeba7db8a`  
		Last Modified: Mon, 17 Aug 2026 22:36:01 GMT  
		Size: 38.2 MB (38171368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a137c3fded1665b55a35a9c34fe0bce60ea03f7e60447804731f4bf28468c365`  
		Last Modified: Mon, 17 Aug 2026 22:38:15 GMT  
		Size: 90.5 MB (90537343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef7543d99eddfdebe538591597d27d6ea9285aaffadccd83a2a5e6384aa70a8`  
		Last Modified: Mon, 17 Aug 2026 22:38:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb65619047f33ea77135752fdb6344ae2233ed23ff088ae216e73c01ffab54d9`  
		Last Modified: Mon, 17 Aug 2026 22:38:14 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ab67cd074b1e1bcccffeac5e6e6f345bf1b21c4dbc71943ff939e70515a72d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3749394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba600b04bfb6a040f7699e53d6bdce5dfceafda7b3a1f8b23be0628beaad26d`

```dockerfile
```

-	Layers:
	-	`sha256:7b703c3a8bca675dbe9f6cdb4d509a4c0a61e363a452b71f67ce8d9462282cd8`  
		Last Modified: Mon, 17 Aug 2026 22:38:14 GMT  
		Size: 3.7 MB (3728105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9db8d76358e2ac65f10411c9cb10ce207218a7d136cc1273c413f1310bb21e64`  
		Last Modified: Mon, 17 Aug 2026 22:38:14 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json
