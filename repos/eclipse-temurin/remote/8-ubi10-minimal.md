## `eclipse-temurin:8-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:9b71cd623103a6bfa62868ec5c0349344d310d2d2512a08c7c0a01f8549f115d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b6cfdef5bad2c4894deca6cde07c6cbc121277b143cd2795d20fde0c7e0d50b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128046657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62de94fc2849ea07308e29e125dc600be343bc8a06af620f8eac905ba09ff93e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:48:53 GMT
ENV container oci
# Tue, 20 Oct 2026 00:48:54 GMT
COPY dir:f1c76a6243bae0571dcb78281fcfe2c643a8f555dfdca207fe1b10b3b00283d9 in /      
# Tue, 20 Oct 2026 00:48:54 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:48:54 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:48:54 GMT
COPY dir:b5325220b21ab4bdd3b622989894128b9739c056cbb0dd5b9f66881f5434041c in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:48:55 GMT
COPY dir:b5325220b21ab4bdd3b622989894128b9739c056cbb0dd5b9f66881f5434041c in /root/buildinfo/      
# Tue, 20 Oct 2026 00:48:55 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:48:29Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:48:29Z" "architecture"="x86_64" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:48:29Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 21:48:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:48:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:48:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:48:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:48:56 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 21:49:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 21 Oct 2026 21:49:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:49:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:49:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:87420a9ecd145c9a242c1eaa570c6b7327b097ddb3bf3d58c96ba0e75e0d3edc`  
		Last Modified: Tue, 20 Oct 2026 02:09:48 GMT  
		Size: 35.0 MB (34961973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db70d4f66fa1374b72704eb59434e75a8b16784ce3396a9b119e856292b8fa2b`  
		Last Modified: Wed, 21 Oct 2026 21:49:16 GMT  
		Size: 37.9 MB (37889269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae031f9ae4fde990b29f43ea08d7e7100ce89bd111150b210b6c3931f783f958`  
		Last Modified: Wed, 21 Oct 2026 21:49:16 GMT  
		Size: 55.2 MB (55192799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981dc37a85e0c6be9e5b8bcab257ecbebb27db45d5741daf1ad8dff5f08e11cb`  
		Last Modified: Wed, 21 Oct 2026 21:49:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db7ff0d1c2c80bbd30c226bdd5d5234c62e2ce0d7abdce1bc7f29522497dbc5`  
		Last Modified: Wed, 21 Oct 2026 21:49:15 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:043a2c819a2b066ce47ec19dddb9065779f305f9d46377f5307b968a5dcc9499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da32d7c5376b582834ba79068ee4cf00c9a8b583eb90337ad22f7f59a6141e1`

```dockerfile
```

-	Layers:
	-	`sha256:53379cb30a4c45bbeb07ff183c04e6e05a29153c2c3741a70d0ee586c80c8bc2`  
		Last Modified: Wed, 21 Oct 2026 21:49:14 GMT  
		Size: 3.9 MB (3912892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:318146761c6aff4d60befc357a54742daf944a38b3e3c5d1b39b95df5a21fbd7`  
		Last Modified: Wed, 21 Oct 2026 21:49:14 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5f5c32727892272abafc86ad5270fde8b3a05a31a674855b85d6a723c5e1227d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125233731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e597611abbef98256fb177206ed32d6d8379d7ec92c5a46f294731bbd2a75a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:51:54 GMT
ENV container oci
# Tue, 20 Oct 2026 00:51:55 GMT
COPY dir:0d7cbcbcf024404d0c04cf00e00c66c352826a90edb3b336fe7e26d881767ac0 in /      
# Tue, 20 Oct 2026 00:51:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:51:55 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:51:56 GMT
COPY dir:24db7167ffb16392a529e9c110e76f8adb27cab3a5daaf3fa3cb59ee0e4577e9 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:51:56 GMT
COPY dir:24db7167ffb16392a529e9c110e76f8adb27cab3a5daaf3fa3cb59ee0e4577e9 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:51:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:51:25Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:51:25Z" "architecture"="aarch64" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:51:25Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 22:23:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:23:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:23:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:23:26 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:23:26 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 21 Oct 2026 22:23:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 21 Oct 2026 22:23:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:23:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:23:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:de452dfec330a84b0272627b023d15c8c60dd01f2776e3bfb8479177eea5f9e8`  
		Last Modified: Tue, 20 Oct 2026 02:12:17 GMT  
		Size: 33.1 MB (33146454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2458ff938e45b8c0de15a4e75e485f37002c982a47c83acdb5061b18109fc8a2`  
		Last Modified: Wed, 21 Oct 2026 22:23:46 GMT  
		Size: 37.8 MB (37829804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9361473107acc999e5d437086c49276685cbac989a1823701e01171d8ad8c9`  
		Last Modified: Wed, 21 Oct 2026 22:23:47 GMT  
		Size: 54.3 MB (54254854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de028b88b6ee331c753c5bbbe7e1cb2d56242d1dfe93befe5a97b9953fbbbfb5`  
		Last Modified: Wed, 21 Oct 2026 22:23:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064d768cb23e05e5df3df3c017722534d4ed1e292d7bf8a68d9bd0b7b4c59002`  
		Last Modified: Wed, 21 Oct 2026 22:23:46 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c3e727f241400a7385e8292fd96b3f30f01ab6bffbece0aba701889512c2c9b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3933173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334c9da2a9cc21f866b20d615cd8056ce042ab69ba02f515dacd6089e8713ce6`

```dockerfile
```

-	Layers:
	-	`sha256:83e8b40b0efa926c431c9fd29fd7033d3e2e13d876a667849f447a33375cf685`  
		Last Modified: Wed, 21 Oct 2026 22:23:44 GMT  
		Size: 3.9 MB (3913018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b853f8611e8c602d5b45d2d9ca794780d42c894a885d8d597841b5ef7f4645e`  
		Last Modified: Wed, 21 Oct 2026 22:23:44 GMT  
		Size: 20.2 KB (20155 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:7627c01bd5e1bdd217222e09053cd20f52c7051f46eea5cb28c7336c2c6f0986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131453349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddd1854248b954e159a52c9e82149347c6593dfc89e7822e7c9d18bca097cb2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:57:04 GMT
ENV container oci
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:cd373f5068beb4743179e195991b7397c3c3824ae4bf507d1128934272762d7b in /      
# Tue, 20 Oct 2026 00:57:05 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:57:05 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:769c20b7655e754c3450cea4f95dca4b1728fd234d7fa2bdd65ec28d7b1b5a23 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:769c20b7655e754c3450cea4f95dca4b1728fd234d7fa2bdd65ec28d7b1b5a23 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:57:06 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:56:42Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:56:42Z" "architecture"="ppc64le" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:56:42Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Thu, 22 Oct 2026 03:45:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 22 Oct 2026 03:45:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 03:45:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 22 Oct 2026 03:45:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 22 Oct 2026 03:45:19 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 22 Oct 2026 03:45:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 22 Oct 2026 03:45:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 22 Oct 2026 03:45:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 22 Oct 2026 03:45:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:706c1d86d8f655e7a9987b276168ae6610b6eb0f0af14eef00d3c9b0fd3ef9af`  
		Last Modified: Tue, 20 Oct 2026 06:23:50 GMT  
		Size: 39.1 MB (39114515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74474bfe984479734eb518da4a75b237b4ecf2ebdc0e86cda4d7d076d9b91086`  
		Last Modified: Thu, 22 Oct 2026 03:46:31 GMT  
		Size: 39.7 MB (39668516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a33bfdfe1bbccdb8eb7894c062843cd708e0c1691e667ec1f170d7852617289e`  
		Last Modified: Thu, 22 Oct 2026 03:46:32 GMT  
		Size: 52.7 MB (52667699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909abf4f91dea6d7307126b2e874f6df6b51aca72f30d9d879ea9e62336ca4d3`  
		Last Modified: Thu, 22 Oct 2026 03:46:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de410ee0dea9fe2267a51befd2f8e45b6d37bd3ec22d63795259da69af6ba68`  
		Last Modified: Thu, 22 Oct 2026 03:46:30 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ab0f51e4ce9fdfe66bf3e8eb4b7a65e8b970eb1b74b25d580b47c8bac2466d46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3920394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9036d557f80e938c8e37ee96aa7e520a8cfa487c0833d012bf0331e63109306`

```dockerfile
```

-	Layers:
	-	`sha256:73298635e9ca156573c660d77d248968009eea1efc55ba443719bafe1976dcd6`  
		Last Modified: Thu, 22 Oct 2026 03:46:29 GMT  
		Size: 3.9 MB (3900319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9905101ec938d0cdc0dbcd08c1331968ec82b7cf5111dca61844fe336ff260a`  
		Last Modified: Thu, 22 Oct 2026 03:46:29 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
