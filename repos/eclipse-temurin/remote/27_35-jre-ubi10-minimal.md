## `eclipse-temurin:27_35-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:d45ae88c1936ee7805befd0b03dc3c6155efad1db9b805570808cab1cf04d69a
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

### `eclipse-temurin:27_35-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:54f3c64508694217876b7f8c40f0cda2452fc4b4cdd1d3ac141cae54052a56df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136193401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d845c84cbd0290a870f484a0c5920e6d2579ea404a39043d54e6e2ebbeeba02e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:34:34 GMT
ENV container oci
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:3fc2149cba1aae646de340c6940fc0331b4ca2629dd609c7c1400ec115ce9c6e in /      
# Thu, 05 Nov 2026 07:34:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:34:35 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:34:13Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:34:13Z" "architecture"="x86_64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:34:13Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 22:51:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:51:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:51:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:51:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:51:40 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 22:51:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 22:51:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:51:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:51:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0218091bf1acf0117c078cab67cd8be28c27f65609cc1af616ea6886997ebab`  
		Last Modified: Thu, 05 Nov 2026 09:20:39 GMT  
		Size: 34.9 MB (34932248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb9f5d3f709e1c052fd00761330809a831de09b198a869e4f9575d6665c3805`  
		Last Modified: Thu, 05 Nov 2026 22:52:00 GMT  
		Size: 37.9 MB (37890487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8befdc3a8ce030188aea9e6f604695d17e65171b43134fe9915e6870b7592249`  
		Last Modified: Thu, 05 Nov 2026 22:52:01 GMT  
		Size: 63.4 MB (63368067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f025322a834c465b344364747493997e3d56d453457253212b171094b79d03b`  
		Last Modified: Thu, 05 Nov 2026 22:51:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1f594c3a842e260b74edbe61bd6cbe037f9d29c463fcdd2b3ad2531e158d69`  
		Last Modified: Thu, 05 Nov 2026 22:51:59 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c1d5e346b93d2d4f3b63346851fc9754849a15ca5d64cbc82ea4a15de5f52351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44b29156c5bdd30422fba85cc85db118c63b67ef993cda0744f8b05bd342953`

```dockerfile
```

-	Layers:
	-	`sha256:6197d97fa642ebb9b046399f00f489d33bc58263611510d9b0525aa10131be1d`  
		Last Modified: Thu, 05 Nov 2026 22:51:59 GMT  
		Size: 3.7 MB (3694626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e44b568c362a4e5b1de7514af023a85d2b5830ceaded8a9bda372f695c5dd450`  
		Last Modified: Thu, 05 Nov 2026 22:51:59 GMT  
		Size: 20.3 KB (20257 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27_35-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:8664acb0147890a1b1e1429edf8457f3d0c7b3c9e1ca8aad2825235193f9386c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133209964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c10a498fbf48879495e621cf72edaa695a185ed864a4220ea0141d6e3ea83c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:38:13 GMT
ENV container oci
# Thu, 05 Nov 2026 07:38:14 GMT
COPY dir:089f13b60ac5a6f3bf2df00bfd8d6b35f10e4772d781538a85ad7aaebf293498 in /      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:38:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /root/buildinfo/      
# Thu, 05 Nov 2026 07:38:16 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:37:45Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:37:45Z" "architecture"="aarch64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:37:45Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 23:29:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 23:29:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:29:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 23:29:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:29:54 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 23:30:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 23:30:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 23:30:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 23:30:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7aee463747d818b9fbc2248922298e0ccf21bdb30d3990b9ca3eec1000343059`  
		Last Modified: Thu, 05 Nov 2026 09:38:32 GMT  
		Size: 33.1 MB (33070630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1cc75f6959254b84314a4aee71e3577ae0d4264d54cc8d56bff7591603d39d`  
		Last Modified: Thu, 05 Nov 2026 23:30:17 GMT  
		Size: 37.8 MB (37835551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1b5c2e77ef4dfe24141df5c417e35d9c29281161a750eebf6bbe9d696f4ec1`  
		Last Modified: Thu, 05 Nov 2026 23:30:18 GMT  
		Size: 62.3 MB (62301184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ecb03330494d14198bbb1edd91a710d07eb1bf20d37c4802ddd96fd99d17a0`  
		Last Modified: Thu, 05 Nov 2026 23:30:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d8851f171b5da804a5b1fc1977e30d08cf332fd569d1837eedcfcf5e1c53938`  
		Last Modified: Thu, 05 Nov 2026 23:30:15 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8011cc8caf21d1c253f2458fce2a14e78e8e5dcf8d894f7959996e607984798c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f0b46f8c02e2ee40a2c123872af98a7d4b94bd6b650f8927eb0a54e4115c7e`

```dockerfile
```

-	Layers:
	-	`sha256:a8cf3c16d0ce617a31d638ff417b47f0dd90fe0b93eb26992c7cf6d3d549df76`  
		Last Modified: Thu, 05 Nov 2026 23:30:15 GMT  
		Size: 3.7 MB (3694037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d09a588d5375e770a690a414557e0019ff7427675af4330743ab65953ed59e`  
		Last Modified: Thu, 05 Nov 2026 23:30:15 GMT  
		Size: 20.4 KB (20361 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27_35-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:546f7d1f672c4e8ae2f971f7ae6de86098a667715968f0f7e8e08ab0002aa3ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141012437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06a18c2ed8619b44e3170cbd52aee7a496ec2c39c5db83bbd51c573f986c71e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 02 Nov 2026 18:09:12 GMT
ENV container oci
# Mon, 02 Nov 2026 18:09:13 GMT
COPY dir:23f96b12a10855470b31dbaeb9242c76bed8533a25350a01720e981e06a845e9 in /      
# Mon, 02 Nov 2026 18:09:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 18:09:14 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 18:09:14 GMT
COPY dir:bbcf2ab9f5af9ab164009cfd1689bdf3e3e1f5261cc0168966aa873fa487a03f in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 18:09:14 GMT
COPY dir:bbcf2ab9f5af9ab164009cfd1689bdf3e3e1f5261cc0168966aa873fa487a03f in /root/buildinfo/      
# Mon, 02 Nov 2026 18:09:14 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T18:08:49Z" "org.opencontainers.image.revision"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "build-date"="2026-11-02T18:08:49Z" "architecture"="ppc64le" "vcs-ref"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "vcs-type"="git" "release"="1793642335"org.opencontainers.image.created=2026-11-02T18:08:49Z,org.opencontainers.image.revision=f738e88b7bb7caf108d5a65ce6eaa0f284c32f73
# Tue, 03 Nov 2026 23:27:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 23:27:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 23:27:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 23:27:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 23:27:42 GMT
ENV JAVA_VERSION=jdk-27+35
# Tue, 03 Nov 2026 23:33:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 03 Nov 2026 23:33:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 23:33:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:33:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:017bd409fb0ac73b7406d28a08a311079fe21ec771e81bff4261ca105361e45c`  
		Last Modified: Tue, 03 Nov 2026 00:15:49 GMT  
		Size: 39.1 MB (39077458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02256aeda862a14c29b08ac0f476f4050e4c1ed3ad917800b4d80e0e8091cf5c`  
		Last Modified: Tue, 03 Nov 2026 23:28:27 GMT  
		Size: 39.7 MB (39668108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d97d9eeb92d08435ad457358e81547f0d340d36d74b9c4856781edab357b5b`  
		Last Modified: Tue, 03 Nov 2026 23:34:27 GMT  
		Size: 62.3 MB (62264272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1e840b88015b58b5a05a0cdd1d6756114c13918da98471e3955246f4e08eab`  
		Last Modified: Tue, 03 Nov 2026 23:34:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f81b9e070711fdd104471fc373e573d1eaced07e7e190a86ccdf4a577840d0`  
		Last Modified: Tue, 03 Nov 2026 23:34:25 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f5097708011f4561e3fd34154ba6ebdf56e837146833a940cc6037e7413f5a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3703037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1c7805562f8a7de609266a4edceb822df73b9499bd1537a064a2fb23772a34`

```dockerfile
```

-	Layers:
	-	`sha256:9ac01e5b24908689b7ff88c4c7d391f041aebc07b832f429ed326d68097f1fd1`  
		Last Modified: Tue, 03 Nov 2026 23:34:25 GMT  
		Size: 3.7 MB (3682750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f629738e0820a801867fd6029e492bbb786f05b505bf2cba07e156eadb90f63`  
		Last Modified: Tue, 03 Nov 2026 23:34:25 GMT  
		Size: 20.3 KB (20287 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27_35-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:432f0ad6e6796a7c5eee3a5a05ecaef06407bc4e7a8edeb70c06adc6b8a19871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134712059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379b045ccb4ac1f93233c64f8f2357f008a970d2fbfd32bc9a39f3321a38ad41`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 08:48:01 GMT
ENV container oci
# Thu, 05 Nov 2026 08:48:01 GMT
COPY dir:58e5cbdf987899e4e343a163bb22217cbde7bf746a590beffe7a2cdc589f8192 in /      
# Thu, 05 Nov 2026 08:48:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 08:48:02 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 08:48:02 GMT
COPY dir:ff22a7eb7b8af6dbfdfe7086cf3f72f26e5740e5b5b8980b18d7a78ef06f8b34 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 08:48:02 GMT
COPY dir:ff22a7eb7b8af6dbfdfe7086cf3f72f26e5740e5b5b8980b18d7a78ef06f8b34 in /root/buildinfo/      
# Thu, 05 Nov 2026 08:48:03 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T08:46:47Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T08:46:47Z" "architecture"="s390x" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T08:46:47Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 22:55:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:55:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:55:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:55:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:55:39 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 22:59:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 22:59:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:59:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:59:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cbab0f587f3ad64e48f0d9219263296257c575311ec58a5c6ef9006d5af91813`  
		Last Modified: Thu, 05 Nov 2026 12:26:16 GMT  
		Size: 34.8 MB (34788872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7d265596f63282066592c92f0af8a76c30d8648e7fdd4947ca73efac5fb5ce`  
		Last Modified: Thu, 05 Nov 2026 22:56:32 GMT  
		Size: 38.3 MB (38272090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b30577607f3f164fc3173b52ed4ee7ae20bde96707c108a25f4f06bd1513f20c`  
		Last Modified: Thu, 05 Nov 2026 22:59:34 GMT  
		Size: 61.6 MB (61648499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76198288744b903a4171cefa2abb4f750154a1836c3a9616c892c71a0446a942`  
		Last Modified: Thu, 05 Nov 2026 22:59:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97188f482af2f404309838defbec48d10b60d7a9f49f44f7b9051e42604db32d`  
		Last Modified: Thu, 05 Nov 2026 22:59:32 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e6210c176e9cad5de19cd4c6fe5e4b60d5e61e4bfb287b67f8a09d36b6de598d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3704253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192356d9909bff50311d61436a63540fb273660434d3dfe0c6b4726fa717aaa6`

```dockerfile
```

-	Layers:
	-	`sha256:a4e9246592aecd82801a3e1daa888576b5cd36e1575e390e8c82e36a4ff50c94`  
		Last Modified: Thu, 05 Nov 2026 22:59:32 GMT  
		Size: 3.7 MB (3683995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eeec96c5a18a7fd92ed31f641d6dafa814a0634e1fe8309c98756019268d8ab`  
		Last Modified: Thu, 05 Nov 2026 22:59:32 GMT  
		Size: 20.3 KB (20258 bytes)  
		MIME: application/vnd.in-toto+json
