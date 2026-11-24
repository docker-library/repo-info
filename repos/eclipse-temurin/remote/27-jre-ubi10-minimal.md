## `eclipse-temurin:27-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:0bacd16df2b3f11ca45a7af71b9abaaf9f19d95de2ebb63a566d477fa841da83
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
$ docker pull eclipse-temurin@sha256:56408efb244cb5aadad0134da7232792a4f9922c6209fe5ad61c7cfaf8ef416d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136377722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963c7638e075da238a001072cd64a1e788f2320d8b25b57940cb7a4148533d7a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:51:16 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:51:16 GMT
ENV container oci
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:fb43f9b318d9eb1385df7a36cdfa57b8acbd84afb7b61664d2e25101a312d55a in /      
# Fri, 20 Nov 2026 17:51:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:51:17 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:9facee0b5cdcedad16ad4e0b1c536c91a058e00f974062e8ebf605fae2363b30 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:51:17 GMT
COPY dir:9facee0b5cdcedad16ad4e0b1c536c91a058e00f974062e8ebf605fae2363b30 in /root/buildinfo/      
# Fri, 20 Nov 2026 17:51:18 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:50:47Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:50:47Z" "architecture"="x86_64" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:50:47Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:09:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:09:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:09:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:09:01 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:09:01 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Mon, 23 Nov 2026 22:09:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='c96bc02045a4fffe5225aed2e6834d69351abbefc1eaebc2393fcbebf94b9eed';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        s390x)          ESUM='315afea73a15860c1c58e86227633cef77fb1dc547a626b646a6e6c5aa936031';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='9e15835ca3451a0089aac2c3667c009bc2743b9cb15030a14c6f5ec05f8d5aaf';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 23 Nov 2026 22:09:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:09:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:09:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:69350ad525f7b897d7ee64aead074bc110259aa291005b87b0609cc9f54f5aac`  
		Last Modified: Fri, 20 Nov 2026 19:50:01 GMT  
		Size: 35.0 MB (34957031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a15d9d7f7e6ed1964641caed4790cc43a7976172997b96dda65c6042dfc4da`  
		Last Modified: Mon, 23 Nov 2026 22:09:22 GMT  
		Size: 38.0 MB (38038308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f6ea3e1327c73c7011b9aa09fae2f0d0ec5a7bc6ec9883d00f2f7f3f5d0f54`  
		Last Modified: Mon, 23 Nov 2026 22:09:23 GMT  
		Size: 63.4 MB (63379783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ec0a57c4bdefdafe5829eab2475fcdb4994cb2a69eadf3926cb4b229a0738e`  
		Last Modified: Mon, 23 Nov 2026 22:09:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd7cdce73742c577215c967670fc882107dedb80659b8eb94a4ca91fde2955a`  
		Last Modified: Mon, 23 Nov 2026 22:09:20 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0a4e5ae01e3b108013ac48d97eb96a91c0498c4783fbaf91b5d7c8b316ede9eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3719699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e710d61e7aee04e4b1aac270acf8b09d4b22f4f82a08076dae970fe830bde6`

```dockerfile
```

-	Layers:
	-	`sha256:5c4ddf3e1aab716b5fef89fd4cf0572f4554d3c899a9be9a8b89475966e2f53c`  
		Last Modified: Mon, 23 Nov 2026 22:09:20 GMT  
		Size: 3.7 MB (3699384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dd45cb60936ea97bf8e9eaaa2487ce44acf1f2159ce0d37fda5a5310c377c7e`  
		Last Modified: Mon, 23 Nov 2026 22:09:21 GMT  
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
$ docker pull eclipse-temurin@sha256:ff7f0fd4da6ca5301c68969aecf65fcd933b4af62f7c255fb81bbcb8afb47e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140872199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3069e61b1cc1caffa378f93b1ef1cab28142952344bc6f5f143f59fb73ffe06a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 17:55:46 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 17:55:46 GMT
ENV container oci
# Fri, 20 Nov 2026 17:55:47 GMT
COPY dir:69c4a5f44760f72f6770da9de6633494a9c5e65a69bf4d66269d9de7615fed50 in /      
# Fri, 20 Nov 2026 17:55:47 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 17:55:47 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:55:48 GMT
COPY dir:54af12dbebd09324eb9be769431d0a769e8becf92c0e9ef5a409e55f2686f435 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 17:55:48 GMT
COPY dir:54af12dbebd09324eb9be769431d0a769e8becf92c0e9ef5a409e55f2686f435 in /root/buildinfo/      
# Fri, 20 Nov 2026 17:55:48 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T17:55:25Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T17:55:25Z" "architecture"="ppc64le" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T17:55:25Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:57 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Mon, 23 Nov 2026 22:15:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='c96bc02045a4fffe5225aed2e6834d69351abbefc1eaebc2393fcbebf94b9eed';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        s390x)          ESUM='315afea73a15860c1c58e86227633cef77fb1dc547a626b646a6e6c5aa936031';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='9e15835ca3451a0089aac2c3667c009bc2743b9cb15030a14c6f5ec05f8d5aaf';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 23 Nov 2026 22:15:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:15:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:15:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:121f50aaab5447d4df4cfa143b5a88ea3d5b5b6c0115df8351485bd08d79e26a`  
		Last Modified: Sat, 21 Nov 2026 00:28:33 GMT  
		Size: 39.1 MB (39139587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfa6add2a4091ddf1bd23fd26e972f51e89affa7c7cf602a1120dde37fe1f8f`  
		Last Modified: Mon, 23 Nov 2026 22:06:47 GMT  
		Size: 39.8 MB (39804383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0afc385761dd7b72058e54a7f13d950c316646534cfc3efd4088bb095d40437`  
		Last Modified: Mon, 23 Nov 2026 22:16:00 GMT  
		Size: 61.9 MB (61925632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cff134cb756464cd80398aae42ea47473c8f9bc51cc618a017b81199bb5279`  
		Last Modified: Mon, 23 Nov 2026 22:15:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c450a51a24259732a99c8abcca95cddc71e1fc5c9a362390ba407e0801c140`  
		Last Modified: Mon, 23 Nov 2026 22:15:58 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bf016047b71ebf488eb09f9846c5eb83cf98ee60ea08e92ec0fcf467df6c46fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3706607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1661ee6b85a8d4d7f5a8a8791af4d187609523c9db2f4aaead60393673d62277`

```dockerfile
```

-	Layers:
	-	`sha256:7b11b465fdcd492a9070b7a689a9743dc84287976066e15e1780c0e7eadc8962`  
		Last Modified: Mon, 23 Nov 2026 22:15:58 GMT  
		Size: 3.7 MB (3686262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7030f6296d866e3c1b82884d200b3b2f182744d6bf242da32ccc5a05cebc2a76`  
		Last Modified: Mon, 23 Nov 2026 22:15:58 GMT  
		Size: 20.3 KB (20345 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:aa80cfda77197ecc2d2caed6c4c48bee93204986ec6fa363622a9c98e434c0ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134671540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ed833214736742929faea75ee5f46020ff323406886415aab9623ec5908928`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:41:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 20 Nov 2026 18:41:35 GMT
ENV container oci
# Fri, 20 Nov 2026 18:41:36 GMT
COPY dir:bb642dabde68ede78a99c44f194b32940f427d53deadbbba1ca1e03d5d70d3f1 in /      
# Fri, 20 Nov 2026 18:41:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:41:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:41:37 GMT
COPY dir:ce8c7616fd3133801f989904333a38e0250534168adf63c4608906babe0ddb07 in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:41:37 GMT
COPY dir:ce8c7616fd3133801f989904333a38e0250534168adf63c4608906babe0ddb07 in /root/buildinfo/      
# Fri, 20 Nov 2026 18:41:37 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:40:13Z" "org.opencontainers.image.revision"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "build-date"="2026-11-20T18:40:13Z" "architecture"="s390x" "vcs-ref"="0b769d32f2673a0a3230de4ecb28b42ea251c690" "vcs-type"="git" "release"="1795196920"org.opencontainers.image.created=2026-11-20T18:40:13Z,org.opencontainers.image.revision=0b769d32f2673a0a3230de4ecb28b42ea251c690
# Mon, 23 Nov 2026 22:05:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:05:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:05:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:05:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:05:53 GMT
ENV JAVA_VERSION=jdk-27.0.1.1+4
# Mon, 23 Nov 2026 22:07:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='c96bc02045a4fffe5225aed2e6834d69351abbefc1eaebc2393fcbebf94b9eed';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_ppc64le_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        s390x)          ESUM='315afea73a15860c1c58e86227633cef77fb1dc547a626b646a6e6c5aa936031';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_s390x_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        x86_64)          ESUM='9e15835ca3451a0089aac2c3667c009bc2743b9cb15030a14c6f5ec05f8d5aaf';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.1%2B4/OpenJDK27U-jre_x64_linux_hotspot_27.0.1.1_4.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 23 Nov 2026 22:07:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:07:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:960bd244aea4fa3577ec8d25ef21d2c141b091ee1a0d31fb07f26447b87416e9`  
		Last Modified: Sat, 21 Nov 2026 00:28:14 GMT  
		Size: 34.8 MB (34842541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4aeb8656adda87810d5ef682d1a2066b8164851f5776e9090e516f6c3aef11`  
		Last Modified: Mon, 23 Nov 2026 22:06:29 GMT  
		Size: 38.4 MB (38420595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7a2089aeb0fc045e64b464ef79eb8d73a941766d32a6a50b0353d6d2b53ad1`  
		Last Modified: Mon, 23 Nov 2026 22:08:11 GMT  
		Size: 61.4 MB (61405805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85266edf682d95bea98e42783fdf2a18f4b81c6cbb6cfa64d575ff47e574b0ad`  
		Last Modified: Mon, 23 Nov 2026 22:08:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f090519e1f84691da5655faf4aad3ea23c0ea76611fee44ccf7f762abfab97`  
		Last Modified: Mon, 23 Nov 2026 22:08:10 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b08c79d22a645b21d7ee85281b2be1eb3810a5bb6a935a2dac31ceff98ad8d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3707822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea8e14695cecb967968c7083ef2e187c04301dcf7cf1700616ed2d2421de698`

```dockerfile
```

-	Layers:
	-	`sha256:00d385cf6c10959d0a55da65e1b2b2ae1f3164b1bcf391ecbb98be7f85cb3695`  
		Last Modified: Mon, 23 Nov 2026 22:08:10 GMT  
		Size: 3.7 MB (3687507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:646d9a23e8b85d58865d55fb3ad21c819e6152aac5b07818594157f0644b3ea8`  
		Last Modified: Mon, 23 Nov 2026 22:08:10 GMT  
		Size: 20.3 KB (20315 bytes)  
		MIME: application/vnd.in-toto+json
