## `eclipse-temurin:21-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:11fefe6ccb04bfee5f342b99c7a06c6140f26b0656d04a2cbc61dec7f9a36778
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

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b17ed58ddb5b3007d5106f6b33f5edce8878a13876959da02c89dcaea21b5974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125935684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7421d8202ccde7da627f3c8091b69c9c5640342abba3e5a9d2b9f3064ea2c239`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 13 Oct 2026 22:57:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:49 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:58:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:58:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:58:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:58:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:96e018865a7455542a612b44ed5f5973fa5ce3706b35273d9256f2da3960156c`  
		Last Modified: Tue, 13 Oct 2026 13:00:37 GMT  
		Size: 35.0 MB (34952271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30a9b2deef4c869f0b54642c5512e6bd35e1878165d22b335c331def19f11a8`  
		Last Modified: Tue, 13 Oct 2026 22:58:06 GMT  
		Size: 37.9 MB (37887994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f906e669670e9d86cbbdf916c431fd961390f75e5c66caef7f747628c6130f97`  
		Last Modified: Tue, 13 Oct 2026 22:58:29 GMT  
		Size: 53.1 MB (53092820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bee7d1bca6018a84adf233806d78cbf91e886dd3b08f88a480bc0b93a6e1a0`  
		Last Modified: Tue, 13 Oct 2026 22:58:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3cf61071cbcd50263167018d636308491f4827ed07a31c9223afe6f7b3d238`  
		Last Modified: Tue, 13 Oct 2026 22:58:28 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2738e0d54b0f54c25292236295aecede173140daab6ebe8d7adf1aad9a52d6cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fb72c968f5095456f0794f704510c72335e018b8ddc4951aa937407df1806f`

```dockerfile
```

-	Layers:
	-	`sha256:ab44a0c11351b6e486a104c52c907dcceeed6e84d7f4d2c5d95fa9573254fbee`  
		Last Modified: Tue, 13 Oct 2026 22:58:28 GMT  
		Size: 3.7 MB (3709305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11f44c2af954b90eb60f91717fc297e097b1aa4cfedb666e63c56ab5000ea23d`  
		Last Modified: Tue, 13 Oct 2026 22:58:28 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e29005811e0db8781f3e8ae5703396edc9850de05f5bce7932487ba6ceee6a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123233607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7853779241574a05f2299fdd0509b8e6709b494366bacd929eece35ff574946f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 13 Oct 2026 22:57:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:17 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:57:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:57:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:be085d7a47c11404cbba8ea172a330ab100dad42557617444fa11a7b10a1bcfd`  
		Last Modified: Tue, 13 Oct 2026 13:00:34 GMT  
		Size: 33.1 MB (33127982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:034acdbb81bbc899f3345ffb5dbbed1890b60757e4365d36f4bc1547ab4cbcf5`  
		Last Modified: Tue, 13 Oct 2026 22:57:36 GMT  
		Size: 37.8 MB (37834545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae6b4d135d6e2135865b6076c98b3fdfedf5ac3a55ea0cacd810f388c9a8ebc`  
		Last Modified: Tue, 13 Oct 2026 22:57:36 GMT  
		Size: 52.3 MB (52268482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400a18b8b73af61f1956620eef865da31279b7ec58ec518ce313a8a243702651`  
		Last Modified: Tue, 13 Oct 2026 22:57:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe2baf3bdacd949b5d9c56a097b8b56ad5e589895fab3ff9a949355e38731a0`  
		Last Modified: Tue, 13 Oct 2026 22:57:35 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ce189bd9a7c8871634b106a42ef3968827eafb3041639e61062e70e49629e7e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9be835e34d64d78e193f7cba37d396a26fa4e5ade6c05bfd1d6e0762a148da`

```dockerfile
```

-	Layers:
	-	`sha256:346b0551f83cd88445a60de7f0dcb8e67d78d68b434d86fbc4488642f71cba00`  
		Last Modified: Tue, 13 Oct 2026 22:57:35 GMT  
		Size: 3.7 MB (3708719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65205919bab600a79b270968604f1892a90eeb28b368e85d6b66d2bb7676dc53`  
		Last Modified: Tue, 13 Oct 2026 22:57:35 GMT  
		Size: 20.5 KB (20505 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:0be31240d6aaeec3a5d917d28be1e9b9c51adae91b39c82cd3a12dc2f337e7ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131898864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b5ceeec89ad21b40a89b1df2fd3dbeda0a4093bb499777f9c80dcc66586e03`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 13 Oct 2026 23:05:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 23:05:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 23:05:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 23:05:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:e4cfde9be115cdffa6474dec2078fd0e58e8f46bf123d71ba0be34158756a9b1`  
		Last Modified: Tue, 13 Oct 2026 23:06:09 GMT  
		Size: 53.1 MB (53111926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6118e7146e0ac44fbfcb469d5b2cdebf951ce4a176f89181e07fee27dba8b7db`  
		Last Modified: Tue, 13 Oct 2026 23:06:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:072cdd6ed587ada14e418179a23012ec452ec9278e273658f8d5a62cfa8165f9`  
		Last Modified: Tue, 13 Oct 2026 23:06:08 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1a229cf13a676df83188ea05a6583540f181c01e23d45973e3211e54a5bfa4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048631143d0e926c2f3c8a5e6b1573bbf4c75d7654b47921efa0df4e6c198a7c`

```dockerfile
```

-	Layers:
	-	`sha256:01eda0fab4b63deec6ba07361dc9fd92c08dd7f3b4e5b9ce42c214f44fdd31c1`  
		Last Modified: Tue, 13 Oct 2026 23:06:08 GMT  
		Size: 3.7 MB (3698050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79fca3b64ad169219ba97dfc9299e5b25cfe5067d31673f5a26e979204f83b95`  
		Last Modified: Tue, 13 Oct 2026 23:06:07 GMT  
		Size: 20.4 KB (20432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:01ca486f815dff4cd5fcf71a6951c7f0c6ccb9ee0e50089185638c649fc26499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122733043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22e5e3296fa9e2cb8a6b2b3a67770fea7c4acf8baee217524b48d185122a50d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 13 Oct 2026 22:55:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:20 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:56:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 22:56:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9a74cc32d0c11450cc3df28e940e72b0fc246b2ea4419b55b451e71c6cb0957e`  
		Last Modified: Tue, 13 Oct 2026 16:45:48 GMT  
		Size: 34.8 MB (34822258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc2d5469008367995ef18871cb5f5b07ae88a3a055de2094e4110fcdfe97586`  
		Last Modified: Tue, 13 Oct 2026 22:55:45 GMT  
		Size: 38.3 MB (38273455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8e5e02dcfd6011a2ddd9b8ae131d66e1b893c06e4ea3f6b2b7ae09e9151415`  
		Last Modified: Tue, 13 Oct 2026 22:57:11 GMT  
		Size: 49.6 MB (49634731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba387a313403d5d76abd5268944de8f02ef39fb9d5851310afed7283a175c99d`  
		Last Modified: Tue, 13 Oct 2026 22:57:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086b786c589e60ca8d9a6d01b76109304e7bfc8a16f9add11b950d25b5c58503`  
		Last Modified: Tue, 13 Oct 2026 22:57:10 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:edf74f3d3f9a55d2d1ffb733f8f94dc95d36dc60d1b0b370404f12afa150c401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3719696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0753ce80f32189fd2835d08787ef292d62ec970319c9ccd213ac90542ca0056`

```dockerfile
```

-	Layers:
	-	`sha256:ded70ba3a4ea2a67f39bb04b15034032c0c5c0ca4a49440d722252cb8d6cecbe`  
		Last Modified: Tue, 13 Oct 2026 22:57:10 GMT  
		Size: 3.7 MB (3699295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb496a46ab87d39aeedc1d02a92a8cabad6529ee129f0ce7d6d3845624c84dac`  
		Last Modified: Tue, 13 Oct 2026 22:57:10 GMT  
		Size: 20.4 KB (20401 bytes)  
		MIME: application/vnd.in-toto+json
