## `eclipse-temurin:17-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:2f4fac68aa5e7d6b988efca4a455ca4857c92581aa568fbb1bcdd6955c7349dc
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

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:47979e25f0f3aa68c266bef955804cdc8274845a1f97ff0e860f200f53f5e0bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120658140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b38e33e77b070583d41cf7cfb2c15f1d89ac7e0c99e019c9bca1e15d13be394`
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
# Fri, 20 Nov 2026 17:43:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:08 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 20 Nov 2026 17:43:08 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:43:12 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4a1705a614ee9a321777eeed02a33e92e36a85694693a7522f461c8dbbbe45cd';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='77bf9f135bc14491da6abbc7f0da1ca196e18570dfdcb7ff8cfff8822689438f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='5a092a0bc21de4c3d855480edd7945be9cfe157b38cdb84dac280511893bb009';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:43:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:60a754b40933a6ce48185d0c3dedf5536e7c82bf3efc9ffdc12c68dd300f7a2f`  
		Last Modified: Wed, 18 Nov 2026 16:46:51 GMT  
		Size: 35.0 MB (34995270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff66528f6f517d586ee23f9eca051f8be3045ec2df247720dc85c6f6b0376d7c`  
		Last Modified: Fri, 20 Nov 2026 17:43:27 GMT  
		Size: 38.0 MB (38036093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec927d798743069be4a492978a5eb3660d1f6b2304bffce67e2b9c4cff6cd514`  
		Last Modified: Fri, 20 Nov 2026 17:43:27 GMT  
		Size: 47.6 MB (47624179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04cd9227d3cfd6539c19437e4e9e906f879d11e97f9ab56c2aba5403640cb53`  
		Last Modified: Fri, 20 Nov 2026 17:43:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5dfac7e6f1d2bd82cc09d46a23a4205e1d68226d61112137dcdc3e242544c5`  
		Last Modified: Fri, 20 Nov 2026 17:43:25 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b0f989e443a9b0a5ae954a440389d13db99447dee7700a63289a1eb07fd70bc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dbf6e3468ebeaf249495966445178de316fe20c3bb33ee74a39fd52cf2febd`

```dockerfile
```

-	Layers:
	-	`sha256:e0734dd347e9117a2c0fcf043a4c73f7b7b9fffcadc5d1a678278ec6a75ea1d2`  
		Last Modified: Fri, 20 Nov 2026 17:43:26 GMT  
		Size: 3.7 MB (3694298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0cac4bd609f558ab65e8e4466d40e471a562beb385b6f1b567b31f3bca6310d`  
		Last Modified: Fri, 20 Nov 2026 17:43:25 GMT  
		Size: 20.3 KB (20336 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:10a9a2c3d297954a20cb06b6bed11ae75b1e435cbe10ce12b6a6374bf8f24905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118184411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e65c2a4815271f04b4fe438b2aca2145c86063917906bb16364c8a64cbbe9cb`
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
# Wed, 18 Nov 2026 21:41:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:41:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:41:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:41:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:41:29 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 18 Nov 2026 21:41:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 18 Nov 2026 21:41:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:41:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:41:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6f85c5180a9a251e7d4c9d164a6aa67da866626553b8733b92ea6191f8d7f9f7`  
		Last Modified: Wed, 18 Nov 2026 16:46:54 GMT  
		Size: 33.1 MB (33105939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923c14b8edf580e0d929088390c71a9e1d4682f7a5b37858ea1df9b5dbaaafa3`  
		Last Modified: Wed, 18 Nov 2026 21:41:47 GMT  
		Size: 38.0 MB (37956188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259c252cd5a19bd189c33defcc3aefb573f2c3a685b3b0aaad4ead82b1141df9`  
		Last Modified: Wed, 18 Nov 2026 21:41:47 GMT  
		Size: 47.1 MB (47119685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a67a37ba6cbdc5bf5d3e2c3b6050a4b741746a25c9e1b3ea029d4387b84aa1`  
		Last Modified: Wed, 18 Nov 2026 21:41:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01233442c467528c14a0947ce716342591756b47c61476d5f817c68efbd3302`  
		Last Modified: Wed, 18 Nov 2026 21:41:44 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:637c25b2ad112e6f37f0ab803a002c69077f6de9305df854feeef2094b9b0fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af745b9bae5c445c98ecc92b9036c7cdb742ffe02eb05d9c865afa04c06dc645`

```dockerfile
```

-	Layers:
	-	`sha256:6b89ddac27142449ff7ec149b08540fcdf5f7c019eb2f9ddb6e449548550e892`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 3.7 MB (3693700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b395eb3322cabd9877d862d6fdc4ec56d2962fed60b956f95097e66b9909097d`  
		Last Modified: Wed, 18 Nov 2026 21:41:45 GMT  
		Size: 20.5 KB (20458 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:efd138b55b87cca8375e80ca52dd8dbbdea6e0a1ea33ba535bbed1f693191c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125925772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77213724ce92c46ac049e842a74da8497b449da9198701e60a0092101c0a2d98`
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
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:51:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4a1705a614ee9a321777eeed02a33e92e36a85694693a7522f461c8dbbbe45cd';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='77bf9f135bc14491da6abbc7f0da1ca196e18570dfdcb7ff8cfff8822689438f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='5a092a0bc21de4c3d855480edd7945be9cfe157b38cdb84dac280511893bb009';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:51:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:51:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:51:01 GMT
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
	-	`sha256:f17955ba76bef900edae5fab5229d5a58fdf55dff3dd63f7658bed8ed29f12e6`  
		Last Modified: Fri, 20 Nov 2026 17:51:32 GMT  
		Size: 47.0 MB (46999962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00bf105e2fb289885c1940afb421c49f5ce36cb4854568f84ed86125db15730`  
		Last Modified: Fri, 20 Nov 2026 17:51:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4249d9266307519e9a2dd0f516d2804240ab82118a7dba3ef3f1a13b607bd3`  
		Last Modified: Fri, 20 Nov 2026 17:51:31 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:00cf3c2efbdd98c2cc201fbff5c148b391222309e8dee24a426c6629a4ab3915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3702164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e5c9d8851a3513a7eda5b99be3f6dd0368d965331608764fa0a83d381cfba47`

```dockerfile
```

-	Layers:
	-	`sha256:38aea301c8545c0ed0510c538853aad955dec04e83f358e82c91e035c15a9861`  
		Last Modified: Fri, 20 Nov 2026 17:51:31 GMT  
		Size: 3.7 MB (3681797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6927134f6ab3fb48f13f66e9eca27833921fb8c1453c8c6551efed9796cc44aa`  
		Last Modified: Fri, 20 Nov 2026 17:51:31 GMT  
		Size: 20.4 KB (20367 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:e403c2283e2ba90ec07558a0fc86cb8425c262d8df07b43f5ea5a7149d94abc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117486537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6f40aab3a577212bed97bd2496e6efb79c6b8c3ff0ce1b4b341ba5b293fa70`
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
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:47:43 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4a1705a614ee9a321777eeed02a33e92e36a85694693a7522f461c8dbbbe45cd';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='77bf9f135bc14491da6abbc7f0da1ca196e18570dfdcb7ff8cfff8822689438f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='5a092a0bc21de4c3d855480edd7945be9cfe157b38cdb84dac280511893bb009';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:47:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:47:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:47:44 GMT
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
	-	`sha256:879afcb4c9c1151b97ae178b57cdb82de98eef699a83254512941cb14a4e6f09`  
		Last Modified: Fri, 20 Nov 2026 17:48:07 GMT  
		Size: 44.2 MB (44240836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a290d8f57dbd6f8fdb1557f1757ef50922fb2f2b5c43b0893fac558e70527a`  
		Last Modified: Fri, 20 Nov 2026 17:48:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d465f7545306c6e67bf0e6cd23a4c01914112b48f879a4837480ada13e63bd`  
		Last Modified: Fri, 20 Nov 2026 17:48:05 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1c9a659513c3470e393ea00c1b16179e94ad9d65ae0bda35dc34959bccfbed8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3703379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5748aa51ea7923dc69c43c7de02f3ae4c5b9f0c23972de0189b0b19033b36a0c`

```dockerfile
```

-	Layers:
	-	`sha256:b08ca221e04111422b2838bcb4d657adf8e6075fe5d6166bdd40115a5f78a854`  
		Last Modified: Fri, 20 Nov 2026 17:48:06 GMT  
		Size: 3.7 MB (3683042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0df4deff005b6e4023b5245df0eece9960959276203616ac3b1daac188ec8d7f`  
		Last Modified: Fri, 20 Nov 2026 17:48:05 GMT  
		Size: 20.3 KB (20337 bytes)  
		MIME: application/vnd.in-toto+json
