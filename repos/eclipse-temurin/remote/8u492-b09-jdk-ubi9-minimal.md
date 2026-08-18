## `eclipse-temurin:8u492-b09-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:e2e0769f29179394c67fedbe6b39074a6e43b5afd49638cf77ec038843d4fd0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:da1ed7bd0060a130769816aa14d41a944aca8a2dde8b9823c42ce53040684654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123570899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc1df1e3168c78b20492e728737159d13441882e08c62d33f3a439004df4cc6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:37:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:37:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:37:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:37:05 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:37:05 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Mon, 17 Aug 2026 22:37:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4549ded22a5114fe8a9a6cd4e8f6d17a8e78b47cb396d81fed25a01f87450d9`  
		Last Modified: Mon, 17 Aug 2026 22:37:23 GMT  
		Size: 27.7 MB (27657162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a9b8303f6664ac097bd8239310ae5f35badd2d4dbb80b1c4f96422d03afbd0`  
		Last Modified: Mon, 17 Aug 2026 22:37:23 GMT  
		Size: 55.2 MB (55199130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97be60d7db07d3b143f67411c84c657b12a2bcaeb22c43355895f44a499aa79`  
		Last Modified: Mon, 17 Aug 2026 22:37:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8fa3ae281f15f430cffdff5127d1aa8df4fc7201563c1822ecea626c7f4c76`  
		Last Modified: Mon, 17 Aug 2026 22:37:22 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2c99c682e2a1c2dd2c53a5340a635dc68df1536b4604aa02cb75bad094958597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c4e2fcda1781c5abebec862246d53e51328b0e2492d5e394f00c8487ef2300`

```dockerfile
```

-	Layers:
	-	`sha256:0e8067e04a1f8295e41d80e7377828ec7e5503540f7917108d989ceb59fcadac`  
		Last Modified: Mon, 17 Aug 2026 22:37:21 GMT  
		Size: 2.6 MB (2615555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14315f3aede319131b72664d5522370fab448f80912c13f338ef69e20d59725a`  
		Last Modified: Mon, 17 Aug 2026 22:37:21 GMT  
		Size: 19.9 KB (19873 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:53643f47c322c68a1d85c3531a6fbfd41ec00d78892e0da5935cd6859a700aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121193036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebea9ff267172ae7a5fee135ed502b2b8bcd918a71ae186c58b16b6cfd129989`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:36:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:36:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:36:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:36:33 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:36:33 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Mon, 17 Aug 2026 22:36:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 17 Aug 2026 22:36:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:36:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:36:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5373dce55ba1f7813524f8b23ad01d7560f481899d7e7a8ce4a2f0914cc71d15`  
		Last Modified: Mon, 17 Aug 2026 22:36:52 GMT  
		Size: 28.1 MB (28101218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae82fa8d4800aac55350c8c8236c7a36a67ce87eaa8f897faa5c5f230bfedff4`  
		Last Modified: Mon, 17 Aug 2026 22:36:53 GMT  
		Size: 54.3 MB (54273400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa138452e2f38b1af6c43d215ed52775b75eacd241d3404161874e47ee4a93f`  
		Last Modified: Mon, 17 Aug 2026 22:36:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0246bdbf793a57b403e6cf09aaf745a57998f231a59155b5396c9a33f4375e6`  
		Last Modified: Mon, 17 Aug 2026 22:36:52 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0dc4f7a80a28d30cfd00c651c258546283d7bdfb526d00ed6b39606d6c8be1bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2633832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c528dad5b8bbff12ec9a5f80a2fe835ea783080af54d8281c045f32946734937`

```dockerfile
```

-	Layers:
	-	`sha256:6248742a4144a110ce31efbddb3f1ae95b1b3d42a1f58a660a489e88eb5d4817`  
		Last Modified: Mon, 17 Aug 2026 22:36:51 GMT  
		Size: 2.6 MB (2613843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d29a85d979ef2987b8528dcf040be7074fee72f83438d60cfa5a9fdbc746aa93`  
		Last Modified: Mon, 17 Aug 2026 22:36:50 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:e2a6d7722d1663fa4663982da2deaec37764e9a8d5f332d613de65501a45f7c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127854950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfaa4282c456c3009099c8851f1880203adcb9ea90869f6704d1b521dd627098`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:59:29 GMT
ENV container oci
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:85a7cc9a737af83f9f0b55b944a98b9bd0f889ce12a8553376788b64bd64c755 in /      
# Mon, 10 Aug 2026 16:59:30 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:59:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:b9addac3b82321b9a6f2a734577859fae2c7ad85bbd75c02b04992802ccf1cf8 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:b9addac3b82321b9a6f2a734577859fae2c7ad85bbd75c02b04992802ccf1cf8 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:59:31 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:59:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:59:14Z" "architecture"="ppc64le" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:59:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 20:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 20:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 20:19:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 20:19:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 20:19:30 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 11 Aug 2026 20:19:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 11 Aug 2026 20:19:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:19:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:19:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:fc6b62fae872622053a5ed2104e57f8406d9f00d71c0b557c6ad438326e8b9ce`  
		Last Modified: Mon, 10 Aug 2026 18:11:04 GMT  
		Size: 45.1 MB (45097272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403ea128d36a0913eb6d165e4cfbd91defb2a0eb30721dd4887f65c893225e2b`  
		Last Modified: Tue, 11 Aug 2026 20:20:11 GMT  
		Size: 30.1 MB (30085352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54b9a636bf32dadb9e856c7314b3a24786519526e739755c09559affba92470`  
		Last Modified: Tue, 11 Aug 2026 20:20:12 GMT  
		Size: 52.7 MB (52669708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588f4a355b9c61780384d99f035eac3383ca01b2b78d5924a6aa01b7cacbf878`  
		Last Modified: Tue, 11 Aug 2026 20:20:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d991b0694be83a0d8fca2fdd9e8c0363d7bd49024e297fc0e6687032e6919e`  
		Last Modified: Tue, 11 Aug 2026 20:20:10 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e7bb828b48a7d047e15a7bb99d0ae2046cb8a60a162f3bcde938c6a2af3825ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adf0b8fd65613d4adbb7f7413aaf317e46f10930468db7affea41842d52f5b5`

```dockerfile
```

-	Layers:
	-	`sha256:83e5ec98387f67fb3055fa8f8dc83cc016b8ea27ce502c49c59804a9cdc71b79`  
		Last Modified: Tue, 11 Aug 2026 20:20:09 GMT  
		Size: 2.6 MB (2612474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef48b184cd295b4548c21b998a084a38506ac197027917604ced7ef0a4da58c`  
		Last Modified: Tue, 11 Aug 2026 20:20:08 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
