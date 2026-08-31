## `eclipse-temurin:8-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:5ec42c4af05ef1679bcc4ab042b997913c9f2df3c1a3e103ef4b0ed62b4f4335
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:42cd274af9b8e15dc61fa29d946aa4be0dc173f6431aad8345288c139d38f202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123537539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b8963cc834a3b19d87c88e22225df62a42738db20d30a3aa08af520bb35c42`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 17:45:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:45:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 17:45:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:45:36 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 25 Aug 2026 17:45:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 25 Aug 2026 17:45:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 17:45:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:45:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162c16a4f013a2e15ad23d1916e94b747d23b588300c3f8c41203d808d862fc6`  
		Last Modified: Tue, 25 Aug 2026 17:45:53 GMT  
		Size: 27.7 MB (27658026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0229efdcd0e2ae6b9af5a8d7352fff18f8b194f740462dfad6d32eabb6b9ae7`  
		Last Modified: Tue, 25 Aug 2026 17:45:54 GMT  
		Size: 55.2 MB (55164901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a643538b42113fe6c80fedec2324cced562b4145574c6e2e8d86121c70e11ce`  
		Last Modified: Tue, 25 Aug 2026 17:45:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835f5d3319e435d322dbb04470b825d227f5be9d7dd9452c0a5dce1ace75db8a`  
		Last Modified: Tue, 25 Aug 2026 17:45:52 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5c75a2e4c5842e5a9b2eee7b10bba489469de724f1b901fa3696faa744d495b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f2f773314a329f466bd547bf30c1edc16af0fec38eb459695497d06d113f0b`

```dockerfile
```

-	Layers:
	-	`sha256:cb317476a781a0f3f730739695acc67e1d66180b309532eb7a97ad18908fc8ca`  
		Last Modified: Tue, 25 Aug 2026 17:45:51 GMT  
		Size: 2.6 MB (2615555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9b1211903d92381db33c92d17739ef8582cd11e523e15f539dae35f4a1e26f9`  
		Last Modified: Tue, 25 Aug 2026 17:45:51 GMT  
		Size: 19.9 KB (19872 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:092017e7a3857a63d9ce67d62ea2b146aaa2570d421b964d6e80fd7935201de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121177238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2db4a5c7b84eca0177c9e023f31f84a9f4a54255eaf08b2b22e7cca248232108`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:33:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:33:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:33:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:33:27 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:33:27 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:33:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 31 Aug 2026 19:33:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:33:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:33:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9565f1cc5a4422d7a2bb2c2b54ebf5c415c379e0792d48316589cd1739f0402`  
		Last Modified: Mon, 31 Aug 2026 19:33:46 GMT  
		Size: 28.1 MB (28095339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb9f0fa15c8f491be91b2c862682ce37a427073ac6732f8a76cfb95c319db80`  
		Last Modified: Mon, 31 Aug 2026 19:33:47 GMT  
		Size: 54.3 MB (54263284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8960ed2efa168eb7cb3c290117925ff68be8a4656aa43ac763b348b64dd62336`  
		Last Modified: Mon, 31 Aug 2026 19:33:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e227f95859b244d218107d6902ae03cf9ab86b44c198585fb0fbfb9941e06b7`  
		Last Modified: Mon, 31 Aug 2026 19:33:46 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:37ee59795f5ff551cae8076efe2244900f63c292ba0818e39a4c35383a17c14b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f11cc80219d308c567cacc3ca8e75185e7abdeab8e882ea1569009e8fa9e6fb1`

```dockerfile
```

-	Layers:
	-	`sha256:6bb53e874965838a92c670f248079d7b0c479052c7b14834622a5814ee02ceca`  
		Last Modified: Mon, 31 Aug 2026 19:33:44 GMT  
		Size: 2.6 MB (2614378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73e307c1e9346f044ed14da38b35f01093ea74535d2e9dcacb119fb9f837ff58`  
		Last Modified: Mon, 31 Aug 2026 19:33:44 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:1093625282c4d9cb87f6a0c25dc236dd63e9b312d90f45f17cf9c17f9015e020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127874862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b25ccb2044dc15d75f2e0004ee410dd3b484158df601ec024b32d1e26ab677`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:17 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:741537afbb3785105e7b2ca806b19e20cea721418a8279ff4ede1766d643f701 in /      
# Mon, 31 Aug 2026 08:55:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:18 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:68059ba414ddd7df0a40efbe3877fcfcb91455dbd0f37dcdb8e9fe364568bcdf in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:68059ba414ddd7df0a40efbe3877fcfcb91455dbd0f37dcdb8e9fe364568bcdf in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:19 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:01Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:01Z" "architecture"="ppc64le" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:01Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:56:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:56:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:56:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:56:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:56:49 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:56:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 31 Aug 2026 19:56:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:56:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:56:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2f251b8d3e076987b58b62b3eda665de6816a418e936600327231b1852d5f30a`  
		Last Modified: Mon, 31 Aug 2026 12:14:10 GMT  
		Size: 45.1 MB (45126014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23ae3964c903e609b2272363bf6507736070cc9dc57638f1ea8927d70943cee`  
		Last Modified: Mon, 31 Aug 2026 19:57:23 GMT  
		Size: 30.1 MB (30075024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e347b112380e5b41310a9ba6a36d3b002cf554438ad5f629b3359232b43417`  
		Last Modified: Mon, 31 Aug 2026 19:57:24 GMT  
		Size: 52.7 MB (52671205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4bde0bc03e0e447e3f8175c9ca00622d48447362dca38631771244012672c6`  
		Last Modified: Mon, 31 Aug 2026 19:57:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f716f04a5c330255aa771bcd464d3da693d92dd3751827514029f81b8f6c416`  
		Last Modified: Mon, 31 Aug 2026 19:57:21 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f3a0a93c20c77a958e2a0b7c6fc4c4db6104b99a1ed03afc23ff35e8b68d8bb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c93b31c548c3ecbfbdca7247aff554c86617a754677de516f4bf142afffcf76`

```dockerfile
```

-	Layers:
	-	`sha256:b6a9180138cf3f8702e4d9898174630116cf18bdd6d31c73ec4429ffe52bd760`  
		Last Modified: Mon, 31 Aug 2026 19:57:21 GMT  
		Size: 2.6 MB (2613033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:889971c4b9dac53fa33647aedf63a5c897326dfc19bf078bb644ef820e04e1e2`  
		Last Modified: Mon, 31 Aug 2026 19:57:21 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
