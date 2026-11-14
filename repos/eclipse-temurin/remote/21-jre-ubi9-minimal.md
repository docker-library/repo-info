## `eclipse-temurin:21-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:eb20f00087c18daa66a42fe0ff8d3e7e78425d342af601451b357f2ea6fab3f1
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
$ docker pull eclipse-temurin@sha256:17e523f3696b36177c5c9a44399f8a4a4634229fdf3f14d4c7582d2597931a1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121530106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbf559b5ee9d52a1bc844a5f488ed268274da76629b3b19305c36c35347e8a5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:10:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:10:03 GMT
ENV container oci
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:4925913982ee23b93a5459c6c94a48de8c0673c106763b3fd70dc3eefa0ce90f in /      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:10:04 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:10:04 GMT
COPY dir:fd0ea76c9f943a84d285f5b85a5dba9debc1ef1ff54714702d4773c2412fac40 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:10:05 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:09:34Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:09:34Z" "architecture"="x86_64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:09:34Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:46:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:46:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:46:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:46:49 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 13 Nov 2026 21:46:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:46:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:46:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:46:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01331cd64e11785e097ab4239f66ee6be36542665307eb1694a1cefe93b19273`  
		Last Modified: Fri, 13 Nov 2026 21:47:07 GMT  
		Size: 27.7 MB (27652916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed440ba7a096dc0fe3d5f465a0b6f2613fc959b31982188d425b88b2b3411e27`  
		Last Modified: Fri, 13 Nov 2026 21:47:07 GMT  
		Size: 53.2 MB (53205180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3a91342d7d18ea17e9280415ff6e2dcd1acc867dade1318a77451fa9c48e43`  
		Last Modified: Fri, 13 Nov 2026 21:47:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abccef146f8bb4af30034df2cb4b5192de8a918549015142fc7bbb0441ecfd9a`  
		Last Modified: Fri, 13 Nov 2026 21:47:05 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b006d784000ff713fcb067897fc9b4be6e32734927ff37eb910dda9e5d07f4bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1aaa572165795b63a3aa46e1b59e94f7247cbba1690a1163c10962479cf34f`

```dockerfile
```

-	Layers:
	-	`sha256:26e7125f059bb67d80771204e9737d1e7802b705580f8f0aa4f88575283a6500`  
		Last Modified: Fri, 13 Nov 2026 21:47:06 GMT  
		Size: 2.4 MB (2394677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9838ba8a9f91fcc647eed605c18102d37f5f114a640c0c3841f6701559056955`  
		Last Modified: Fri, 13 Nov 2026 21:47:06 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:053b7cc517b51bf0a868ace720f04c0ef125f6f1a11a560e86a47e4b70c959c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119150731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b7ea569c18f918b9e2cff66521c15e9a14bb863554c02b7ab5d7882978567d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:46 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:47 GMT
COPY dir:4d87526a7738e67f2849dec8cc7456d51f10cd8903f2b487983c9a8e8cf85454 in /      
# Thu, 12 Nov 2026 07:12:47 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:48 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:48 GMT
COPY dir:b8fefbe8743dd0d8522b33cd4fd83dde7d1f8d19d41b8dc58938df13462cf373 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:49 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:12:16Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:12:16Z" "architecture"="aarch64" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:12:16Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:41:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:55 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 13 Nov 2026 21:44:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:44:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:44:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:44:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d3fe075a76b1285aa041b2e11e27b50e9193a929b1d8a84c06e18764d60bddbc`  
		Last Modified: Thu, 12 Nov 2026 09:56:13 GMT  
		Size: 38.7 MB (38679109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f23e10b682233f5ab9a1e1baf6c0dc75f9d9e819df68b1a450cf4c91e3010e`  
		Last Modified: Fri, 13 Nov 2026 21:42:11 GMT  
		Size: 28.1 MB (28079698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc7438fab365f8496a075d90d2378080856fa790e4bb59bb496904f87a9634b`  
		Last Modified: Fri, 13 Nov 2026 21:45:01 GMT  
		Size: 52.4 MB (52389327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01f217322abb5e6c72513c07b8709403fe1d90a1cd640419a26f321cc10cfb1`  
		Last Modified: Fri, 13 Nov 2026 21:44:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50de9f148e0ebd7419c0d32908ee5efcc87298bbbf8befcc4ad9e0e67946754`  
		Last Modified: Fri, 13 Nov 2026 21:44:59 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1d7ae5a6c1a8898a950e4c543eb384352e51a2c44d4048ea0e7da6c397c8d530
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2412543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f72b728d07b36e430ed604c45fc60ab02c5ef263e4962e3067e819c2ad0642d0`

```dockerfile
```

-	Layers:
	-	`sha256:0dbe9b634fd9315e9fb2c19878fd044680c2b1aea984a97ce3e5127075140463`  
		Last Modified: Fri, 13 Nov 2026 21:45:00 GMT  
		Size: 2.4 MB (2392253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67447bb16271f7bb0e7b6bd5f85c7e6ad82c3d5f9ef02b4431e4234014956c29`  
		Last Modified: Fri, 13 Nov 2026 21:44:59 GMT  
		Size: 20.3 KB (20290 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:1b956750c2950f72f3e10ceef3065e73289dfea9fc17917890c3b2d25e0d6311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127812180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96e655695ef13be0d2b5737b98952ad30036b9cd1128eb17f14ebf7fcb08f2b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:12:01 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:12:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:12:02 GMT
ENV container oci
# Thu, 12 Nov 2026 07:12:03 GMT
COPY dir:2a49bf68a121b63c415fa592b90c1fb40bd61415db86f53aa421c5e33bf0ea9a in /      
# Thu, 12 Nov 2026 07:12:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:12:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:12:03 GMT
COPY dir:9788ad40f011299b830b58f7c769203089bfc88c53f81fc115bf5477f22dc862 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:12:03 GMT
COPY dir:9788ad40f011299b830b58f7c769203089bfc88c53f81fc115bf5477f22dc862 in /root/buildinfo/      
# Thu, 12 Nov 2026 07:12:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:11:38Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:11:38Z" "architecture"="ppc64le" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:11:38Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 13 Nov 2026 21:49:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:49:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:49:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:49:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4903de0b165f40a4c317a54e1ad667fea94fe3aaccbbdd962839abb30f0fddf`  
		Last Modified: Thu, 12 Nov 2026 12:14:31 GMT  
		Size: 45.0 MB (45022348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc83e2b52f859bf93c5a0bc4e51f2819eb480cbad4ab2e80e4158c4d7d5e5121`  
		Last Modified: Fri, 13 Nov 2026 21:41:41 GMT  
		Size: 30.1 MB (30074379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a88cdcb91c58d54142f063ff64638e09c8fe6703e7b0c637fd5cc6e923f3774b`  
		Last Modified: Fri, 13 Nov 2026 21:49:31 GMT  
		Size: 52.7 MB (52712856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d43fb53706c866025fe3f97bf41a302999a2bde10fa08a25e683e553548e7c09`  
		Last Modified: Fri, 13 Nov 2026 21:49:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4bb3ab77715ba7b4a006d26bc3517722a99548079f52b6c788eb2c1926951c6`  
		Last Modified: Fri, 13 Nov 2026 21:49:29 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:528d5c80334739bbd195c4ddcf844016a3aaefd321ac8ddc0794a8ab600f4270
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2411908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324aff32fd73e72d898bf21c7dbc532a2ccaaef50f45048b40ecdb74e1b435d5`

```dockerfile
```

-	Layers:
	-	`sha256:8f5e3db5ab60367eeb94dbe11f3f0dff23f8a538cd5fb2074f816e09e44423f1`  
		Last Modified: Fri, 13 Nov 2026 21:49:30 GMT  
		Size: 2.4 MB (2391692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d30c26905355894973252a206717f1380181c14e85a39ebd1de0037454c7eec`  
		Last Modified: Fri, 13 Nov 2026 21:49:29 GMT  
		Size: 20.2 KB (20216 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:a39b6f4c213652ef045fad031fdf3a140fbcfe872da29d38a87a9d88d6fc4f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115702912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fc52f67d30344df8a6d14f408e322e9cc0d7811d3b81cfbc8855623d23fd5d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 12 Nov 2026 07:30:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 07:30:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 07:30:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 07:30:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 07:30:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 12 Nov 2026 07:30:02 GMT
ENV container oci
# Thu, 12 Nov 2026 07:30:03 GMT
COPY dir:c8ed80dff16c95ce6077027d2fc3365befe31b4729b954c3a0cbf26829ae3850 in /      
# Thu, 12 Nov 2026 07:30:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 07:30:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 07:30:04 GMT
COPY dir:9314dc0e20240911706add410982cababe46c4e8418b7980964c10762c68e77a in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 07:30:04 GMT
COPY dir:9314dc0e20240911706add410982cababe46c4e8418b7980964c10762c68e77a in /root/buildinfo/      
# Thu, 12 Nov 2026 07:30:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T07:28:47Z" "org.opencontainers.image.revision"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "build-date"="2026-11-12T07:28:47Z" "architecture"="s390x" "vcs-ref"="c500a3e71632eb6956c45968727fbf5e847c5c1d" "vcs-type"="git" "release"="1794467051"org.opencontainers.image.created=2026-11-12T07:28:47Z,org.opencontainers.image.revision=c500a3e71632eb6956c45968727fbf5e847c5c1d
# Fri, 13 Nov 2026 21:40:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:40:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:40:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:40:50 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:40:50 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 13 Nov 2026 21:42:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:42:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:42:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:42:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:0d224b541fe765b6e930698bb25582c2fdbd20f2349cb622c6e50e5e9e592327`  
		Last Modified: Thu, 12 Nov 2026 10:58:41 GMT  
		Size: 38.7 MB (38654710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41c527adb624f4a20b43104e08d42f5cd10cccb5ba59403f3d8b45b69a73443`  
		Last Modified: Fri, 13 Nov 2026 21:41:11 GMT  
		Size: 27.7 MB (27685417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d5b9b3acaf039b9cf1b7cca5ec1204155aefec30dbb6cf63c23a211c9937c73`  
		Last Modified: Fri, 13 Nov 2026 21:42:37 GMT  
		Size: 49.4 MB (49360189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35eea164eecb9216f3fad6a5680105fa9dbf75b52e5b88311a45cf9e5144b0f4`  
		Last Modified: Fri, 13 Nov 2026 21:42:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14635229dbd2085097ab0679338f1f2274b39eca89de856861ceb67fecde8dc7`  
		Last Modified: Fri, 13 Nov 2026 21:42:37 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:07c0c87239ce497a14efbf4acf27cf705a05057973894e84fa15d07f02fcaf0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166d0171537b8124a60d30defc243155c07ec211736f04d2464e5a9eb38bdd12`

```dockerfile
```

-	Layers:
	-	`sha256:669fb0aee45cf264ed3f327feec0a8af40ebffeef9d01edf166f64eb534ce474`  
		Last Modified: Fri, 13 Nov 2026 21:42:37 GMT  
		Size: 2.4 MB (2383441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6599755d5d060cba18720e99666b2e254689911c3bb70f6fda96615599b26acc`  
		Last Modified: Fri, 13 Nov 2026 21:42:37 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json
