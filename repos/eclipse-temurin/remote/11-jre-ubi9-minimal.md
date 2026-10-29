## `eclipse-temurin:11-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:b72fbd978e9af0421626bf83d56be0163bcc67e8aa56d1213489e23037ef8ba2
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

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a3a625d28fba81db926e65d7f7859b2edc46868e3d554503a59367ee1b8e2690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112627845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad4817e60cf72a40877b02cf785c25f6e08992998675e84eedbafc981340894`
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
# Thu, 29 Oct 2026 18:56:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:56:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:56:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:56:38 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:56:38 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 29 Oct 2026 18:56:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:56:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:56:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:56:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2164d2820af90f29766403e395ab877c03c4ae5dd020d8a1180c2bdb12e89bf2`  
		Last Modified: Thu, 29 Oct 2026 06:37:49 GMT  
		Size: 40.7 MB (40656045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfee2f53c653bbc57a83487ae8d244b5df001a1548a1db5d4622480ed2ac2bad`  
		Last Modified: Thu, 29 Oct 2026 18:56:54 GMT  
		Size: 27.6 MB (27632265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3618cb4413ba1fc2c9f5700ca1a7a1b657bc30969c5abacb9b57d0bc4d5782cf`  
		Last Modified: Thu, 29 Oct 2026 18:56:55 GMT  
		Size: 44.3 MB (44336939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e87c813512345f04e5f79648ada795824e670a86068acba83bbc9ead9072e46`  
		Last Modified: Thu, 29 Oct 2026 18:56:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a3289fdd1a3a1d845e8b2904e8cabd12bfef91eba2d887183426bbd90e2f86`  
		Last Modified: Thu, 29 Oct 2026 18:56:54 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:073171e7aa06a3166aacf9e9109919ede09be38d7c8aac38cc798c2dd30c03d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2424868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb81d628e91574866d72200e659a7a842ad92e3534e82412ee0baa26820f9e69`

```dockerfile
```

-	Layers:
	-	`sha256:1c7e7293dc2f0205e4ecf1d075cd30dd1abaf5d6d3e3ee401dc831cd140924f7`  
		Last Modified: Thu, 29 Oct 2026 18:56:53 GMT  
		Size: 2.4 MB (2404634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:699feac57d96844e4d655290a17705a4d9d6b7266705ac27481baa9f6130bd08`  
		Last Modified: Thu, 29 Oct 2026 18:56:53 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:a18ff61656520b7651e227060ec3df5a166524256745a8bf531f2c6feab4693c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109440657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e9db58df7b02edb724a21fbde496b082bbff4f203c7144e3e6cc43347c2cc0`
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
# Thu, 29 Oct 2026 18:56:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:56:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:56:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:56:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:56:00 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 29 Oct 2026 18:56:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:56:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:56:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:56:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d1fd8731fe293042fa0b8c35e7a013605e676c89fdf9067f0f919ee6053921e5`  
		Last Modified: Thu, 29 Oct 2026 06:37:51 GMT  
		Size: 38.7 MB (38719163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c882e3f39f5f9bcf72df1af3ab2a6215d720e878bb0df17464f402211d8def6a`  
		Last Modified: Thu, 29 Oct 2026 18:56:16 GMT  
		Size: 28.1 MB (28069202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5fb88b6be916a1972367f248248b404f11a90a45de97a0f26cb21e41c659c5`  
		Last Modified: Thu, 29 Oct 2026 18:56:16 GMT  
		Size: 42.6 MB (42649694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8c846c6c2b6707f20b77da4388fceefbd7e98029a8cc64a5c3f143981a16f3`  
		Last Modified: Thu, 29 Oct 2026 18:56:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d3b2da43bb42b37ac82dcd86674ad585322c0f26f388a7bab78bdb81186f5f`  
		Last Modified: Thu, 29 Oct 2026 18:56:15 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cac1fd7286b45a15cd575f09a3256aeede317bd6a250028169f871ebcacd70cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eb22eac419719a5e0ff4bac7add4e0a8c72346d4da1e92c6650f4563ed6b242`

```dockerfile
```

-	Layers:
	-	`sha256:eb5739d7a59c422f891ada479cad7b34bb801b6d689ea5067f20c40b292d01f5`  
		Last Modified: Thu, 29 Oct 2026 18:56:15 GMT  
		Size: 2.4 MB (2402828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daafb7de21a7cb73661f98ab22da586b3bae3c5d7c12313c8b6e8ac6ee3ef97f`  
		Last Modified: Thu, 29 Oct 2026 18:56:15 GMT  
		Size: 20.3 KB (20338 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:20f0765f8ee3a49ae916b407a4107ca5b79dbec6972218623c21a5d9a9c66796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114983033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2215c5d8bcf91b0781b69a578cd361ef685c6bef08b750a0fe56fda5a269e9`
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
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 29 Oct 2026 18:55:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:55:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:55:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:55:47 GMT
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
	-	`sha256:1703d1cc334c2a19d05193dbcfc6b2ed16a68d68997901861993e48579fb50d9`  
		Last Modified: Thu, 29 Oct 2026 18:56:10 GMT  
		Size: 39.8 MB (39848381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11984a87cdf1241da88d1a50a2d7778c26819c1e1f3acdb82e4c0ba271adf030`  
		Last Modified: Thu, 29 Oct 2026 18:56:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537be61850a485245ff655242d7ab25f9ee1b7c9eadc8432eeb003db8350b154`  
		Last Modified: Thu, 29 Oct 2026 18:56:04 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:097e0ea6f93edf5f14642be523680d523c320ae36e9853371fbb392dbaf50067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c350adcfaaa366b71ce01bee1282988d86f87c46c5b8e4ffbfec489aa3dc8ad`

```dockerfile
```

-	Layers:
	-	`sha256:7683ca687f7ac328a12f6c3a3d5dc94523ba0e3e1efb59a1d7a38cdce50ce5dc`  
		Last Modified: Thu, 29 Oct 2026 18:56:09 GMT  
		Size: 2.4 MB (2402901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09d8b6a21b98b100a44fbc143108d5237a22da1e7b872aebfc8cd510c219efe9`  
		Last Modified: Thu, 29 Oct 2026 18:56:09 GMT  
		Size: 20.3 KB (20264 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:40b7d85286cb62b7ca3cf245ba7f3766567cdc6d7e7957b923feccb7914098c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104705448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b796d98e538e00eeb3bdfe225ae47e1f47c7d12bf59a74e33e29193ff9e113c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 06:07:48 GMT
ENV container oci
# Thu, 29 Oct 2026 06:07:49 GMT
COPY dir:fbe70df2419d9d545aec8be7bad9997e5a9470d232d17e4723645c000c9d18cc in /      
# Thu, 29 Oct 2026 06:07:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 06:07:49 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 06:07:49 GMT
COPY dir:588a8b4a64bceafe5ba9c367157b3010af3511599e7ed68fbc111003233f4907 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 06:07:50 GMT
COPY dir:588a8b4a64bceafe5ba9c367157b3010af3511599e7ed68fbc111003233f4907 in /root/buildinfo/      
# Thu, 29 Oct 2026 06:07:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T06:06:55Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T06:06:55Z" "architecture"="s390x" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T06:06:55Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:54:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:54:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:54:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:54:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:54:44 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 29 Oct 2026 18:54:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:54:48 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:54:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:54:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c2d671d5a5027eb53117b93c8cac23d41361feef032e1ced7dbb740fe4e89807`  
		Last Modified: Thu, 29 Oct 2026 06:54:57 GMT  
		Size: 38.7 MB (38723239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09977ad7dc9348d729ce271e63fe074529fe804ff475d084a234445452db83bf`  
		Last Modified: Thu, 29 Oct 2026 18:55:19 GMT  
		Size: 27.7 MB (27667272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14125a8c6ac3645d1df5d4971cd04579f346e87369d6c72507d48fd3d34b78b7`  
		Last Modified: Thu, 29 Oct 2026 18:55:19 GMT  
		Size: 38.3 MB (38312339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079de1ed99b10228ad3556136c1eeecf053da9d7816d1a113b827a8ed422455f`  
		Last Modified: Thu, 29 Oct 2026 18:55:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3960e45f6dcec32a7f8209cdcd135ad2735777841127cc0ccabe503f5b1b1d6`  
		Last Modified: Thu, 29 Oct 2026 18:55:17 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e7c2f26d46da61ad7001302db34c90e7bd7c680bff7e26f82c2fdb55087811b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7dd4bc53235e7c438680b14b383f6c8a3043de6674f7d0c8f77b90e594e9ea4`

```dockerfile
```

-	Layers:
	-	`sha256:f38aae9b955ef89b921ce80c7a4b05b2625b86a2e2f73721248c20e8ffb9187d`  
		Last Modified: Thu, 29 Oct 2026 18:55:16 GMT  
		Size: 2.4 MB (2394650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:688341f6f8b42796ff8648fd191206066e4ce9c9fd199417380b31cd8a970edb`  
		Last Modified: Thu, 29 Oct 2026 18:55:15 GMT  
		Size: 20.2 KB (20233 bytes)  
		MIME: application/vnd.in-toto+json
