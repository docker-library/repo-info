## `eclipse-temurin:21-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:bdce2af757a984f3131537f70a5140113ea1f90106b18acc91ae2015f58ac0f5
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

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b7920be51e3fab17c4c1767d22cc78ba4cb388475df19fd7434ca91072a8c248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121380788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecec2a77b836422abd4188933df2810189fd38f95a3cb661e4c38beae2f8f312`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:43:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 17:43:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:43:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 17:43:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:43:35 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 27 Oct 2026 17:44:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 27 Oct 2026 17:44:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 17:44:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:44:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57e3fd0ef58bff51a73b6fffdbdf0e81ea415a3111ba062cf4146246a399f7d`  
		Last Modified: Tue, 27 Oct 2026 17:43:55 GMT  
		Size: 27.6 MB (27631172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff376aacf562b3abc1489da7b9b109f1b96d31f88fa9e33ef94627159300a1b6`  
		Last Modified: Tue, 27 Oct 2026 17:44:17 GMT  
		Size: 53.1 MB (53092781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163fb8771e6bcb10d09862110591df185aa5c65f16ac806a5f12992ea7b340cb`  
		Last Modified: Tue, 27 Oct 2026 17:44:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4369fc767dba0e4ae318d04212cb4e0c6ff4ba66e3676311298ecd5c0aa249`  
		Last Modified: Tue, 27 Oct 2026 17:44:15 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1b2226d508e4f02a3fa263156407218b83f45ad41317b28074aefa4088aed361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a936452df0d14c7382709dbb83e9a6cfb0a8d0c6ac9bfe3f5022955844fdaa`

```dockerfile
```

-	Layers:
	-	`sha256:154a2f4cbb063de6fbafe9659e073b165ebbaf2dcfc65be54f1fb9159665a67e`  
		Last Modified: Tue, 27 Oct 2026 17:44:15 GMT  
		Size: 2.4 MB (2394010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f9a4b12bd0c42d884b6db3061a8b04ed02be6f5cbd7129429b69b4eca3fb656`  
		Last Modified: Tue, 27 Oct 2026 17:44:15 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:bd73a93ed33791de2391de47c1d9f512584c2358e4d87ee496e67c6f002f6d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119043458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856c07a27461207673369765d0b2f3020c9e031d88a51d3b1fa9b252d0544263`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:43 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:44 GMT
COPY dir:4514a7c12566dae98fd88118fcb921951dfe1c5fb68bcd967fa7403f502ed7b3 in /      
# Mon, 26 Oct 2026 21:35:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:46 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:14Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:14Z" "architecture"="aarch64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:14Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:41:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 17:41:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:41:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 17:41:06 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:41:06 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 27 Oct 2026 17:41:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 27 Oct 2026 17:41:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 17:41:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:41:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2b634c6fd82e08c6136245eb9edf17629696bc4de0436c0eaad35e2a1f3e8050`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 38.7 MB (38703543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ca3182fdbdf469255ea6638b4974ce6c651bb37d370536ae6d5bfc938f04dc`  
		Last Modified: Tue, 27 Oct 2026 17:41:24 GMT  
		Size: 28.1 MB (28068865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30b59478052c6180ba8a86d151136f9fd520ad49548f4e9c1e5e80934bad99f`  
		Last Modified: Tue, 27 Oct 2026 17:41:25 GMT  
		Size: 52.3 MB (52268453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99d91b6da791da15c4f9b9fdd47c5726d00cc04206be66a99f46934384562d2`  
		Last Modified: Tue, 27 Oct 2026 17:41:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc5a3063cbb51527c10867ca247ed8ab3cb38e6ab1e85922ec05c5ac3c35caa`  
		Last Modified: Tue, 27 Oct 2026 17:41:23 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7915be639b7897fa108886f9d5360cc25878e34bd6ed857ac77e1260e5b34b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2411924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8ac618c537ab4eea0d7eee6cb54fd57b5f9188405b34c2c0810ee631c9bfb9`

```dockerfile
```

-	Layers:
	-	`sha256:817d6af3e9cf841d49dce430ef4e7efa2e5154654f8b6727e1ae3f8db957d568`  
		Last Modified: Tue, 27 Oct 2026 17:41:23 GMT  
		Size: 2.4 MB (2391586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38caed060edc39fef044fff0f73c58109828ee259b79c2cc994c7c899ad615d9`  
		Last Modified: Tue, 27 Oct 2026 17:41:23 GMT  
		Size: 20.3 KB (20338 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:382d177c620faf3db7959c91460ebc7e7a90f316cc73e9476de3d7d3960af8f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128226866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f620787e3a61ff4ff65b95bb96d2ac494c1d800b0d48a9e76181e7e0cdc3b1bc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:18 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:20 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:20 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:22 GMT
COPY dir:be29e417dbef72628a967183b8b7ae7e922e6bdd49b1170f0357574ceddc0063 in /      
# Fri, 23 Oct 2026 07:58:23 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:23 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:24 GMT
COPY dir:f6840b105933cf6e1dea85d65fe324fc36d97841d50c0cc737f9d0bd85087e6e in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:24 GMT
COPY dir:f6840b105933cf6e1dea85d65fe324fc36d97841d50c0cc737f9d0bd85087e6e in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:24Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:24Z" "architecture"="ppc64le" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:24Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 17:28:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 17:28:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 17:28:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 23 Oct 2026 17:36:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 17:36:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:36:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:36:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8600d58bbb8bb01636d59485bcdcbec2b5f7bed900f808d2f3873025a1c10f51`  
		Last Modified: Fri, 23 Oct 2026 12:17:14 GMT  
		Size: 45.1 MB (45056999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52173a77234d725955af0360e83880a1f64675cf3b0d0ef520415a9ac8a3b48`  
		Last Modified: Fri, 23 Oct 2026 17:28:53 GMT  
		Size: 30.1 MB (30055408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27eab29282dabe21f083063f8b4b8ebf1bb0df975cb69241ad49504e80ddcad0`  
		Last Modified: Fri, 23 Oct 2026 17:37:10 GMT  
		Size: 53.1 MB (53111861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9953d58bd85d7b5031e669df3046ec2b12c97aeccb6a92c05bc4735178678b29`  
		Last Modified: Fri, 23 Oct 2026 17:37:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad40be058e0357cd8c87dd9303a2006c5ad3039ea406e70104af0685cf3df8b`  
		Last Modified: Fri, 23 Oct 2026 17:37:08 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:abd43799dfb38f2615c540a62e5bca1dbb7bec4889fe2f691983856b37e6f6f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2412518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008360d869d210ed300fd8baad4a047c1260ccb43529a54cbc849e64f434b194`

```dockerfile
```

-	Layers:
	-	`sha256:76c8fb2ca5197352a5085b45403f57f3b54b8986b2bcc7d784542956e94d47ba`  
		Last Modified: Fri, 23 Oct 2026 17:37:08 GMT  
		Size: 2.4 MB (2392255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f97649fd56edc7d0c47e7c70a0b45760c56490cbc0eb0ae434144169055cdc4`  
		Last Modified: Fri, 23 Oct 2026 17:37:08 GMT  
		Size: 20.3 KB (20263 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:c993e1a60c7edc664633b79c22874f5c28395875c412ae4ee8d1858bb47edf83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116005991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c602b98b9a1a7e440a3552a137bbb605e81614e60cf20f533beee4e582d2d5e7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:48:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:48:17 GMT
ENV container oci
# Mon, 26 Oct 2026 21:48:18 GMT
COPY dir:1dac919f1bf5b343236885ff2de48e257ce8783faf66e9f128de106823a37030 in /      
# Mon, 26 Oct 2026 21:48:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:48:18 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:48:19 GMT
COPY dir:c970f44a4ef8b7dc687a5ddaab387bdc7bd37aace4cf925370b091145f1d2192 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:48:19 GMT
COPY dir:c970f44a4ef8b7dc687a5ddaab387bdc7bd37aace4cf925370b091145f1d2192 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:48:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:47:28Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:47:28Z" "architecture"="s390x" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:47:28Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:39:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 17:39:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:39:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 17:39:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:39:51 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 27 Oct 2026 17:40:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 27 Oct 2026 17:41:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 17:41:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:41:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7611086b13442002036a06a2cc03bff83b6014a05215e2fcc9e702733fdc8ba5`  
		Last Modified: Tue, 27 Oct 2026 00:11:31 GMT  
		Size: 38.7 MB (38706987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d0f159a2e0f1731d169f59e1f5e1a5686d93b162ca780ffd8f4eca75fdd6b2`  
		Last Modified: Tue, 27 Oct 2026 17:40:34 GMT  
		Size: 27.7 MB (27661684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e7ce33960fefe13a108db22e3b4ae8b6620235235d49ba079cdd1af072d89e`  
		Last Modified: Tue, 27 Oct 2026 17:41:24 GMT  
		Size: 49.6 MB (49634723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b98f9a340185bf5354236f72b577d1693539138e07810062e0454c70c24e01`  
		Last Modified: Tue, 27 Oct 2026 17:41:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ae01682a7f19a88dedfa718a8c489c15639230a757748b73e354d1dc4f4605`  
		Last Modified: Tue, 27 Oct 2026 17:41:24 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e021fe46259504db14eb93ea4dfc1dc0ac14cfc4c012e4104c3a9f5d86a4534f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2404254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751b9427691995aae4920e340191817f4b43709cacae6576f5a216b9ae862883`

```dockerfile
```

-	Layers:
	-	`sha256:81fff8414ecfec13371a79100aac8a74df3ecfaa3ae792435b008c4d0fa2cd67`  
		Last Modified: Tue, 27 Oct 2026 17:41:23 GMT  
		Size: 2.4 MB (2384020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efccea7da7b28b99edbe4ec70b139e2192b29edf89244031c068f53bd1b6c5ab`  
		Last Modified: Tue, 27 Oct 2026 17:41:23 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json
