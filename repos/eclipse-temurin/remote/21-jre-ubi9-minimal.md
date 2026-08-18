## `eclipse-temurin:21-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:0406fec52be29e649cbbb083710b9d0c8b571905624735295b4839bf883253c9
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
$ docker pull eclipse-temurin@sha256:c76152d688713cfbfcd2aedaad763ec6013fad5fff1546e9e7280feb8bae2a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121494005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fc41ad08441e75a57bfe6ca8a88aa61bbbc496e37d264f49481ea62ef42d0c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:37:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:37:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:37:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:37:28 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:37:28 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:38:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 17 Aug 2026 22:38:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:38:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:38:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0150e7bf0ad118906d706b3e0fc13f2286c380a7ff759cbbeca304e30b5498c2`  
		Last Modified: Mon, 17 Aug 2026 22:37:53 GMT  
		Size: 27.7 MB (27657320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a858359740bd85b0142120cda2bdacfa98ef1c6f1f271c64c9e5fc09bfae84`  
		Last Modified: Mon, 17 Aug 2026 22:38:18 GMT  
		Size: 53.1 MB (53122276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fb5fb7d476e963405bf9655bf82d9336e54168a21037aac9b0413b34023b9f`  
		Last Modified: Mon, 17 Aug 2026 22:38:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eeead71bd146d5db8638274c89b8434360feb88b97c095982fa26e6746a2c5e`  
		Last Modified: Mon, 17 Aug 2026 22:38:17 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:68d8fd082a04c175dd5a04c66a6c79f54ba30860b9ee5ea0b048fab3a8107480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2432172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9045341866bd2d3cdfb5d681c8b85784f9ad7b47d42471efc3c4610c8538c19c`

```dockerfile
```

-	Layers:
	-	`sha256:e69387b1dbfbf92097f7b5e3d1462b2e9e0bb646290075c47f2416b1077a6df6`  
		Last Modified: Mon, 17 Aug 2026 22:38:17 GMT  
		Size: 2.4 MB (2411962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8738ead1514981a3bdd1738a37bf287c3b427febfa79a9909faa9bce51579206`  
		Last Modified: Mon, 17 Aug 2026 22:38:17 GMT  
		Size: 20.2 KB (20210 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2897d60ccebc52f509e704aefa6a13cb443883d453e785e5dc296f51f3323af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119228714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34315c91777aa94827f3dd71bd9ffd1f671ce21b4d6db597e955bd08a229c16`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:36:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:36:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:36:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:36:33 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:36:33 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:37:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 17 Aug 2026 22:37:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5373dce55ba1f7813524f8b23ad01d7560f481899d7e7a8ce4a2f0914cc71d15`  
		Last Modified: Mon, 17 Aug 2026 22:36:52 GMT  
		Size: 28.1 MB (28101218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61495d2ba04f9e8f86a0d0e9e128a47c7c85fcf35b9af2c2117049cca4cb478`  
		Last Modified: Mon, 17 Aug 2026 22:37:39 GMT  
		Size: 52.3 MB (52309279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3682c549b29803cf43ddfcdd1c4424fcdce0662065676ddce665afbcd9cbd6`  
		Last Modified: Mon, 17 Aug 2026 22:37:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4f8def69a8e085a851dcf10b3ea68987c6948e7af51a76701d502c7ad8ed49`  
		Last Modified: Mon, 17 Aug 2026 22:37:37 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7c254972098bf88c52ad93eede1c835142a27e10bdde86287c0273503bb98868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2429852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e1edf1650f228d732064b361a6c07f30621ebfc84d65fcb70ee4238baa8b21`

```dockerfile
```

-	Layers:
	-	`sha256:4253cf1105b5e917dc09a543cd0c8dd273ec6b6fe6bdab649ae81a23cef83d7f`  
		Last Modified: Mon, 17 Aug 2026 22:37:37 GMT  
		Size: 2.4 MB (2409538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79737593c0dd1eb70d70949196e89c7c0eb7755b43360b331fa69e5e941d189e`  
		Last Modified: Mon, 17 Aug 2026 22:37:37 GMT  
		Size: 20.3 KB (20314 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:9d8700a81809f539be284814660657e282ace419bf1afab891e2a9dfa46b2804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128323470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6eb030e9bef721a4a32309c10d1dfcd81a128f7a9704bfcc3e245fc27825c98`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 16:59:29 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 10 Aug 2026 16:59:29 GMT
ENV container oci
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:85a7cc9a737af83f9f0b55b944a98b9bd0f889ce12a8553376788b64bd64c755 in /      
# Mon, 10 Aug 2026 16:59:30 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 16:59:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:b9addac3b82321b9a6f2a734577859fae2c7ad85bbd75c02b04992802ccf1cf8 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 16:59:30 GMT
COPY dir:b9addac3b82321b9a6f2a734577859fae2c7ad85bbd75c02b04992802ccf1cf8 in /root/buildinfo/      
# Mon, 10 Aug 2026 16:59:31 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T16:59:14Z" "org.opencontainers.image.revision"="905bde9da31110a4bb776761a921a6b4e6b12a93" "build-date"="2026-08-10T16:59:14Z" "architecture"="ppc64le" "vcs-ref"="905bde9da31110a4bb776761a921a6b4e6b12a93" "vcs-type"="git" "release"="1786380870"org.opencontainers.image.created=2026-08-10T16:59:14Z,org.opencontainers.image.revision=905bde9da31110a4bb776761a921a6b4e6b12a93
# Tue, 11 Aug 2026 20:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 20:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 20:19:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 20:19:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 20:19:30 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 11 Aug 2026 20:26:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 20:26:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:26:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:26:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:fc6b62fae872622053a5ed2104e57f8406d9f00d71c0b557c6ad438326e8b9ce`  
		Last Modified: Mon, 10 Aug 2026 18:11:04 GMT  
		Size: 45.1 MB (45097272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403ea128d36a0913eb6d165e4cfbd91defb2a0eb30721dd4887f65c893225e2b`  
		Last Modified: Tue, 11 Aug 2026 20:20:11 GMT  
		Size: 30.1 MB (30085352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05e2579ba21cbc6212800580a35876b0bc0b3b2a7c83cca85be7465cdc63b5d`  
		Last Modified: Tue, 11 Aug 2026 20:26:47 GMT  
		Size: 53.1 MB (53138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29febbed6312d4ba72939ddb74a3686fb9b1997d85926fa3ac3e3e1ca5a28526`  
		Last Modified: Tue, 11 Aug 2026 20:26:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c4b0dea09e6077524b072db3e03202f6582e3dd10d3649b727da6c220b71d6`  
		Last Modified: Tue, 11 Aug 2026 20:26:45 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7b941f6f172071312f4d40385303e89629d267f8076c06e8fa243db5a0afb312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2430438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600c44b7d3e9dd8706720a2f033acc2d7bf5d841f1b55b3894ab8302c4a35b79`

```dockerfile
```

-	Layers:
	-	`sha256:76dc562ef768440fd6238adf3a216d90362c2e83e1c2b380697840e7739da85a`  
		Last Modified: Tue, 11 Aug 2026 20:26:45 GMT  
		Size: 2.4 MB (2410199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5566cc071b1840551b6088f354972f63305aac62d3cc49cc560a8f943798e95e`  
		Last Modified: Tue, 11 Aug 2026 20:26:45 GMT  
		Size: 20.2 KB (20239 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:468ab0cacddbf683b78956b342f0e2a6e468ff957c94deaa2161ea706e100b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116131358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7bc7742c57fd9966bc59140eac002d651fdc89e246970f8e607eaaae23ec14c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:35:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:35:36 GMT
ENV container oci
# Mon, 17 Aug 2026 17:35:36 GMT
COPY dir:a2e3d060074baf6a1ce466af357ef8f4623efc7743f778c40c2690a830b3eeb5 in /      
# Mon, 17 Aug 2026 17:35:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:35:37 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:35:37 GMT
COPY dir:09dfcb31876dcac8b685641ef35dd5af7cd6e623eafef72ebe6363230974ae53 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:35:37 GMT
COPY dir:09dfcb31876dcac8b685641ef35dd5af7cd6e623eafef72ebe6363230974ae53 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:35:37 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:34:22Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:34:22Z" "architecture"="s390x" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:34:22Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:35:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:35:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:35:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:35:28 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:35:28 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:37:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 17 Aug 2026 22:37:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a4e2fb6b6e243ce08ee6cf701b8fe97b45a2792b7bfcbeb125db2c8a8f437218`  
		Last Modified: Mon, 17 Aug 2026 18:17:49 GMT  
		Size: 38.8 MB (38785112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983b3006c9c56d6ba6447b5a8888ce60f3d503b63662217e9a587523758ae926`  
		Last Modified: Mon, 17 Aug 2026 22:35:59 GMT  
		Size: 27.7 MB (27687966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539fe9f57788a48f22b80c13bdcbca95c9aacd82a4d45337c9e2ebaf1d1dcb38`  
		Last Modified: Mon, 17 Aug 2026 22:37:22 GMT  
		Size: 49.7 MB (49655862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33585f32bab51a17e29e68cdee22d7e9b2700085ec492400481681e477c8489b`  
		Last Modified: Mon, 17 Aug 2026 22:37:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acecf6f05905885a3f712f5d5bf993e75cd53ea6271ba75ac6855d925faed1c4`  
		Last Modified: Mon, 17 Aug 2026 22:37:14 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4799189e4ddcf22ec030be28b8e5265fef53c30cbf99e2877a991d54c5d1b01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2422182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3dc518cfcdaa23dfd3ca31642a0388e634919147146e688c5bb908f34320dbc`

```dockerfile
```

-	Layers:
	-	`sha256:5da7fe0c47e5d68d83f2809397a576ccd58d9c956734f71b5b56c9740ac3ce33`  
		Last Modified: Mon, 17 Aug 2026 22:37:20 GMT  
		Size: 2.4 MB (2401972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3e0d8234497a413b2370f0968f050119c7b1c2dcead429d0a7e7ae26ee2a527`  
		Last Modified: Mon, 17 Aug 2026 22:37:20 GMT  
		Size: 20.2 KB (20210 bytes)  
		MIME: application/vnd.in-toto+json
