## `eclipse-temurin:26-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:83a6b4266a71ca7aacdcdebb6f3444cf9c165211253494ad8d9c7f1549c47133
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

### `eclipse-temurin:26-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ad3d8174f5901119cf0a2e3239715ee0efc0821082a9ac8ef77f08496ed13859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167285629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad2d328d0fbcb240a2caff34c493eeeb890a3050a8c2b627a69bcbcc3322070`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:57:31 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:57:31 GMT
ENV container oci
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:458d6b12437e2fe1aea7458dedc8afbb3f3a79785ef8bf9db56b6c8e9d81c2bd in /      
# Mon, 31 Aug 2026 00:57:32 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:57:32 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:f5142977308c4527d6c246c51d646f592e5402b34a96136130ebe6385bd6536a in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:57:32 GMT
COPY dir:f5142977308c4527d6c246c51d646f592e5402b34a96136130ebe6385bd6536a in /root/buildinfo/      
# Mon, 31 Aug 2026 00:57:32 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:57:07Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:57:07Z" "architecture"="x86_64" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:57:07Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:16:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:16:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:16:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:16:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:16:39 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 19:17:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:17:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:17:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:17:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:17:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ac2980d72cc6bdfe4cb4a8e0a91eeef134597c45af1e0dc031a54fd0560b2d74`  
		Last Modified: Mon, 31 Aug 2026 02:12:26 GMT  
		Size: 34.9 MB (34889446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ff0c0450753a50692f59f46c6e9a3f33c2ddd1fd52305f9432f6b7cc0deadc`  
		Last Modified: Mon, 31 Aug 2026 19:16:56 GMT  
		Size: 37.8 MB (37830340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438db13da9452e2b10f052ef2821866307c536827cc2adaf7ad6864d349438ea`  
		Last Modified: Mon, 31 Aug 2026 19:18:01 GMT  
		Size: 94.6 MB (94563242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5b634f72f22cf384f05916b58b69b952c514cd9e822e4c64b8598331a4237e`  
		Last Modified: Mon, 31 Aug 2026 19:17:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b987a0a2aa1906d84d3bddb7f33f1420927912d66a946a49dded088ca4134792`  
		Last Modified: Mon, 31 Aug 2026 19:17:58 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ff8081df4895303741762e30bb0839e085bdae3b015bccf65e5781dc21cc4873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3778689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34cc98bc4d5911645cc6ac8862e50e669b07830c9ef7eeb592fd91a4702c3628`

```dockerfile
```

-	Layers:
	-	`sha256:afe87236606e658e5230b4891091af8cde46855aff27b0688b428439ac2edde5`  
		Last Modified: Mon, 31 Aug 2026 19:17:58 GMT  
		Size: 3.8 MB (3757377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4666f66f632696fbf0511ffd946346c6233e8d72294125599fafbf878b472604`  
		Last Modified: Mon, 31 Aug 2026 19:17:58 GMT  
		Size: 21.3 KB (21312 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:69dc78e50dbcd4dc8fdbb27979f899e6139ad5b2d301c237453588aeb9cd1345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164406937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be486d0de58c3698151bcabdd04bfd6c265a929f7948b5f2817f22a6ab3a0bab`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:59:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:59:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:59:40 GMT
ENV container oci
# Mon, 31 Aug 2026 00:59:40 GMT
COPY dir:6edc2d67ec7ce81de4d5e2e694d20368d7f98a402c5908188e9b9c3e9f626bab in /      
# Mon, 31 Aug 2026 00:59:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:59:40 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:59:41 GMT
COPY dir:3bd29e4a02a383c54782ac3cac9fc34c309a5293bb636ff3decba1a75c438d98 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:59:41 GMT
COPY dir:3bd29e4a02a383c54782ac3cac9fc34c309a5293bb636ff3decba1a75c438d98 in /root/buildinfo/      
# Mon, 31 Aug 2026 00:59:41 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:59:17Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:59:17Z" "architecture"="aarch64" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:59:17Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:34:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:34:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:34:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:34:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:34:22 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 19:34:54 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:34:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:34:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:34:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:34:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:759ceaf0b34529e4230d22d353f231af30923d9ec82e0d2da5c0bebd4c37e463`  
		Last Modified: Mon, 31 Aug 2026 02:11:43 GMT  
		Size: 33.1 MB (33102863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beb16ef97df0556cb242ddbb723661f77ec581b69744e041dbc064d76d78067`  
		Last Modified: Mon, 31 Aug 2026 19:34:41 GMT  
		Size: 37.8 MB (37760040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6baa8c950aa470570616a58acd275ad7f3bc6ab02bdc942030b62acda8f01c`  
		Last Modified: Mon, 31 Aug 2026 19:35:15 GMT  
		Size: 93.5 MB (93541433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13137e47f82a28f34355224a0d007da211b494dfbc8b849c4d8771077e66ca22`  
		Last Modified: Mon, 31 Aug 2026 19:35:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e0f41b334f6270d2896a71b980e18f654049b9d21573909f472c872e52f32a`  
		Last Modified: Mon, 31 Aug 2026 19:35:13 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bebeae2a94505579e7d93a8068205ebfa41043ad7a1c3c8e4884b0dda3ddafaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3778229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b94a70481701fbf189249f683e875d9a8bb46054bdf127752048fdbdb3ada38`

```dockerfile
```

-	Layers:
	-	`sha256:a8b2d112290cd1d49f1ca8011ea3cd96ad7b2182f3a591dc18d66b2941b0f78d`  
		Last Modified: Mon, 31 Aug 2026 19:35:13 GMT  
		Size: 3.8 MB (3756800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e4d9a81a4250fbb2fa7ac57c448767d411e24bc9b4692efc02f6fa53473b832`  
		Last Modified: Mon, 31 Aug 2026 19:35:13 GMT  
		Size: 21.4 KB (21429 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:4ed5d799b287055c23672e0d2da2182260dfde065cd2842bb0da9118a39be3af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172005761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5fa716f3016b4a400b753f2c86a25de316dff938c6e9dd0193a0f2d3320189`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 00:58:57 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 00:58:57 GMT
ENV container oci
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:c6698b30bc4613bb5c731dfe85b9f0b6f175062b68301d046396d7b130d9f1e9 in /      
# Mon, 31 Aug 2026 00:58:58 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 00:58:58 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:fc70cb278a18b9e01906c23db2ebc4b16dbe24dae1cf884a16eba92125f805ab in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 00:58:58 GMT
COPY dir:fc70cb278a18b9e01906c23db2ebc4b16dbe24dae1cf884a16eba92125f805ab in /root/buildinfo/      
# Mon, 31 Aug 2026 00:58:58 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T00:58:33Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T00:58:33Z" "architecture"="ppc64le" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T00:58:33Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:55:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:55:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:55:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:55:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:55:59 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 20:04:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 20:04:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 20:04:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:04:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 20:04:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d030c9a6b8d1eae81256166dca814ef7b7aefa89f72c9955e620439c07b6b16b`  
		Last Modified: Mon, 31 Aug 2026 06:16:21 GMT  
		Size: 39.1 MB (39080206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa8dcf3c07e25b50889f9a461403092890829375d0f1248be3d65145272f984`  
		Last Modified: Mon, 31 Aug 2026 19:56:40 GMT  
		Size: 39.6 MB (39571819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024f545e142fbdec43eee15668f7ea5dbcc4f04d252eb75f166ad8aa753a65df`  
		Last Modified: Mon, 31 Aug 2026 20:04:40 GMT  
		Size: 93.4 MB (93351136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ea838a3eec89aa1bf6f6660d9a26857a16bebb7bfab4c16de741722a534d83`  
		Last Modified: Mon, 31 Aug 2026 20:04:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172e414e2782c61f178c5f9072115be96e8db7bfb8a8475b0899c84546ab7e1e`  
		Last Modified: Mon, 31 Aug 2026 20:04:38 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6f1708e4f569b755e9c9117facfe158b37a66428a1a2e1e09c9965035fd1dbd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3749486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e25a0819b2ca4acb3b65a8374c3616988debc3e7422726a8388d9fb868da8720`

```dockerfile
```

-	Layers:
	-	`sha256:d62a8ee64da29e9931eac1023395af07a14cb8b02189bd870817910fd74660a2`  
		Last Modified: Mon, 31 Aug 2026 20:04:38 GMT  
		Size: 3.7 MB (3728137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05d6be6fc9e810ab273118688d4ab6f5eec29d47ad1a0a88a06da0f805af7ef1`  
		Last Modified: Mon, 31 Aug 2026 20:04:38 GMT  
		Size: 21.3 KB (21349 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:8a451fa406eef553e9e5371d249c49f296ae8b7067eb5450ab02af2a1053e646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163568670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dc442324c5b75642f2764a38b74498ceb01dfc043bec0c50631f4aed2c9d4c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 01:03:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 31 Aug 2026 01:03:51 GMT
ENV container oci
# Mon, 31 Aug 2026 01:03:51 GMT
COPY dir:e0b55156afc48595f50283f3b5ca4e244773f3f5a271f2cd3ceb460190953ed1 in /      
# Mon, 31 Aug 2026 01:03:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 01:03:52 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 01:03:52 GMT
COPY dir:621390827405d8042b06b62cd80e2a658b5a7b3772c696e3082635466ca2f168 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 01:03:52 GMT
COPY dir:621390827405d8042b06b62cd80e2a658b5a7b3772c696e3082635466ca2f168 in /root/buildinfo/      
# Mon, 31 Aug 2026 01:03:52 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T01:02:39Z" "org.opencontainers.image.revision"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "build-date"="2026-08-31T01:02:39Z" "architecture"="s390x" "vcs-ref"="bdaac53e4bd232830af8a1ca6268fcea3b2faa33" "vcs-type"="git" "release"="1788137716"org.opencontainers.image.created=2026-08-31T01:02:39Z,org.opencontainers.image.revision=bdaac53e4bd232830af8a1ca6268fcea3b2faa33
# Mon, 31 Aug 2026 19:02:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:02:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:02:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:02:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:02:10 GMT
ENV JAVA_VERSION=jdk-26.0.2+10
# Mon, 31 Aug 2026 19:04:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f82aeb1d5b0ddb93d3bd81c20948bc560c0758993157202424c17e805e2effbb';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2_10.tar.gz';          ;;        ppc64le)          ESUM='54e5f3a1eaa48650f30a8f189843a96654f5e31db4f0a8495c71adc4ca8f896a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2_10.tar.gz';          ;;        s390x)          ESUM='4cac19ce8091df128261c42886a2e0357de7deecfe3f60b39bca16ccb55703e2';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2_10.tar.gz';          ;;        x86_64)          ESUM='56f768372f6ca1e2eb4c5f46b78f627949e8dcfe9c9723926cf45a45faf35802';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2%2B10/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:04:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:04:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:04:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:04:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6a32169b134863613ca74b2a88a364995d45d3ced3576f8ec16b59a99b1445d8`  
		Last Modified: Mon, 31 Aug 2026 06:16:03 GMT  
		Size: 34.8 MB (34778899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772305ea4fb57a3591fb3ab7d2221b6969ceb13294c6f4bbb59b68e80c44a226`  
		Last Modified: Mon, 31 Aug 2026 19:02:43 GMT  
		Size: 38.2 MB (38197740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e659f2b0cc6ead1b44bcfddaa7ff016aff0020758cf01618cad38fee97e36d52`  
		Last Modified: Mon, 31 Aug 2026 19:05:15 GMT  
		Size: 90.6 MB (90589429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe5290a7d9a0d00561082588d7922a305778115d96bf06ea639de0b8b3a95ad`  
		Last Modified: Mon, 31 Aug 2026 19:05:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8955593b4c3f09841de6325c635be17496a589beabb11527a1d2d38307ba239e`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:63473a933dbf10b0d6b7a08ae6ad1bcf746d5c1af8f1d6d4f91d54c0413ff62e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3749466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fdd3fefb314926f7a6716cce65a4a1912c542eee1ebcd541829353e7a541758`

```dockerfile
```

-	Layers:
	-	`sha256:fd75e6cf8ab753f24d7c02279bb75d46468a8bebe721ec51d1e0715dbcd1ffc1`  
		Last Modified: Mon, 31 Aug 2026 19:05:13 GMT  
		Size: 3.7 MB (3728153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:262e95d4f830550b6a41e01d861ccef0d0b38b0be05a85d81c7bbbbb09e38219`  
		Last Modified: Mon, 31 Aug 2026 19:05:13 GMT  
		Size: 21.3 KB (21313 bytes)  
		MIME: application/vnd.in-toto+json
