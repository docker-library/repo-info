## `eclipse-temurin:21-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:f07c5a88b7e3702bdbbb32aa78813cca829ba96c9cc2d0f75d79ca0b4bad855e
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
$ docker pull eclipse-temurin@sha256:fbe1007c9b9698f296c516af09d576725933916791f2faf081ea833bda9667bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231480923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404d73978c275f3e4f45bb7389527ecbec3fbdec515d84e31e366d860ce5704b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Fri, 20 Nov 2026 17:43:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 20 Nov 2026 17:43:41 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:60a754b40933a6ce48185d0c3dedf5536e7c82bf3efc9ffdc12c68dd300f7a2f`  
		Last Modified: Wed, 18 Nov 2026 16:46:51 GMT  
		Size: 35.0 MB (34995270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21b9fb1301b4411ed97f16986bfb4d4af0cdd397af4140f6c4da736a8d568e1`  
		Last Modified: Fri, 20 Nov 2026 17:44:06 GMT  
		Size: 38.0 MB (38036106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59137dca617ede04032749745ed61ea10baa5c3a418f64201f6d8807b8d74ff`  
		Last Modified: Fri, 20 Nov 2026 17:44:09 GMT  
		Size: 158.4 MB (158446949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3060da6265a06296de6f55be2d370b42ab5a325c5539bb23a64555deb54559d3`  
		Last Modified: Fri, 20 Nov 2026 17:44:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e3947343ea967ddd182fd717b6deba90f76b99dc91f70bb0fbdc090d094fb7`  
		Last Modified: Fri, 20 Nov 2026 17:44:05 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:77ac6e1edbb431d5887c4c8d665ab2ef6d735e9e9605f76283ab1d87454bdc66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94ac5bc8e99e457de4f2be0e6c9a26d88ffcd96a425b1c87202c898def66d62`

```dockerfile
```

-	Layers:
	-	`sha256:2e2d701947cf7b03bc53cee86a3c02a3c00acf1905b68b9a7142692ebc0f1f4c`  
		Last Modified: Fri, 20 Nov 2026 17:44:05 GMT  
		Size: 3.8 MB (3780633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec1cf48423c71599c1d3ac5ec57480acc16892d0ac7dba2b9331ee8f7836bed9`  
		Last Modified: Fri, 20 Nov 2026 17:44:04 GMT  
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
$ docker pull eclipse-temurin@sha256:25e02df729338fa01e4790a7291b388bff297f9ae5cc9f3018f52966beb77a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.5 MB (236529465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce7b91c1709e92e5312e9c09de1e249259968a036ab5846c87c4ed72253319a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:53:25 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:53:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:53:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:53:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:53:30 GMT
CMD ["jshell"]
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
	-	`sha256:7908a949444e772969e3ccf8a5a8da200dc9d2d573d74ea6965f7b3d9f35572f`  
		Last Modified: Fri, 20 Nov 2026 17:54:18 GMT  
		Size: 157.6 MB (157603653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a6462fe13c6e907c602f03447be9d669dd5cbb0ddc2c2a8c37e43288918dcd`  
		Last Modified: Fri, 20 Nov 2026 17:54:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71f09c30a316db7f75671479a2ff28adfda4a79b271cfa91e1c1233eff8a551`  
		Last Modified: Fri, 20 Nov 2026 17:54:15 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9dc5cad15ecdcd20b13f018431c07c6e5fe97ceb9bf1ee46811a1ae5667f54c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3787556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc1ec035ee109ec2c94c211d7bfed7fa7aed674a1418d6cf0c52d9df59b2fe4`

```dockerfile
```

-	Layers:
	-	`sha256:7184a22cebd7f9d6a66569d6668bc46646603e72f3680356ff93116a8989767a`  
		Last Modified: Fri, 20 Nov 2026 17:54:15 GMT  
		Size: 3.8 MB (3766219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:915cf78de6656847e78dfd7bc1128cbcf7f5ff404ebde8962da6e293be245f41`  
		Last Modified: Fri, 20 Nov 2026 17:54:14 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:1b5a7c1f3cafc25f03229f132a04aba206e9e27b29da44fced51691e3a8a65c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220155450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82f38f45dfa79fefb6250a5b7d9f8d13ccfe45d67f0abaf6e6a2abd2e239d64`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 22:50:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:50:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:50:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:50:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:50:24 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:49:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:49:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:49:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:49:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:49:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:471e6d247ece94ad01a550c2a516a9c65a34f8d627869c818f11fced45fe1dcc`  
		Last Modified: Wed, 18 Nov 2026 18:20:18 GMT  
		Size: 34.8 MB (34835957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f38cc0efcca33666b6f54d0dc524b0f5897c40287c5f6e58b01bd5d4e4e9db`  
		Last Modified: Wed, 18 Nov 2026 22:51:25 GMT  
		Size: 38.4 MB (38406778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a5872c3d548fad4ce887b4207d289102019acd4119b2f6a40573168024c0d6`  
		Last Modified: Fri, 20 Nov 2026 17:49:42 GMT  
		Size: 146.9 MB (146910117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b16ca942a573e6d5fd4e54c3579ec6e8333039abaf8f4366b66477402d0134c`  
		Last Modified: Fri, 20 Nov 2026 17:49:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2724e45dc0fa3cd815d2753dea3634e141b25e7df07c913d5155de26ecf404b`  
		Last Modified: Fri, 20 Nov 2026 17:49:38 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3e0fa27265625b3819d4d806c22a21e96b12da9ee089806155ac12735a4100e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3786278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888da6442ed5d17a4b90f7cd9f48656cc5cdae282b13b3c7647498cc6a612f77`

```dockerfile
```

-	Layers:
	-	`sha256:dd3f02fee6f3113b56956d40419fd0a8a3ff0ed4aaf67f1a9e4dae576ffd91fd`  
		Last Modified: Fri, 20 Nov 2026 17:49:39 GMT  
		Size: 3.8 MB (3764977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f465fd0699b1a4570924dba79c78f7c16be8b618841aa6fce7ba87d2d4e4e513`  
		Last Modified: Fri, 20 Nov 2026 17:49:38 GMT  
		Size: 21.3 KB (21301 bytes)  
		MIME: application/vnd.in-toto+json
