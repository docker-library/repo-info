## `eclipse-temurin:27-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:f76aca24b2b7da1b4d1bb172f15e5bb29c7c36d85e325a534e7a42b2ca87344d
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

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:840f6abc5c1321408789f38c6388143d049a4d6b55c54c72ffecc3eef408ead1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136413674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2804539af90ceadcdfb80abec5b6afe8d674ce1059ecd2ee6fcceffae7e30f`
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
# Fri, 20 Nov 2026 17:44:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:44:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:44:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:44:31 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 20 Nov 2026 17:44:31 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:44:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='c96bc02045a4fffe5225aed2e6834d69351abbefc1eaebc2393fcbebf94b9eed';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        s390x)          ESUM='315afea73a15860c1c58e86227633cef77fb1dc547a626b646a6e6c5aa936031';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='9e15835ca3451a0089aac2c3667c009bc2743b9cb15030a14c6f5ec05f8d5aaf';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:44:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:60a754b40933a6ce48185d0c3dedf5536e7c82bf3efc9ffdc12c68dd300f7a2f`  
		Last Modified: Wed, 18 Nov 2026 16:46:51 GMT  
		Size: 35.0 MB (34995270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdf894105b3a93e3aafc1dc67813b4aa1bdca5910bab109e2399acbc0a446d9`  
		Last Modified: Fri, 20 Nov 2026 17:44:52 GMT  
		Size: 38.0 MB (38036092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751be4a682f6e0dd105f4beb1572f258a64ca74052188da60fe2857bb737b1fc`  
		Last Modified: Fri, 20 Nov 2026 17:44:53 GMT  
		Size: 63.4 MB (63379714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05fc5c306aa9ebe7e8b6ece051e4ef1995fc55049cde124e300fcd3ed12ed431`  
		Last Modified: Fri, 20 Nov 2026 17:44:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670a6c1c4573a1ac5c4ce99d9658f93add16fdf0a57389e1e5c3c086cbd2f697`  
		Last Modified: Fri, 20 Nov 2026 17:44:51 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f8694b21b656c68d4f6abaec78b7725603f7b9cbab3bbf6d9bf151fc8fef7ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3719691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729f36c89c06f75b67310683ea29a883af6504d8502ba233db8c523f620c09e9`

```dockerfile
```

-	Layers:
	-	`sha256:e55b39f8232f935e84a7d77909c04dc288090fc69798a1646479989f7a029095`  
		Last Modified: Fri, 20 Nov 2026 17:44:51 GMT  
		Size: 3.7 MB (3699376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57c68a608d9084867c5d60d8dfc8fee45e0d8d2f055f6896c7b31d144358fb6c`  
		Last Modified: Fri, 20 Nov 2026 17:44:50 GMT  
		Size: 20.3 KB (20315 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:7b1d499a8c9ea997ab8c7cf47bc270ec819719b2f9d9d536a00e186e95298c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133383860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47e8441db55fe6663db3531b74c260dbd523a0b72100bd6ec7fe031a40645b2`
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
# Wed, 18 Nov 2026 21:41:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:41:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:41:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:41:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:41:59 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 18 Nov 2026 21:42:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d77286f01dc2482e483a20c9c80591e3d4c38b27a6e035268a4f213a8e8bd1e8';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='3024a37374f4f73da17560907cb24e42e89148e10c47f423d26b0d70dc1ba254';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='7d50814d945ad726824329658b58e032f003b3faa13c69ad1d0308a6743d60c6';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='104b5d204314aa33dff4a9a5b925e2c58790e9d8cd7097b678e8e4d8cf86ced0';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 18 Nov 2026 21:42:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:42:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:42:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6f85c5180a9a251e7d4c9d164a6aa67da866626553b8733b92ea6191f8d7f9f7`  
		Last Modified: Wed, 18 Nov 2026 16:46:54 GMT  
		Size: 33.1 MB (33105939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3fad907c6d786f359631f8eebb08730a90365a53bf57d3394c078d57894518`  
		Last Modified: Wed, 18 Nov 2026 21:42:21 GMT  
		Size: 38.0 MB (37956275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c351e5bbf9256f5c3729f6662ed93573e1902764dbf8f6f10a1e9781117b066f`  
		Last Modified: Wed, 18 Nov 2026 21:42:21 GMT  
		Size: 62.3 MB (62319048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b83318628c3cd829f1df6081d92abf6442f345fcfbe122080e1d57d4049644`  
		Last Modified: Wed, 18 Nov 2026 21:42:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7013a2df4d1cd10e7ee8548852fee6914a793784a20cbfcd817edeade38eb1b7`  
		Last Modified: Wed, 18 Nov 2026 21:42:19 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2bb322fa4c8db164c3abfd2f5b73ec3f48170d06939d9957292b04d564100999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3719297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b8330dc968607853463395e390543fa091e81e108bc027f88792fdd2a75681`

```dockerfile
```

-	Layers:
	-	`sha256:a65c20f2b9ba424372811fdefd054332c421164539c12ddb6899ff00260108a6`  
		Last Modified: Wed, 18 Nov 2026 21:42:19 GMT  
		Size: 3.7 MB (3698791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e4185b7a7b1682ff3d2d5a07d2fc40858a16316a1f2dbc934086d14bba7f810`  
		Last Modified: Wed, 18 Nov 2026 21:42:19 GMT  
		Size: 20.5 KB (20506 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6645c21839aca6a8fbfd152a1f3735ed806354128c2d40f3181785764cc2d0cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140851471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5544e34a3ad04bfb8f1e1abeeee9bb496166bef2d9ba925455ea3d9682eeae86`
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
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 18:00:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='c96bc02045a4fffe5225aed2e6834d69351abbefc1eaebc2393fcbebf94b9eed';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        s390x)          ESUM='315afea73a15860c1c58e86227633cef77fb1dc547a626b646a6e6c5aa936031';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='9e15835ca3451a0089aac2c3667c009bc2743b9cb15030a14c6f5ec05f8d5aaf';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 18:00:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 18:00:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 18:00:16 GMT
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
	-	`sha256:372521bd5c329704137ec24f34c79c2076a4933d0a38e6b495bde0fa62ae0b37`  
		Last Modified: Fri, 20 Nov 2026 18:00:54 GMT  
		Size: 61.9 MB (61925658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a1872cefebceda528bc311315d65feef89556c2e840adf72d5ff11f345257d`  
		Last Modified: Fri, 20 Nov 2026 18:00:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462a0d878b45575fcb39ae930912a54de4ee5963728bda3ea5abfc2dbdb16312`  
		Last Modified: Fri, 20 Nov 2026 18:00:50 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8a4ce243f1e653ecf2413634ce3293997e50a0f03cb742c9286da3d968472e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3706599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7973f19e5b75421ab01141479ad67a69989b46c614134fb692e7c12b42fd455`

```dockerfile
```

-	Layers:
	-	`sha256:4263f531ef9a00f050183561b1d7ee122ceca077ef8b34d4cd43f00e10ef2cf8`  
		Last Modified: Fri, 20 Nov 2026 18:00:50 GMT  
		Size: 3.7 MB (3686254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78f1c3037c0d2dde03fc1920db608c95d51942c442f78cf9a63c1999327f3de0`  
		Last Modified: Fri, 20 Nov 2026 18:00:52 GMT  
		Size: 20.3 KB (20345 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:8a1dc12546679f16a4143f981e5e5bb8b199ab9d34a84380746f4f2ac1246ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134651499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3011e10ea0f4d7e9bc5d35868c372de5197b7ee92f219936f332800739c2f2e0`
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
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Fri, 20 Nov 2026 17:52:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='c96bc02045a4fffe5225aed2e6834d69351abbefc1eaebc2393fcbebf94b9eed';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        s390x)          ESUM='315afea73a15860c1c58e86227633cef77fb1dc547a626b646a6e6c5aa936031';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='9e15835ca3451a0089aac2c3667c009bc2743b9cb15030a14c6f5ec05f8d5aaf';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 17:52:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:52:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:52:07 GMT
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
	-	`sha256:098c1780c54066cb56c9c0b832da3f1f332c95c7d387585aa11f2d184faa40c2`  
		Last Modified: Fri, 20 Nov 2026 17:52:43 GMT  
		Size: 61.4 MB (61405802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9d7017c991bd45ae3b13dcbb5b43062b34645e2ddd55e6bc026c5ff4b0fcad`  
		Last Modified: Fri, 20 Nov 2026 17:52:41 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cfa4e7240719366eb8ad07c0e467767e3fdb47fc90fbf024f7636beea83d38f`  
		Last Modified: Fri, 20 Nov 2026 17:52:41 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c670089fa45c6138d0f2b802fe64483ad06f475a4713ec5b30bb202eaa4d5b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3707813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b50f4d8256909d768821eab4d6ac7aaf72dac5a63adc8d63f5a15ce94da17a`

```dockerfile
```

-	Layers:
	-	`sha256:0b7cceeee57748b1310ce84ce27f66210c26437e26cd707f3ca33211f8222835`  
		Last Modified: Fri, 20 Nov 2026 17:52:41 GMT  
		Size: 3.7 MB (3687499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f57420eeebeb0d4066aee56929ead163905d8db2c79cf072cec111f3ed6fc77`  
		Last Modified: Fri, 20 Nov 2026 17:52:41 GMT  
		Size: 20.3 KB (20314 bytes)  
		MIME: application/vnd.in-toto+json
