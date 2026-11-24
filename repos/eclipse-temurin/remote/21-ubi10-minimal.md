## `eclipse-temurin:21-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:212b611ea2eac543f45130a86f94a48008c636aeba812154c37a1a7476262af5
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
$ docker pull eclipse-temurin@sha256:49e7de198bdab895f371f638921fc64ad6dd37a1fe2438ac6a6e9a4fc0c24d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231444763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00af04f77560467971fcd7d9885651aa779363d15cafec15746d5c699e4de185`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Mon, 23 Nov 2026 22:08:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 23 Nov 2026 22:08:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 22:08:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 23 Nov 2026 22:08:38 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 23 Nov 2026 22:08:38 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Mon, 23 Nov 2026 22:08:44 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:08:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:08:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:08:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:08:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:69350ad525f7b897d7ee64aead074bc110259aa291005b87b0609cc9f54f5aac`  
		Last Modified: Fri, 20 Nov 2026 19:50:01 GMT  
		Size: 35.0 MB (34957031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f085fbcd2c8fc4f148972d76d574f4161bc7ea98304f0465438ac5e2d11be59`  
		Last Modified: Mon, 23 Nov 2026 22:09:03 GMT  
		Size: 38.0 MB (38038178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3485babaaa9772bbfb39191f41f5aa92e7ec62e447f0313ec72df5c924e13dfc`  
		Last Modified: Mon, 23 Nov 2026 22:09:05 GMT  
		Size: 158.4 MB (158446955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31ab80d89f7aa1ba7a21ae886b2a84fe377d2dc5d99b784d9f33a98ad68dbd9`  
		Last Modified: Mon, 23 Nov 2026 22:09:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c021e4fee95fb4ada6d06f010bdf64d9ce368ce538e9aba3ca6372e98f3816ff`  
		Last Modified: Mon, 23 Nov 2026 22:09:01 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:025e4e025ff4a9b7eb841294ce4b2e3486e50668dd79a8ddf9e90566303d8724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5e47205486d5dfca4b5b77573d35f47af5ed80ce77212f7419ef05cdf2e9ada`

```dockerfile
```

-	Layers:
	-	`sha256:5f700dd100593d84eed09a5822954a9eef804e25bfbad6b37c2fd5c5401fca3d`  
		Last Modified: Mon, 23 Nov 2026 22:09:01 GMT  
		Size: 3.8 MB (3780641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:954a40501c1685f1ff8cf6464c4690f858b87a4433a633809f74419e967fe44a`  
		Last Modified: Mon, 23 Nov 2026 22:09:01 GMT  
		Size: 21.3 KB (21301 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e67318bb3dd7a440c01cfc32804d71c20f51b8c8b3b5ff94e6133e7ac9f55673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.8 MB (227761721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dfebf32e876f4a69d90ab33d5720e1fba82cb1ba2db7176ba718a6a89c5b39`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 21:41:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:41:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:41:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:41:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:41:02 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 18 Nov 2026 21:41:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 21:41:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:41:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:41:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 21:41:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6f85c5180a9a251e7d4c9d164a6aa67da866626553b8733b92ea6191f8d7f9f7`  
		Last Modified: Wed, 18 Nov 2026 16:46:54 GMT  
		Size: 33.1 MB (33105939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2ee7819a32a1a696f1bb81a4c0c5ecbcc35afa92592fb522ccf959002f49a1`  
		Last Modified: Wed, 18 Nov 2026 21:41:20 GMT  
		Size: 38.0 MB (37956201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7258f0f78e6a321ba8cd5c61ae95ce1f0c94b15cfef04f2955db86227c26f7a6`  
		Last Modified: Wed, 18 Nov 2026 21:41:55 GMT  
		Size: 156.7 MB (156696981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69aba9b6a34903600c7e5db012683f670b263489cb7a5c418b6998d9b0976d96`  
		Last Modified: Wed, 18 Nov 2026 21:41:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd5ff119eab8333d75df2fbcd6cad1d619eaad8723d01c7f0372a9b67ab60e7`  
		Last Modified: Wed, 18 Nov 2026 21:41:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5be24e17b7402de710ac5017ee422349a12ff2aa0c8d41139119268fa81c865f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:414c70590e083eb0352dc617797c79cd3944b94b253cc2f7774c60275406eb3c`

```dockerfile
```

-	Layers:
	-	`sha256:a3714eda1d91b67aa6c863a6500dee3045aebed0db059aae1482fc6e724387cb`  
		Last Modified: Wed, 18 Nov 2026 21:41:52 GMT  
		Size: 3.8 MB (3780047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7740aa9da36eaad87e90f0351a3fd3eb45479e2a48016ea86ed94dfb68822856`  
		Last Modified: Wed, 18 Nov 2026 21:41:51 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:136d5e5659a1555424574dec2fc6de028e1fd77b3255257e3e237a7d4740d613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.6 MB (236550229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a50d4a25a25d5d7d2727f40b25dca2531bf7956b8d6c043923bb12fbefb3b8a1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Mon, 23 Nov 2026 22:12:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:12:13 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:12:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:12:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:12:14 GMT
CMD ["jshell"]
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
	-	`sha256:24f0fae31ab4d19b2f9b5b710422e1f107548c0532a10044f00d0beb4578e163`  
		Last Modified: Mon, 23 Nov 2026 22:12:57 GMT  
		Size: 157.6 MB (157603660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5bf76559484eab73704b3e75a119fb6b475416ff6b134932b8712748d31704e`  
		Last Modified: Mon, 23 Nov 2026 22:12:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628ef2ba0704ab1384b7ed4db3bb401608167838a112106b9048a01189c52c33`  
		Last Modified: Mon, 23 Nov 2026 22:12:53 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7c11016881adc0a7bcc6d1ff3c01ff6659a7ee1e0e43b8a6fcb0e5320398fc30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3787564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d742bdc1b90911d00a4cc1be7516184d0f0dab53a655b7e1032eadd15fc67523`

```dockerfile
```

-	Layers:
	-	`sha256:a9b70e213a05775048f4f05dcf88e4dd19c2949d621fd2d44aab5c10992e11a4`  
		Last Modified: Mon, 23 Nov 2026 22:12:53 GMT  
		Size: 3.8 MB (3766227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34e227121f632917cdd8759a4daecf17a9c767929724622cc161dd9d2c1df662`  
		Last Modified: Mon, 23 Nov 2026 22:12:53 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:f6aec7f3ffb79816e42616fa6ec3a3321999182185aaa9499866acd5a7d57e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220175863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1214d626e81f2ca6eefd38c2d4f0d35daa8576bc4cc8835b53d4f78c956bee4e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Mon, 23 Nov 2026 22:06:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 23 Nov 2026 22:06:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 23 Nov 2026 22:06:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:06:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 23 Nov 2026 22:06:02 GMT
CMD ["jshell"]
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
	-	`sha256:6bf598efd98aa1ef2d6b1ce444e67b12fb9a37dccb8e8423abcc75db5eadb8bd`  
		Last Modified: Mon, 23 Nov 2026 22:06:31 GMT  
		Size: 146.9 MB (146910125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c93d31121714c2cce6e8ea48b03b8bd2a502fb633604afee1bfd4cc9471876`  
		Last Modified: Mon, 23 Nov 2026 22:06:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09c7a5ad222e58a0e9a23b823c930746d99765e0f4e29661880eb31e3a46ce9`  
		Last Modified: Mon, 23 Nov 2026 22:06:28 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ab654a5d95f0f5d185017053a2ee5d7467883f6c0522a21ad9e37db182c0327c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3786285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d49b25a06ee244c2529bb8574087dc5172d7e7910e33a219a268e1d2d97a0d2`

```dockerfile
```

-	Layers:
	-	`sha256:c72b5b30b337dae465ece2bcb6d86c672b28b60587870cd29b8033ac34c9c2eb`  
		Last Modified: Mon, 23 Nov 2026 22:06:27 GMT  
		Size: 3.8 MB (3764985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0c74d6fc2575d0972e4e8d105274a71cec5bf0d2ebe34c5009f1d2d0a1cc4c4`  
		Last Modified: Mon, 23 Nov 2026 22:06:27 GMT  
		Size: 21.3 KB (21300 bytes)  
		MIME: application/vnd.in-toto+json
