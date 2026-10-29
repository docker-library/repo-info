## `eclipse-temurin:8u504-b01-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:21dd4317d8e380acd9da693a326a14908066a078cc4c360bc3d365bad72868e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d863c464f0d91cd01b7adfbe5e78d1b45498cca4447961440297ef752bb692bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123483789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f94532c87f9e09b3e178649e382f242374f365f30801490e833226744309690`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:54:23 GMT
ENV container oci
# Thu, 29 Oct 2026 05:54:23 GMT
COPY dir:cb36e4a04f700577f4d44e5ef8e97fee2e20c96c2328537ddf72d477ad63850e in /      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:54:24 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:53:50Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:53:50Z" "architecture"="x86_64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:53:50Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:56:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:56:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:56:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:56:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:56:32 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 29 Oct 2026 18:56:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 29 Oct 2026 18:56:37 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:56:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:56:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2164d2820af90f29766403e395ab877c03c4ae5dd020d8a1180c2bdb12e89bf2`  
		Last Modified: Thu, 29 Oct 2026 06:37:49 GMT  
		Size: 40.7 MB (40656045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a666c02bfcac040d6663f904e2288f5969aaa41b13b145eb76cb50ed1edf1e`  
		Last Modified: Thu, 29 Oct 2026 18:56:51 GMT  
		Size: 27.6 MB (27632400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2ac7f1f46c3663d0e39203f4f3b812a9a3d3087fe36e4533c308a8d0ddff95`  
		Last Modified: Thu, 29 Oct 2026 18:56:53 GMT  
		Size: 55.2 MB (55192726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a6b7f3739f4afdfc98ff1be9ff95c48b021242eb1e044c37c83645b884efe1`  
		Last Modified: Thu, 29 Oct 2026 18:56:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722f7e65e3ae7810b67da103d35751fb0568ba7dfc93c07daf17ec6865c5f377`  
		Last Modified: Thu, 29 Oct 2026 18:56:51 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b6f0dcd4156593697084c91ade29181ab98a318ca7caa7031b62f2ec8ad8dcd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5d0f9c8eb95e43f2f93a82b10e952e67efcd935925c5f2224cd0ad4d5f7c5c`

```dockerfile
```

-	Layers:
	-	`sha256:2eeedc4bcfd9e989b4f4d227509dd251879be4cc7f8bfd30ae2208e186e2175c`  
		Last Modified: Thu, 29 Oct 2026 18:56:50 GMT  
		Size: 2.6 MB (2597603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67a32ddca61f2a0e79c138ad968906c0e25d85b877356759be939f4efece919d`  
		Last Modified: Thu, 29 Oct 2026 18:56:50 GMT  
		Size: 19.9 KB (19873 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:cc911bb7c5b87f03e3943c1b299b56f782913f32d77c7c5b82c8c227f231b971
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121045934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6f2e67286552529dd6f3acbbcac6b268abb478e6aa06c117509367a58cc39bb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:55:50 GMT
ENV container oci
# Thu, 29 Oct 2026 05:55:51 GMT
COPY dir:c2f7b4c82de3b29a784fee39f42a89d24dcfb89cdf321a56be39c3db78376c0a in /      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:55:52 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:55:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:55:19Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:55:19Z" "architecture"="aarch64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:55:19Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:55:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:55:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:55:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:55:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:55:35 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 29 Oct 2026 18:55:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 29 Oct 2026 18:55:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:55:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:55:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d1fd8731fe293042fa0b8c35e7a013605e676c89fdf9067f0f919ee6053921e5`  
		Last Modified: Thu, 29 Oct 2026 06:37:51 GMT  
		Size: 38.7 MB (38719163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c816a886ae4a11c8ca6f9ded9b5208f6e9da271c619b550a4a9aa9c16aa6bbf`  
		Last Modified: Thu, 29 Oct 2026 18:55:54 GMT  
		Size: 28.1 MB (28069327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a017088f38fca2762a8fa469c19b304937abad0a90c18f9ed12806f874b082c6`  
		Last Modified: Thu, 29 Oct 2026 18:55:55 GMT  
		Size: 54.3 MB (54254827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33dbd942efc55ee25632e1a78a00f74f2acc1a9e89faaa15d674487f4a6d9599`  
		Last Modified: Thu, 29 Oct 2026 18:55:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53edd6a3b30e34f18bb69e97186b61edbb0c7b9ba9dbaf473edef472c3084f68`  
		Last Modified: Thu, 29 Oct 2026 18:55:54 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2558863d2232891c6232402012c892ffa1f9cd92d96755154ed6bcce682f5303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:268c063e7f4c8b2e4ecc9631aa721c8b23b7f56eab71c47e8b60c8207a9ced9b`

```dockerfile
```

-	Layers:
	-	`sha256:42a643e75d6e59c7110054b15546fbce44226aa25eed1a02ed8749e6300c7d1f`  
		Last Modified: Thu, 29 Oct 2026 18:55:53 GMT  
		Size: 2.6 MB (2595891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b397767f8b3ffe5223e05e57e6a8d81e25417224b1c5f3c5cf305efc74c760f7`  
		Last Modified: Thu, 29 Oct 2026 18:55:53 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a9a097e3944e432b7ba1185193f33591eaba3ab886f0cc51d8ccf9719005b412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127802314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:246574337a8bff428959f3fd430ba426f816e1a6adf3e2334a10aa21b09469da`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:58:25 GMT
ENV container oci
# Thu, 29 Oct 2026 05:58:26 GMT
COPY dir:0026950a9b8b7c1c27d592a235541afe594d9de67eefba2fbb763cdbf2d5f8d7 in /      
# Thu, 29 Oct 2026 05:58:27 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:58:27 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:58:27 GMT
COPY dir:34a5453c79547edb954a2ea82e6026030ab59ad39fdb79e99ec07f7d651d754f in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:58:27 GMT
COPY dir:34a5453c79547edb954a2ea82e6026030ab59ad39fdb79e99ec07f7d651d754f in /root/buildinfo/      
# Thu, 29 Oct 2026 05:58:28 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:57:58Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:57:58Z" "architecture"="ppc64le" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:57:58Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:54:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:54:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:54:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:54:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:54:41 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 29 Oct 2026 18:54:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Thu, 29 Oct 2026 18:54:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:54:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:54:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:de78ad82fc5d05f77be9c1b61185ba38225ae24b7df59ad9836c14d79e190d33`  
		Last Modified: Thu, 29 Oct 2026 12:14:34 GMT  
		Size: 45.1 MB (45074730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31689038f0fb703560ee2eaa847681a4060eda3eedc5b286c043a5c089cf824d`  
		Last Modified: Thu, 29 Oct 2026 18:55:14 GMT  
		Size: 30.1 MB (30057324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e5ff4f0e03c15d71a02021c28566c7c8000a750b8e036f7ec308a6c5d89946`  
		Last Modified: Thu, 29 Oct 2026 18:55:19 GMT  
		Size: 52.7 MB (52667642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22a98d24907c9597e88b21da2d761fe93e225684a52699eae66002699a0fdcd`  
		Last Modified: Thu, 29 Oct 2026 18:55:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6ccb0dd2922739e094b6ff58d287581080c92df4787fea422b5248454e720e`  
		Last Modified: Thu, 29 Oct 2026 18:55:18 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4637570767e7f1f8f95c091273423a9f61fba76d8d142e1a9ff18acea9331d97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2614455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3366eb21dc3e1da226452410a103368849f8f503c8706146747434b87998dcd3`

```dockerfile
```

-	Layers:
	-	`sha256:cebfe66bd489e3b992a074c47b1cf8fbc83921254e6fda5c940dff00b06b49b5`  
		Last Modified: Thu, 29 Oct 2026 18:55:18 GMT  
		Size: 2.6 MB (2594546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff76b0d4405077c12860b43680918e346d9b407066f0fadb618bac0978b79848`  
		Last Modified: Thu, 29 Oct 2026 18:55:17 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
