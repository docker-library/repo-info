## `eclipse-temurin:8-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:f44a5a2e3dad265948a48b232bc6e5b0dde8f9665d460d53a8fa930295688153
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
$ docker pull eclipse-temurin@sha256:8ad5fabb721af10adf04cee510c49457cf10c622b02aa677079af5ceacdd289d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123543349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793801232c60eee86f2bb59468790c0e11d2664528e2f338e474db4a17f9cf88`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:53:59 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:53:59 GMT
ENV container oci
# Tue, 22 Sep 2026 10:53:59 GMT
COPY dir:14bfe291e51cfd3471e9b85d5e9d491fe06b3ecf4d74ad9ed060eeed665412ea in /      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:54:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
COPY dir:275fafe01e910923b4cfa2c2282c3eb2ea9158af5a6dc42bc6197cbdbe3c4f3f in /root/buildinfo/      
# Tue, 22 Sep 2026 10:54:00 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:53:29Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:53:29Z" "architecture"="x86_64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:53:29Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:48:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:48:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:48:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:48:01 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:48:01 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 22 Sep 2026 18:48:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 22 Sep 2026 18:48:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:48:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f54a0fb19efce07c95685474b80ea80c4eb2ed40ae83a65e0624d0d8543a9b7f`  
		Last Modified: Tue, 22 Sep 2026 11:51:29 GMT  
		Size: 40.7 MB (40734776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71dc30c094193402e949d4ee34b81b98a385e18b1c87253e2a8bcc977db2728e`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 27.6 MB (27641056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e1fd19e854a4fa820a041aab8bdc11ddb5c0ce78e60a291ec23a41ebeb2660`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 55.2 MB (55164900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f160c1f1a7f6f0fb7f6a4800ba6c379beacb9be5508af6a9dec062300c0f8fb0`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9797f87120d6e805aa061327ac0e64a12a9ece9085767878cba9e607a07871`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0ad7397fe0b9ab4a2ad9aa223c32da802414a3a8206db95f55c2d9fdcb4c7550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843fd23f100df04294e00fb161174d185af04cc55963f2bc81b46784047f627c`

```dockerfile
```

-	Layers:
	-	`sha256:a1a21a3c98277b9f9c48f495ab261716421c2d1c394f441976c2b1b3478c1e9c`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 2.6 MB (2616110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0787a6af20782a290a59c4c8dc9f0d4b0bc0cc4d2a8c6c1e4bfffe3ce1086664`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 19.9 KB (19873 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:3ca86408c35c2da597c739904634052bee2e5e7e979a22d4077cb9e097be5b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121147013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67d26d378929e0b4e643aae27ec55fdd399f2a30c7e754a294375e6552bf76c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:37 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:37 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:f1b1d9f069c6fd519132b1abb0a3eadbb548b4c2598519d645212ad8182e3e90 in /      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:38 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:38 GMT
COPY dir:c81da2b95a2a50c27755e5eab58aad0ebdab4cbd008448bc8fccefc055d96de2 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:39 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:55:15Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:55:15Z" "architecture"="aarch64" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:55:15Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:45:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:45:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:45:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:45:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 22 Sep 2026 18:45:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 22 Sep 2026 18:45:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:45:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:45:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:dea0c826e8cdc58b1ff5a08680eb69ae64129bfee1b07b773c9c5e1d9ffb1e86`  
		Last Modified: Tue, 22 Sep 2026 11:49:08 GMT  
		Size: 38.8 MB (38803467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc16162731237c46421b8a1c6c921597e86f65eae40d62889034e4618583f1f`  
		Last Modified: Tue, 22 Sep 2026 18:45:55 GMT  
		Size: 28.1 MB (28077615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:906122eeb4ed605206342b35eea24bc32b6e1bce281b30365f4f5db7045ca118`  
		Last Modified: Tue, 22 Sep 2026 18:45:56 GMT  
		Size: 54.3 MB (54263309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc1921e2fbf5445416328eb97b8495bcc0d34183a411741d1d644dae158a52f`  
		Last Modified: Tue, 22 Sep 2026 18:45:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f85ef8fdc913ce5065576c6856bf1c2cc65ff8dea88d592390684439e2d920`  
		Last Modified: Tue, 22 Sep 2026 18:45:55 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:25e25949a1b2868dd302b65a58b2f12e279c997cbeada8c377e5a98699254185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18073cce15df500713ac9907c51e7ce6dbdce0631cd86085474dd54af634a054`

```dockerfile
```

-	Layers:
	-	`sha256:cc8ba718a641a3346d4ed73cc454780fa42bf3950de0e3cdaf4c287932294976`  
		Last Modified: Tue, 22 Sep 2026 18:45:54 GMT  
		Size: 2.6 MB (2614398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abaeb8800d577f9038f0e550192057a49feeb632b236f12ebf8d83e1f8850bee`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:048439d58edf20a005e1e0ee59cb3dd0df0927df96bcee517b2e685d6fdf1009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127857464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65330c09acbfe5ae6053e1c17e54841c40e758231b500af38b8005a55c5e949d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 10:55:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 22 Sep 2026 10:55:12 GMT
ENV container oci
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:e4eb2c1671c9cf1f18e1acc99df1bdd89a609545254164422bc0f58d6e119a4e in /      
# Tue, 22 Sep 2026 10:55:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 10:55:12 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:2873fc57f881f500990993deeec8e7b40faee6af06ac82631fee3dfabf7d7ad5 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 10:55:12 GMT
COPY dir:2873fc57f881f500990993deeec8e7b40faee6af06ac82631fee3dfabf7d7ad5 in /root/buildinfo/      
# Tue, 22 Sep 2026 10:55:13 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T10:54:50Z" "org.opencontainers.image.revision"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "build-date"="2026-09-22T10:54:50Z" "architecture"="ppc64le" "vcs-ref"="c4ab05a33fa224d36e7e3e9795cadaf3e8d13746" "vcs-type"="git" "release"="1790074235"org.opencontainers.image.created=2026-09-22T10:54:50Z,org.opencontainers.image.revision=c4ab05a33fa224d36e7e3e9795cadaf3e8d13746
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:44:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:44:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 22 Sep 2026 18:44:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 22 Sep 2026 18:44:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:44:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:44:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4108cbe7aded7eca3bde90732e30405ccf46a54516e043a2af89a1be17eafd2c`  
		Last Modified: Tue, 22 Sep 2026 12:17:19 GMT  
		Size: 45.1 MB (45122832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0795e3a65708847d5bcf3d61080098eba5e49f58c02cdb68701041b0df5eaba`  
		Last Modified: Tue, 22 Sep 2026 18:45:08 GMT  
		Size: 30.1 MB (30060798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80236f6a3e30691cc7ecf700ef11d3c0c26e0af60b855a19e7e298cb114b8412`  
		Last Modified: Tue, 22 Sep 2026 18:45:09 GMT  
		Size: 52.7 MB (52671213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cc4eab7a2a6f503d9f7f9f77a57602f51097155162726a44c1bfdcbcbf968be`  
		Last Modified: Tue, 22 Sep 2026 18:45:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6c54226aa5c44b5d6ccc28d0e657eddd7fc53c475b41558a599eeeadbf440`  
		Last Modified: Tue, 22 Sep 2026 18:45:08 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b3e21feedfd467400ec93e0d0b08e57e3d94c88f9c0449cd296c9cea370f5be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83469af1a9e29d27d20840913e66b692a71285091807cf901d6b2ef09d01a3cf`

```dockerfile
```

-	Layers:
	-	`sha256:509f11b60327cc6b160aeeccca0e19a507218606dabe06c7eb9f0975d92668b9`  
		Last Modified: Tue, 22 Sep 2026 18:45:06 GMT  
		Size: 2.6 MB (2613053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aa975fc22448a117a2429ba66c4ba3d7ac3dca4e2cff70eb4e2542065901d61`  
		Last Modified: Tue, 22 Sep 2026 18:45:06 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
