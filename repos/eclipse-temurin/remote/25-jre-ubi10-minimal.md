## `eclipse-temurin:25-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:e582689824824ea54a961b9a6de9a48134bc8e34e25e118b416b000bbacc62da
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

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ec92a34f161852ae2ea3945cca3de21f73664eab810c566cb0905c2a74d25884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.7 MB (135661606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48f68b1df9251452f340d33a636325c4056f4ebbc7f34f7292538e698f43ce9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Mon, 31 Aug 2026 19:15:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:15:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:15:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:15:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:15:40 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Mon, 31 Aug 2026 19:17:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:17:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:17:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:17:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ac2980d72cc6bdfe4cb4a8e0a91eeef134597c45af1e0dc031a54fd0560b2d74`  
		Last Modified: Mon, 31 Aug 2026 02:12:26 GMT  
		Size: 34.9 MB (34889446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef51ea9404f22511e60fa110f6e4b5154314db90df8e35d385da0f25314cb0b`  
		Last Modified: Mon, 31 Aug 2026 19:15:59 GMT  
		Size: 37.8 MB (37830336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f8d88399e924d5886eb739d25285b001572adcf630e56fea71d4b3f1ba1bf7`  
		Last Modified: Mon, 31 Aug 2026 19:17:53 GMT  
		Size: 62.9 MB (62939226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83e5fc995788d86a77ea66c528de95ff4fa5be707996c0fa0d1bdfcced536ee`  
		Last Modified: Mon, 31 Aug 2026 19:17:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bae804d323846589ecdcdc9c388c4e6d55f5caa9e499cf8924cffc6a97abe0e`  
		Last Modified: Mon, 31 Aug 2026 19:17:51 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:165fa52624c4fbc409c7a945a162fa5d2c9b0e93a31745905a95a850c0aee309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe852b1cae69433a2110a60a51c9165fd2cce6daa966269955aa2cb49dc8fc0`

```dockerfile
```

-	Layers:
	-	`sha256:8cbf48b3fb22f5852bc1c4f1d0403a328a63cc9966b97263f7a0fd97cd368c1b`  
		Last Modified: Mon, 31 Aug 2026 19:17:51 GMT  
		Size: 3.7 MB (3715569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef1e5a993eaff18a1bfa65e37fd7a7745134ae56ba638676e85f7fb3ca12c211`  
		Last Modified: Mon, 31 Aug 2026 19:17:50 GMT  
		Size: 20.3 KB (20330 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2b013383ef2bf73907f4401a3af176860c6488014437d804031826035e8489b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132670110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba12935698590ccfbd728945ccf69bad8bdcbb269377682db4bbda62327ca04`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Mon, 31 Aug 2026 19:33:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:33:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:33:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:33:27 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:33:27 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Mon, 31 Aug 2026 19:34:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:34:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:34:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:34:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:759ceaf0b34529e4230d22d353f231af30923d9ec82e0d2da5c0bebd4c37e463`  
		Last Modified: Mon, 31 Aug 2026 02:11:43 GMT  
		Size: 33.1 MB (33102863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39372758892e107719f2b123566696363cb5eab1b9dd332db894e7221180ce08`  
		Last Modified: Mon, 31 Aug 2026 19:33:45 GMT  
		Size: 37.8 MB (37759872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac298e0f9385eb0bbc71c8f6cb0ce495ae6353a7e310dcf6b51841bcc767112`  
		Last Modified: Mon, 31 Aug 2026 19:35:07 GMT  
		Size: 61.8 MB (61804783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41f89d94a99137245aee876c4e1fa785b722b2d36c349b20ae56a88ed797081`  
		Last Modified: Mon, 31 Aug 2026 19:35:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee942ab5f5b1608cf09cc516727d461fcc19b3268c5b8d6da9d7b1d2f93ce02`  
		Last Modified: Mon, 31 Aug 2026 19:35:05 GMT  
		Size: 2.5 KB (2466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9bfed86bc29f22e834df70ddc9be41df56df0c092572c0cd68a44896c7ee267a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3735414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294619b48f15978a9e8845695334a3e989ac521fae371de6d88bac9e09e5d9a6`

```dockerfile
```

-	Layers:
	-	`sha256:ae12a7006e4d8b3bcefa246d3a7411d75dbd31cca10da258611fea8cb5e02143`  
		Last Modified: Mon, 31 Aug 2026 19:35:05 GMT  
		Size: 3.7 MB (3714980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cffe004c8b8b7dff81a57603d820cb94cf7a23f514f5bae923177b61101d8fd`  
		Last Modified: Mon, 31 Aug 2026 19:35:05 GMT  
		Size: 20.4 KB (20434 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:7f8bc83e2ba9102e9482ebe03c51c2fed035bdea9d131f4416cc7f7bcf908f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140546829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3155a664f50c1dba731d3de0ef146c8e1d21d25a4cba6b0db530247b89910191`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-25.0.4+7
# Mon, 31 Aug 2026 20:03:36 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 20:03:37 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 20:03:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:03:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:e7f0fea3e9e71f28340149f32c7090c15f1ab419d1b4c5ed58098fc691648d4f`  
		Last Modified: Mon, 31 Aug 2026 20:04:07 GMT  
		Size: 61.9 MB (61892204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce39393f73f83f8e886bf6139f935481e0178c6395fb4c4a5af1a2d2c9532c58`  
		Last Modified: Mon, 31 Aug 2026 20:04:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142d3a0b34b67ee1e0ab27e90c3fe57b31b2b9ad5ea2f5896bfd37bdde389463`  
		Last Modified: Mon, 31 Aug 2026 20:04:06 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cde6d41d55f80383d8dff455f150ee844eb22d91864cf124451ff3ec6babe9db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3724045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2702b79ba29074512428f9bd3afc19f04ec0269674eaccc0ec566716b42951f`

```dockerfile
```

-	Layers:
	-	`sha256:19dc46cb3e711f2d89ceea744d570cd8dbb325c66c431a15038ea1078b0b0630`  
		Last Modified: Mon, 31 Aug 2026 20:04:06 GMT  
		Size: 3.7 MB (3703685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f655c1875ebc2b037164ce4543c24959e18e887c5fcd22d8f8519f4abc6ad37b`  
		Last Modified: Mon, 31 Aug 2026 20:04:06 GMT  
		Size: 20.4 KB (20360 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:fb617ae07a352781173ac09a1b52c2a9c6c8b5843935b782844f54040c5aafb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.4 MB (133377180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9754e654600bb77c336eef974232dce7fe07ab148ba0ce3cd485f39029a110`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-25.0.4+7
# Mon, 31 Aug 2026 19:04:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64le)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:04:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:04:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:04:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6a32169b134863613ca74b2a88a364995d45d3ced3576f8ec16b59a99b1445d8`  
		Last Modified: Mon, 31 Aug 2026 06:16:03 GMT  
		Size: 34.8 MB (34778899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc5e46553ed13425a4c1b15af28878b3ad87e14e0112cb7a6bf5d15204bd602`  
		Last Modified: Mon, 31 Aug 2026 19:02:37 GMT  
		Size: 38.2 MB (38197774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf45b14c924a528d1cf07594988c919563ffa1a295a761719a554fa9a03421f1`  
		Last Modified: Mon, 31 Aug 2026 19:05:10 GMT  
		Size: 60.4 MB (60397908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b791d9c1bbe76daac2c9000b1d9be96a4dceeed84b5f2de50b69017494c3bac`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8955593b4c3f09841de6325c635be17496a589beabb11527a1d2d38307ba239e`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:15f0b828f7d0a219bd76853153034e9506111d51b1243a2d82013f305d9e756e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3725268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82cea461fc944756d922205fbe72efa2c6ec3286061572d15d446b94ff5cb1b0`

```dockerfile
```

-	Layers:
	-	`sha256:1ce9fabeb1b79429091b030630639566f6e3330fb5822eddfbe2153b64bf3f03`  
		Last Modified: Mon, 31 Aug 2026 19:05:09 GMT  
		Size: 3.7 MB (3704938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c5c60b85feafbc33b2895f25188fcf6c7c754d541528276027b8419b8e618e4`  
		Last Modified: Mon, 31 Aug 2026 19:05:08 GMT  
		Size: 20.3 KB (20330 bytes)  
		MIME: application/vnd.in-toto+json
