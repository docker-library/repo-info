## `eclipse-temurin:11-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:4ceb696e5ddc86e0e57bdb3f58a1e58cba386128cfc92fbf0582feaefccdbd65
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
$ docker pull eclipse-temurin@sha256:e566c5412c0567981380f1f2e07a6dc1d04f9f1a9a5821c1b25222573b03c245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112682157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a784e525e40b4579b91badde0f1359e9198caed755d1da47bf295cc140eb8cf`
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
# Fri, 13 Nov 2026 21:46:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:46:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:46:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:46:23 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:46:23 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 13 Nov 2026 21:46:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:46:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:46:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:46:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a910e564830ecfbbdd4d0f366b4c40043cd255993dfb8d713b53c0b186a7eaa4`  
		Last Modified: Thu, 12 Nov 2026 09:38:47 GMT  
		Size: 40.7 MB (40669413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20769dfc3f2502fd29f59d3eb4508dff20ca74910f41bef5a2ca1132d90e4196`  
		Last Modified: Fri, 13 Nov 2026 21:46:38 GMT  
		Size: 27.7 MB (27652820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13481e9be1c6b9496d0dcce4892aa5af2fcda1e6cd8f9a458db3265d884de9`  
		Last Modified: Fri, 13 Nov 2026 21:46:39 GMT  
		Size: 44.4 MB (44357324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a67a2bc9955ea8475873431ba627e6a569ded36a9c2c4a8c195487d271da6d4`  
		Last Modified: Fri, 13 Nov 2026 21:46:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceacdd986aa0d85ca08266f12eef51f817b13d04339f265333532a7263da093b`  
		Last Modified: Fri, 13 Nov 2026 21:46:38 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:634e37f5f851f3c022aca66dac3c7f4ff09951c74cf81c1524e55f2bf7e065b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2425507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e977861bb7ce685309f39da7524bb4259eae78db2e5cdbb96e6a4628f3fa3bb2`

```dockerfile
```

-	Layers:
	-	`sha256:ed7cc93be84cd80f9b1e8c306d60dbfe83d870aa23577a0f218ffd4f081fdfe0`  
		Last Modified: Fri, 13 Nov 2026 21:46:37 GMT  
		Size: 2.4 MB (2405297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9efc5605294fd5054c15332dd92d9f94b581d46bb6b6cf6ffe227ffa1940731`  
		Last Modified: Fri, 13 Nov 2026 21:46:37 GMT  
		Size: 20.2 KB (20210 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:52ddc0f605c9e0606fd9b9a46e9202c49a454353bc00e9eeee919546904c5071
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109432585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327e61bd86d486ebd7297aead855ab47e85a72af4cd2d7e34b75926579a179d4`
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
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 13 Nov 2026 21:42:54 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:42:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:42:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:42:54 GMT
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
	-	`sha256:3e24518cb98013af2dd789ecf147d538a874ae8151d426a517b3c90b078a8799`  
		Last Modified: Fri, 13 Nov 2026 21:43:06 GMT  
		Size: 42.7 MB (42671182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ecd88c6a7fb82bf8df496bdd38e4f9c78abb6efed87a04d6e487105c4a875d`  
		Last Modified: Fri, 13 Nov 2026 21:43:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5357333d9662b797cd9170cd1cf1892ae44153def130a1a4a777d54b541ea102`  
		Last Modified: Fri, 13 Nov 2026 21:43:05 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:14f9af4133e8acecb3c56cb2c9da3c4b02c2184bae02af4d0554aa1fc50a27ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2423805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbddf299c8fcd2f435dc9aa51bd2b2332245367f531d9a8137448c0341ed0d58`

```dockerfile
```

-	Layers:
	-	`sha256:265a8795cf4c315f18fa672cfde186f1f70982d655abcccd6d009745f816c37d`  
		Last Modified: Fri, 13 Nov 2026 21:43:05 GMT  
		Size: 2.4 MB (2403491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fbeacfde0a18e18b45642e5165330a91009e58415b2be359de9d676423801e3`  
		Last Modified: Fri, 13 Nov 2026 21:43:05 GMT  
		Size: 20.3 KB (20314 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:ed83f1b1f2aeed8426e207e4195462140ae0bd57dfbf12710ed209ac548d3da6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114522338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4493ed4e1a38154cae7436157a9f14a034dcf1de8acc80fbcf5ed9c18e2e4b3d`
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
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 13 Nov 2026 21:44:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:44:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:44:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:44:25 GMT
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
	-	`sha256:a26ee0805abdd7b1e88d737678b27be69d9584c5770c6bec00fb08f0e4276c97`  
		Last Modified: Fri, 13 Nov 2026 21:44:48 GMT  
		Size: 39.4 MB (39423014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29277a6153ad074713a01789112c51855f5f820f37e3c59907d36c6c131feada`  
		Last Modified: Fri, 13 Nov 2026 21:44:47 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422c622ee68075bdf73ace6e6569ecea476f4ae020524459b301dda5665450ef`  
		Last Modified: Fri, 13 Nov 2026 21:44:47 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ea44bbab2e16f1a229dccc32041a791fb8583f37191ff95bd45170cb279c8fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6739fc4f21a62545d311a89b3e9cb078128191c140a37ee1884d316dbb41b4a5`

```dockerfile
```

-	Layers:
	-	`sha256:a58951a3703086288382ccd1b2892093fbbd8b8f41ec20a557c6037f7f0581ad`  
		Last Modified: Fri, 13 Nov 2026 21:44:47 GMT  
		Size: 2.4 MB (2402318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0507b8dc3fde8b5778f5970323804ecaa32a9727052ee2b62407b7269700ed4b`  
		Last Modified: Fri, 13 Nov 2026 21:44:47 GMT  
		Size: 20.2 KB (20240 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:791d0e59a0abff5e736f8a2c993d106ee090eeb3d78eff9da3c7f8eecec217df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104339375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb4519ab1e2ad0a2a7878f90659f83b6d2c5afff51cddbe026ddeb5177b8c9b`
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
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 13 Nov 2026 21:40:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9691319ce9c30abe24abf679409c48467f8476b5c87ff24735efae63036e0e6b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64le)          ESUM='465b6d04c1c229888f6dfa4cdd958afb843569f95a37b7e69dc44175b66827f6';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='88c71157732799dee7ec2417d9bed9fdc60fe8a806993d0de09b4449ff26bf9b';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        x86_64)          ESUM='038086c264806875f3610317acc3455ce8daaf73561349c514efd646bb24a6e9';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jre_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 13 Nov 2026 21:40:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:40:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:40:53 GMT
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
	-	`sha256:915efbfca5945ac717958653179a8dcf7e3afb18e5a3e835a96600a5bf34deca`  
		Last Modified: Fri, 13 Nov 2026 21:41:11 GMT  
		Size: 38.0 MB (37996652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad354075a5466053aaaec7a3453f9aa8d2517526897afcc076d9772ad7dc2e0d`  
		Last Modified: Fri, 13 Nov 2026 21:41:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c801d426a3a4d8c10a8290a5cac7292532ebcf97b8c8d2adc493ca95801542c`  
		Last Modified: Fri, 13 Nov 2026 21:41:11 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:db26f925c6da15ce6d2cb9a0696b2cc0cf81d88449de7c1d3f4d566de5323ac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6f86e13e984e48ee9bf598ec25bcb9e3192273b2cc8b0ec0ff7a47cdd7a1437`

```dockerfile
```

-	Layers:
	-	`sha256:37a0ee64aa5b65fabc47481ea4e5b75c6d1faa402809430363b0156ac622698c`  
		Last Modified: Fri, 13 Nov 2026 21:41:10 GMT  
		Size: 2.4 MB (2394067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23887080f497ae2b138f57a9d5cc802b0145cdc4a1d2cbf29ee16309cd7e5f93`  
		Last Modified: Fri, 13 Nov 2026 21:41:10 GMT  
		Size: 20.2 KB (20210 bytes)  
		MIME: application/vnd.in-toto+json
