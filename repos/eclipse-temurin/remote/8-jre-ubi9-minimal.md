## `eclipse-temurin:8-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:3b2e318add3209e472adca246ea555eafcbf8157d66ab2293f029e7cc2ce0ec6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a0d3b4cf10bac95f9c8e0df0de8bf658ca8bae46ae81d83ac35e6d0df37cf63f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110701711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac63f16abeb9552e60006e393b5552b605efd1456f4d7e6df3df31556ad6c89`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:12:12 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:12:12 GMT
ENV container oci
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:566bd7ceef314001d2d4000252aedc98335cb96737e8ca003268a81789b22de2 in /      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:12:13 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
COPY dir:f9035c16287ce6eab77e9c51b8fb202e226cae36f96964d20bdabe9900031efc in /root/buildinfo/      
# Wed, 05 Aug 2026 05:12:13 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:11:46Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:11:46Z" "architecture"="x86_64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:11:46Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:14:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:56 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 05 Aug 2026 18:14:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 05 Aug 2026 18:14:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f5e26a8514cb54661b214b756f0f307e562755e1865d1e13fa375c8e6c6b88ae`  
		Last Modified: Wed, 05 Aug 2026 06:11:38 GMT  
		Size: 40.7 MB (40708771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac6791ac1690a6cb3adc037e79cf3c03fdd88929e9364d0504c890808a628cd5`  
		Last Modified: Wed, 05 Aug 2026 18:15:11 GMT  
		Size: 27.7 MB (27658125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a50d725a97c7874ddfcf3d2cf7cf1f379fadcb2304b05b9a4ca0529082b886`  
		Last Modified: Wed, 05 Aug 2026 18:15:12 GMT  
		Size: 42.3 MB (42332216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7f8046ecf8607e984627489d6915dcfac9b7d7fd6969de0525d8f5995777ac`  
		Last Modified: Wed, 05 Aug 2026 18:15:10 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3e350d20b544bf1175a447a8dc37710a57e4774c9d4b700bc362f33638db1f`  
		Last Modified: Wed, 05 Aug 2026 18:15:10 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:10eca1bbf8298be81d86319123bac5c91333ccc2c8b599778b55c6a98634234f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2458886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffa39f647dc9d93af16667053b1658f16493a1e82a4c164ab90f63e3a70ca1d0`

```dockerfile
```

-	Layers:
	-	`sha256:ec2f1a30df0f6e48d4871e53b765b3836116147098ad497b4c62c809b3b3d64b`  
		Last Modified: Wed, 05 Aug 2026 18:15:10 GMT  
		Size: 2.4 MB (2439539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74ced83d19ab35382aa0248e36a353f16a512a0c02c0a814ca7bc5cfa8b485a6`  
		Last Modified: Wed, 05 Aug 2026 18:15:10 GMT  
		Size: 19.3 KB (19347 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fb824dc6af63713efcdb15b35309c26cfa5654cc6be8b025eaa70e987bc2b282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108214924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3facdd95bda1112a803d1647a02b5bead8db74c87ad6e3f06808fe91d146847`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.expose-services=""
# Wed, 05 Aug 2026 05:14:19 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 05 Aug 2026 05:14:19 GMT
ENV container oci
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:353d0b802c7bafe293cb00c4bee1ca7723a5390ae04dc844a3a7d0512dfa7188 in /      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 05 Aug 2026 05:14:20 GMT
CMD ["/bin/bash"]
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /usr/share/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
COPY dir:6307b37184d91d5470cef4e26e792c3988b7f20aa29464c1e657d34f7b14c41f in /root/buildinfo/      
# Wed, 05 Aug 2026 05:14:20 GMT
LABEL "org.opencontainers.image.created"="2026-08-05T05:13:59Z" "org.opencontainers.image.revision"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "build-date"="2026-08-05T05:13:59Z" "architecture"="aarch64" "vcs-ref"="1ca6f1fd6baff20888272c2426a8dc7f6030dff2" "vcs-type"="git" "release"="1785906621"org.opencontainers.image.created=2026-08-05T05:13:59Z,org.opencontainers.image.revision=1ca6f1fd6baff20888272c2426a8dc7f6030dff2
# Wed, 05 Aug 2026 18:14:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:30 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:30 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 05 Aug 2026 18:14:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 05 Aug 2026 18:14:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e041a962a952f10050994f779ad0cf5563e819333184148eb37dabe32576f8ee`  
		Last Modified: Wed, 05 Aug 2026 18:14:47 GMT  
		Size: 28.1 MB (28101373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a437f8935bd2c981801920f9a17a4b5d860e42288487feadbe5144181f8d9c9`  
		Last Modified: Wed, 05 Aug 2026 18:14:47 GMT  
		Size: 41.3 MB (41301665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d0e9ef5fb7f7b31bda956e1932e903168aeeb25268887f683eb418a3f2cac6`  
		Last Modified: Wed, 05 Aug 2026 18:14:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c10a58f517fbe5ff60d57987e92962cb9575ea6b8830dc31ba63bd576d67d3a`  
		Last Modified: Wed, 05 Aug 2026 18:14:46 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8396a79afff31674d83a3934c7faff90d6c5e2d913466f77ab1d2b1dd05a2093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2457257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c046a0e58141ecaef5222335beb3c218a8815b773ee42442970b4d8ba4c81a9`

```dockerfile
```

-	Layers:
	-	`sha256:aa0b116718956940a1844397eb0571f686b49a9b4b8d546c40f2a008a143bc8c`  
		Last Modified: Wed, 05 Aug 2026 18:14:46 GMT  
		Size: 2.4 MB (2437807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4fab6f7f93356f882b48f8209e58e476560a5bac289c05c45dd6745d9566c86`  
		Last Modified: Wed, 05 Aug 2026 18:14:46 GMT  
		Size: 19.4 KB (19450 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6b185636d8fba6a07334d7424c6f63d6de380c4c0890bc9949cfdd742bbae922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116953969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6862e4378d24f9e07740a980fff0ca7c7dc24cacd08993234c9e8f28816b9e07`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:17:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:17:07 GMT
ENV container oci
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:1ade7d4dffe44110b5720076840490f6baa7301b84541d08c0ea6a38569ff32e in /      
# Mon, 03 Aug 2026 17:17:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:17:08 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:c4aef7217014f798a2cbbb791d2d6bc060d5a6d90fc8cf9706d57150150b9513 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:17:08 GMT
COPY dir:c4aef7217014f798a2cbbb791d2d6bc060d5a6d90fc8cf9706d57150150b9513 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:17:08 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:16:50Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:16:50Z" "architecture"="ppc64le" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:16:50Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 20:54:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 20:54:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 20:54:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 20:54:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 20:54:00 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 04 Aug 2026 20:55:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 20:55:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 20:55:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:55:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d878f355008c362e8a970b32096625c413c4690a3b0d735cf1fb625e90c0a75d`  
		Last Modified: Mon, 03 Aug 2026 18:11:34 GMT  
		Size: 45.1 MB (45128614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550cac100c4810402c753e19231ae0aefe14a5cc8a455755ec291a1491fd764e`  
		Last Modified: Tue, 04 Aug 2026 20:54:41 GMT  
		Size: 30.1 MB (30082322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd43e45a1f62e0f383c73f9ea329bcd3cb6f22080f5598ac7b4cd6166e0691c`  
		Last Modified: Tue, 04 Aug 2026 20:55:22 GMT  
		Size: 41.7 MB (41740435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea947e41bfbe558ef96cedabe56e461d43ef8a6bf63acf23cdb68177274fef4`  
		Last Modified: Tue, 04 Aug 2026 20:55:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8777f52a5f3329e6008c256256234382cae0bcb2b74097b342221db61aba6c47`  
		Last Modified: Tue, 04 Aug 2026 20:55:20 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:526bb042a2609abc801434564ea7b5e06655d8f0f8f5e8c3add9c10c5e5eea6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2457865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00a4dd6aa413af496b4552b8462e069751766c4ad35cecaee95bc9f430beba6`

```dockerfile
```

-	Layers:
	-	`sha256:dfea394760de09a98de28c110ba9c2122b45efc755c64280b356a9a3615622c3`  
		Last Modified: Tue, 04 Aug 2026 20:55:20 GMT  
		Size: 2.4 MB (2438488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c79fa878bf2ee25345f6ff3ef6d114409237e9d179e680395bc30682845adb4`  
		Last Modified: Tue, 04 Aug 2026 20:55:20 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
