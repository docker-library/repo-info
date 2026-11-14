## `eclipse-temurin:8-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:5d7ea8f1463e64f5061c0ebe0a0fb5958131ffed79d848b868e4941631e6e7bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9155e15d7205ee4f1ea104ed58cd138c9a43e0e860caaa8bfbb93e5047b631e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112584490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9f521b521cb5e95cfa78c9a4860e24f2257e0f778328ae1b984189973e4b97`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:03:35 GMT
ENV container oci
# Thu, 12 Nov 2026 16:03:36 GMT
COPY dir:abaeaccaa183ac0f937690d9c3d971f171eee110eb25e55bb2014a260848d444 in /      
# Thu, 12 Nov 2026 16:03:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:03:36 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:03:36 GMT
COPY dir:4907c31dd7720cc331953cb8cbe73d698387e1a9bb6e1ff53fe2e44570a4e195 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:03:37 GMT
COPY dir:4907c31dd7720cc331953cb8cbe73d698387e1a9bb6e1ff53fe2e44570a4e195 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:03:37 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:02:48Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:02:48Z" "architecture"="x86_64" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:02:48Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:45:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:45:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:45:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:45:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:45:35 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:45:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 13 Nov 2026 21:45:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:45:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:45:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:3cfd5e1005a32b7225818bfd0eb2156a15f6be2100d285589a641ff98bd55281`  
		Last Modified: Thu, 12 Nov 2026 18:03:34 GMT  
		Size: 35.0 MB (34989854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b437d6471a30cf259c97168c0797f2adc89eab654cd8d2f88f39c131a3a963`  
		Last Modified: Fri, 13 Nov 2026 21:45:52 GMT  
		Size: 22.4 MB (22383591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa285a1ff0d1a781f2b7dbdb7375b05202d1550d69482b2d5c744e04c1d42717`  
		Last Modified: Fri, 13 Nov 2026 21:45:54 GMT  
		Size: 55.2 MB (55208426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574633f3a9d43ff26743526650c48ce0dd483e1f6ea1630ad34674a18976e4da`  
		Last Modified: Fri, 13 Nov 2026 21:45:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3efe9c1db8b6329ab95b1ac4b3276d4ab706651add975ccf5ebad3fda57d557`  
		Last Modified: Fri, 13 Nov 2026 21:45:52 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:36b64c20be31e97e54ed0376a7428151b4fc6912016863cd85f122315851ae60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3175863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3369239f3ad46f12d0a44e0fbaf1cb9cbd9b14a8d4af4d06a1a5f5153ce54d`

```dockerfile
```

-	Layers:
	-	`sha256:47e80576b1cf66df142b88a2f7f3f41aeef45317dfa8612b5be4a28cd6388d6f`  
		Last Modified: Fri, 13 Nov 2026 21:45:51 GMT  
		Size: 3.2 MB (3155826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15146f811b866e8be87b18dd27ae16379fd4fe2a97ddcd0614864f69e83d74a0`  
		Last Modified: Fri, 13 Nov 2026 21:45:51 GMT  
		Size: 20.0 KB (20037 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:97dc6cdcdcafde609964cc5e14b473034d81c64239556d946e823dab1862e6af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109955676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca4ebf44cc2664a047e9e30b20ada0d7620b052f6d6c2cf83232f0c0992b8d4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:05:37 GMT
ENV container oci
# Thu, 12 Nov 2026 16:05:39 GMT
COPY dir:fe8420d32862f0115fa228720b49066fadc1b8d1092b0d3d3cb9962c75e35cc6 in /      
# Thu, 12 Nov 2026 16:05:39 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:05:39 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:05:39 GMT
COPY dir:fc47a3f30ae4d6e4c8b5cebf7d8469dad63931bae6197b61a549f3789f2ea498 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:05:40 GMT
COPY dir:fc47a3f30ae4d6e4c8b5cebf7d8469dad63931bae6197b61a549f3789f2ea498 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:05:40 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:05:09Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:05:09Z" "architecture"="aarch64" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:05:09Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:41:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:25 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:41:29 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 13 Nov 2026 21:41:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:41:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:41:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:92b92fb6cc01fdbff60386e24bb888d8cbdc5d4af6a26214b7a8c5549a2ed08a`  
		Last Modified: Thu, 12 Nov 2026 18:03:29 GMT  
		Size: 33.1 MB (33057880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ff8d1713c630df850b812783104cb986de1e9721dad39fc1f1904e130277d2`  
		Last Modified: Fri, 13 Nov 2026 21:41:43 GMT  
		Size: 22.6 MB (22624253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8a1b444e35cfeb340fe4d0389f917ca96967fd3861f9b3a9c40235b2e637a7`  
		Last Modified: Fri, 13 Nov 2026 21:41:44 GMT  
		Size: 54.3 MB (54270926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326343beff929089923616ff63f1922be8675b4eece81c3a5542527f0d56c632`  
		Last Modified: Fri, 13 Nov 2026 21:41:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d23220689d9cecb3c7311590ad720d040efb0ab50d935984509bd7dee5da2849`  
		Last Modified: Fri, 13 Nov 2026 21:41:42 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cd65615557166ef0267092b6458fc7ac58939bf3c3bf07eb78060cd0aed168e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3176107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5fe88993a9e5e2281dc5a2be05fbc86a6ec91a48ee3a8b2782ba1aa2782217`

```dockerfile
```

-	Layers:
	-	`sha256:579d3a5fc131f3eaebd0093d96bb64ec1c4fd6f790002163348ae544184621b3`  
		Last Modified: Fri, 13 Nov 2026 21:41:42 GMT  
		Size: 3.2 MB (3155952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a3e9cd16dffb6279a0ea2d9aca46152a8bb7be6eae2001476d6f8851dc5265e`  
		Last Modified: Fri, 13 Nov 2026 21:41:41 GMT  
		Size: 20.2 KB (20155 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:4ac7a2cc243a1de678b601346e387aea9a60231849027daaf700c29da706bde4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131550554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8987a3bc2c190616561752dc4bf0dba5296c5adc6eac4d8018b2cc38cfb1835b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 16:09:58 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:09:59 GMT
ENV container oci
# Thu, 12 Nov 2026 16:10:00 GMT
COPY dir:ad66467f60bb0a64961b37b18c45eabc5da9768db94a9506ecae7a8434041e56 in /      
# Thu, 12 Nov 2026 16:10:00 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:10:00 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:10:00 GMT
COPY dir:004ff3a132bc9072133b960572269ccc9d243198026dfe8e2c063dd7a6729985 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:10:01 GMT
COPY dir:004ff3a132bc9072133b960572269ccc9d243198026dfe8e2c063dd7a6729985 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:10:01 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:09:32Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:09:32Z" "architecture"="ppc64le" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:09:32Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Fri, 13 Nov 2026 21:41:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 13 Nov 2026 21:41:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:41:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:41:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:732e1cc5e2c16e0c0f268f77b46621ef010009a9109126d06365d7e29c2876d6`  
		Last Modified: Thu, 12 Nov 2026 18:29:10 GMT  
		Size: 39.1 MB (39060038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a091144000673e21ab164cebc0c14f91c53123f6d6f421fc75f70b68a4b4d0`  
		Last Modified: Fri, 13 Nov 2026 21:41:43 GMT  
		Size: 39.8 MB (39798191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c51e934cda1f243f50503746c2de9745221e8677fc9bbc8b87fe5aa3d83880`  
		Last Modified: Fri, 13 Nov 2026 21:41:44 GMT  
		Size: 52.7 MB (52689705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fec2c045671d0b9fa507934aa12ed4985df0e50c8e76b9be5716dab8379ccc4`  
		Last Modified: Fri, 13 Nov 2026 21:41:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78376eae42fac16c6376eabe6a416eb7f287d39601c908694fbf8c438e3b9563`  
		Last Modified: Fri, 13 Nov 2026 21:41:41 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8e2b57b09036e012254ca898395e152c0479d88de3f003f8f6e8d0b616b9a127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68729a85bccb9461f2432d7740609fecf7b4ca32b6a75650b8784e96b6c2086`

```dockerfile
```

-	Layers:
	-	`sha256:3a8957caf58fc6684fe02e6b10fa3401061dafa5216323e7619b05c71a93d6b8`  
		Last Modified: Fri, 13 Nov 2026 21:41:41 GMT  
		Size: 3.9 MB (3886532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f381451455f15578d6a038b2dbc6b0f5b633e0f4338032c6febb4f3e37a57e61`  
		Last Modified: Fri, 13 Nov 2026 21:41:41 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
