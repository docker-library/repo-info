## `eclipse-temurin:26-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:e4cc9c1898b13538dffeaedaccd93210c712f9638bfb6d6e09fb5c24015589eb
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

### `eclipse-temurin:26-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0c11be19a5c22c7b890b8b678951b6380aaa3abe3ed0cec27ad241fd3170dcd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137122893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b6697d70d6762a4c5635b14fe56d833272e9694f4047b50b2fed883f82a071`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Tue, 04 Aug 2026 21:04:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:04:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:04:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:04:11 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:04:11 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 21:04:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 21:04:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:04:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:04:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ac98f959ddf9baac24d46ce09bc63e26a45b74b502da97c83be3cdfcd2b5bad0`  
		Last Modified: Mon, 03 Aug 2026 18:50:26 GMT  
		Size: 34.9 MB (34906609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd912b783c7df0f75483d2a0ba97f15ba9de0ace512203aac981e74b196e7b83`  
		Last Modified: Tue, 04 Aug 2026 21:04:27 GMT  
		Size: 37.8 MB (37781192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddd6d8d1a5d35c2d52c86c4b82ca281a18e855b2d0ad015b831a633c706a752`  
		Last Modified: Tue, 04 Aug 2026 21:04:53 GMT  
		Size: 64.4 MB (64432492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c49d9e7a470ef95e60f9200be38bc44cf5516d9948d9b443ef4eab627af9eab`  
		Last Modified: Tue, 04 Aug 2026 21:04:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbda005de9620cfea9f4208f65ec6bbec46cfc2259a4e8758549b9571de89df`  
		Last Modified: Tue, 04 Aug 2026 21:04:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f5a7b0853f508c85dd3de038d8a2c0bd6530dc58abd6a0bf956db74c1054fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3733953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7b8ebb55d53b71738fea0262d4e2a5eb9f2cc41094ec8dd4d591e50141e7204`

```dockerfile
```

-	Layers:
	-	`sha256:dbd068c4015b2ecc9baf843e955fbb4adb0a55af63b8b305858f7496b67cfefb`  
		Last Modified: Tue, 04 Aug 2026 21:04:51 GMT  
		Size: 3.7 MB (3713624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6225330e29c7aa66b715bc5e2615e86ebff0134adea438729b6102f78f122b78`  
		Last Modified: Tue, 04 Aug 2026 21:04:51 GMT  
		Size: 20.3 KB (20329 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9d0119e727ffa6c32b21fb09c1efb44013775be38aa881047033c2e29befd432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134102930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b43b0288ad028884d7efca6365c2a0a10bef6b0fb769ae0b89cb1ce724cba9dd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 21:05:08 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 21:05:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:05:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:05:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:9494998b2e952c218343f747475e4f9528389e9513cb83b826c6d372da33ffa9`  
		Last Modified: Tue, 04 Aug 2026 21:05:24 GMT  
		Size: 63.3 MB (63341330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec13b997110c5316a8a10ff7d9265e5130d7acf82ded712ca0d2689cb99264b`  
		Last Modified: Tue, 04 Aug 2026 21:05:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9ff76192d70e47e3fe067f28019092d01550f3c707c6433d9a2cdb89067dbc`  
		Last Modified: Tue, 04 Aug 2026 21:05:23 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cc307db5c565c24a3a83358b4b78d770d928156ab8b6913a7d86a4b79d44ce2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3733469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542f341479595590e22a29727eb0b816835a4e9110c53bcbb2994fa36858f447`

```dockerfile
```

-	Layers:
	-	`sha256:3b6d22caca821c173b09b678d59f2518e6539aa2bce24b3d17a7cf406ad46379`  
		Last Modified: Tue, 04 Aug 2026 21:05:23 GMT  
		Size: 3.7 MB (3713035 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70e7efe484a348a6b7dd0554547f2cc7da881738fdd9ba3815612f295acfbe54`  
		Last Modified: Tue, 04 Aug 2026 21:05:22 GMT  
		Size: 20.4 KB (20434 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:60747fe0947c41badfe0f4541e1fa2cb86e89d8fad9084ca51ff81dcbe1a30f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.4 MB (142379401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c2eb5480786bc05bddcef4cffd8ef116b5ebeae92671fe5bdc5f996b30f1b8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 21:02:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 21:02:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:02:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:02:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:66a8ca38b6de650fca7b8e552d9ee88b5f3f0a52d9520437252a4de7c1611565`  
		Last Modified: Tue, 04 Aug 2026 21:03:23 GMT  
		Size: 63.8 MB (63848190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319be19492b99e314ac446f2f91412d3d92a51cc89f8bc4356aa332f9a64d26f`  
		Last Modified: Tue, 04 Aug 2026 21:03:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55912ee4e66f3b3f4cc2d1b62753e4c907bda40aa0fa11f63cabec3d32a3b20`  
		Last Modified: Tue, 04 Aug 2026 21:03:21 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:379f3ce33ea6d2abf41b63443ab079004b7e1bdab3ef5156635f68e36019fbcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3722108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a2d7fe3451b9b3392fc6524ff8b29f0acf13e683cc41bd82b90f99ecc87503`

```dockerfile
```

-	Layers:
	-	`sha256:63ed88f97ace0ca1cad0883aa4e9a5d769713582c437729471813009e981051a`  
		Last Modified: Tue, 04 Aug 2026 21:03:21 GMT  
		Size: 3.7 MB (3701748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9921e685bacf373bba6c04124928d706b7a67f3ae6e981eaa00041bdcca797f8`  
		Last Modified: Tue, 04 Aug 2026 21:03:21 GMT  
		Size: 20.4 KB (20360 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:ddfe48f81ec8f4c4b7b82ee4ee01237fe81a04ee6049660b5d7b1c31eeb11672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 MB (134964603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e5bbb43042f850fb5de760d92c65e4abaf0473e949d00407b9ae6ef87682da`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 21:42:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64le)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        x86_64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 21:42:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:42:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:42:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:494b827256e87615f911ef7073926aa15b60f47cb8e358a0ad0c291bde51c235`  
		Last Modified: Tue, 04 Aug 2026 00:19:38 GMT  
		Size: 34.8 MB (34756245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d24d23bdfd8067c188b9be94def09bef875f938a20f5d7b3667f74524e1baee`  
		Last Modified: Tue, 04 Aug 2026 21:36:52 GMT  
		Size: 38.2 MB (38155873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868ed4e972ddd8f61bab0d7f8eb2638624fe21c16eff186c28d3f0ec55235285`  
		Last Modified: Tue, 04 Aug 2026 21:43:19 GMT  
		Size: 62.0 MB (62049884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039078cadeade55a95faa25854dbe942db40b39d0547063816639adf8d77349c`  
		Last Modified: Tue, 04 Aug 2026 21:43:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825486e55355235fa9700a49e3536a903b7ba007a0439cd6f43f7e800a148e01`  
		Last Modified: Tue, 04 Aug 2026 21:43:13 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0d56d9b56096f5cabcde29c6b5d7f9e23405707f101f58ec0854efef94be73af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3723323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c674fcd48b54b3433c7531968111aff9b9a03f729872e8cfcebbbcafe18e9d64`

```dockerfile
```

-	Layers:
	-	`sha256:1f7bb0e9f09ca984fdfc69abdd94807aa993ab44fb0055364f3d985cce3fadb4`  
		Last Modified: Tue, 04 Aug 2026 21:43:14 GMT  
		Size: 3.7 MB (3702993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe0e719f8a02876e648779c92959a7ce789ffab073ed03f8e910dd2afafa0a62`  
		Last Modified: Tue, 04 Aug 2026 21:43:13 GMT  
		Size: 20.3 KB (20330 bytes)  
		MIME: application/vnd.in-toto+json
