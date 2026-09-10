## `eclipse-temurin:8u502-b07-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:4e19651b5ca3c5578c32ae9dc83cca26bed95c6411e996e333fc738f532f39ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b64b018a1259a0bf2d8f4ef0dc8b1cd83fb05c9fe3c6140616ee2e1fabd860d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110701504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6dfc48d9aba3f0ab1c0735b0cdfe9a3e0a77990c8d7cab329908bc0e08efda`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:32:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:32:04 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:32:04 GMT
ENV container oci
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:7d4e1add6b136709dfd81a23f253956035f58d34c5d236b96fba89c53c087ca2 in /      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:32:05 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:32:05 GMT
COPY dir:aab9058c830b4fe09c53d67f66c40e388b8f6b803bd122483e9e5b39e792636e in /root/buildinfo/      
# Wed, 09 Sep 2026 07:32:06 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:31:28Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:31:28Z" "architecture"="x86_64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:31:28Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:37:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:37:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:37:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:37:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:37:18 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:37:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:37:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:37:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:37:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:399616a84899868b5dcba80b172eb2b68d9d6ceba1655cad130718f24d1f2160`  
		Last Modified: Wed, 09 Sep 2026 08:28:28 GMT  
		Size: 40.7 MB (40711761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2169c3721e271daf3f11c2f57ad7d1f283846e2104d2e9cb1ea6a06fa215d9`  
		Last Modified: Wed, 09 Sep 2026 22:37:32 GMT  
		Size: 27.7 MB (27660786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e64513e5fdda5f6b048f3590e55650f339ce97fb3440df3edd167252a244a1a`  
		Last Modified: Wed, 09 Sep 2026 22:37:33 GMT  
		Size: 42.3 MB (42326359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdd0fee718dffc9c97a9ee60aeb30e5084f7180e24b175991ca4724f472ac31`  
		Last Modified: Wed, 09 Sep 2026 22:37:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e913d547f468eca36eaf0ca104f48cfca0ed561c895f8b206325aa125473d1`  
		Last Modified: Wed, 09 Sep 2026 22:37:31 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8262419a63e9c1c9e4d7f0b1710a0b7c9282d96fa52e02626d156092409c240e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2459462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abce71d5d0011577b08d76fe62ddf34529ae6b5a29c27be2c7ef40172800da19`

```dockerfile
```

-	Layers:
	-	`sha256:b03b2cba3243e0634461b714670e8d3303c45f4a477b2c2b40fced8387f086a2`  
		Last Modified: Wed, 09 Sep 2026 22:37:31 GMT  
		Size: 2.4 MB (2440116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb44e2c5fc380bc0d4c0acf73aafedd88a5d6a2eefeb18890def1dac529fd221`  
		Last Modified: Wed, 09 Sep 2026 22:37:31 GMT  
		Size: 19.3 KB (19346 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:5fd7138c26b63217bffef41440278c0a4cd9782db6eae4537881ac2f4da0488c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108206229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df48ea4c0ead4b2edeaadef758b0cb88a25330e484cde7e894f269d25607e759`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:33:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:33:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:33:36 GMT
ENV container oci
# Wed, 09 Sep 2026 07:33:36 GMT
COPY dir:bdf3d4ab52392fbb0b0cd322fb5ac95c784eadfe4f93f014ac96c337e0054015 in /      
# Wed, 09 Sep 2026 07:33:36 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:33:36 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
COPY dir:e6162a6f62758b77ea88d8c390bcc03627248124d50f4dd0fd77aef7b6bdffd0 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:33:37 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:33:14Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:33:14Z" "architecture"="aarch64" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:33:14Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:36:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:13 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:36:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:36:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:36:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:36:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:374f212d7a74263aefa7d3cf064825d27ce22b5a5491d106d1c42a1fe1638d0c`  
		Last Modified: Wed, 09 Sep 2026 08:28:59 GMT  
		Size: 38.8 MB (38810277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32900c0b5c8ca687776d5d46a1159a88a6ecd2f19298d9c45379a9f576d47a89`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 28.1 MB (28096376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be1463e03bf124fe8756c3b96410f65bef8529c684049c16f0edca05cb12b19`  
		Last Modified: Wed, 09 Sep 2026 22:36:30 GMT  
		Size: 41.3 MB (41296982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2232af5efc96fff741c82502c345a88dd760fda04ae4d9a0b921c521f8fcf0`  
		Last Modified: Wed, 09 Sep 2026 22:36:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c39de169f42e334836cff715106c08708fad65199d1509312d2190b1e6a17d`  
		Last Modified: Wed, 09 Sep 2026 22:36:29 GMT  
		Size: 2.5 KB (2467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dc312e1e550644d245accc5dbf848973e1839406e6afbba1643f4e91043b22d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2457835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e39b968a956ce4754ca018537ae35d84f994afda185aa51a4382732f3aee58c8`

```dockerfile
```

-	Layers:
	-	`sha256:cafbb6b4d5872a16a05af6a882cc376155393e6ee4b13308b8fe33a72471bc06`  
		Last Modified: Wed, 09 Sep 2026 22:36:28 GMT  
		Size: 2.4 MB (2438384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc0d26c8610fe0b7b281842f0e74ad876cbda20afb3f90cf1048c541624d7f1e`  
		Last Modified: Wed, 09 Sep 2026 22:36:28 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:e2ba05ab4452a38b12b901962a198c414ff138e41c4d3413737c45b79b2cdbc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116955001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d17306bc0fe3cf92ef3c87fca6fd9e522311b0956eef7ac5b3e090320cda80a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 07:36:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 09 Sep 2026 07:36:05 GMT
ENV container oci
# Wed, 09 Sep 2026 07:36:06 GMT
COPY dir:87006a9d434ed56326e63cb13a95fb965f1009aa286127a16236d2e78bf444bc in /      
# Wed, 09 Sep 2026 07:36:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 07:36:06 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 07:36:06 GMT
COPY dir:d2154e92d6d4865d071c2511da49a3e8407e6370ec6d6784b1b0ea294b2886b6 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 07:36:06 GMT
COPY dir:d2154e92d6d4865d071c2511da49a3e8407e6370ec6d6784b1b0ea294b2886b6 in /root/buildinfo/      
# Wed, 09 Sep 2026 07:36:07 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T07:35:43Z" "org.opencontainers.image.revision"="032ccfa67770989ab0253359280f8ba2cf77ce39" "build-date"="2026-09-09T07:35:43Z" "architecture"="ppc64le" "vcs-ref"="032ccfa67770989ab0253359280f8ba2cf77ce39" "vcs-type"="git" "release"="1788939036"org.opencontainers.image.created=2026-09-09T07:35:43Z,org.opencontainers.image.revision=032ccfa67770989ab0253359280f8ba2cf77ce39
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:35:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:35:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:35:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 22:37:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 22:37:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:37:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:37:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7312dcda81a30bbeddf774f4b20cf3018eea22ed1ca50d2869baa95676ad2ed2`  
		Last Modified: Wed, 09 Sep 2026 12:16:54 GMT  
		Size: 45.1 MB (45127848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe941d050390e204ef72d63ba762e0dc6f268703984fb62153db0658ee5189a`  
		Last Modified: Wed, 09 Sep 2026 22:36:56 GMT  
		Size: 30.1 MB (30081118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a4c61e2989cf23cb9cd857feb77f0fae72fe201061aeb72f22cc3fd2ed713e`  
		Last Modified: Wed, 09 Sep 2026 22:37:56 GMT  
		Size: 41.7 MB (41743436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b53922b94260d04cbb3de597296526e91761c53d4ae2247e7ed2c82291db50b`  
		Last Modified: Wed, 09 Sep 2026 22:37:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7044ae416fc8291958e90e047556df8825541435126a924af78b7364c05d016`  
		Last Modified: Wed, 09 Sep 2026 22:37:35 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:09fd0714d4effe9408ff5a9179ae2aade3211404603712fcc46b83c804a1e115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2458446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c8d3c019243e3c16b8d3c1d3b6919c7695da3ef1d96d9ef32680d652c98988`

```dockerfile
```

-	Layers:
	-	`sha256:8fb64c1e87a894b618ccb45a7b7b4e6ae905d3b1c887feff21379f8fdcc0cfec`  
		Last Modified: Wed, 09 Sep 2026 22:37:55 GMT  
		Size: 2.4 MB (2439069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9d7566bb3dbee7a0ebee693de2c043141c505b2ad8f6f82e34f6e34f63ad7f4`  
		Last Modified: Wed, 09 Sep 2026 22:37:55 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
