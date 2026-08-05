## `eclipse-temurin:8u492-b09-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:476ddbbf6985fad344a52a6e1feee2f314a3cbb79f6af857e743237b2a8c9477
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a8e0a480a424e1d35128253bd1497ada75b933e359a88c4c4ad08f276e6a66fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123568700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb5afc1f46ae0741340862edf527f54061b6f1caa44c5e9ea6c76c04b6562f4`
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
# Wed, 05 Aug 2026 18:14:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:48 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 05 Aug 2026 18:14:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 05 Aug 2026 18:14:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f5e26a8514cb54661b214b756f0f307e562755e1865d1e13fa375c8e6c6b88ae`  
		Last Modified: Wed, 05 Aug 2026 06:11:38 GMT  
		Size: 40.7 MB (40708771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e7f9e2b8b5083a3743bf7b072b0dd98573354d9ff7658aae474bdce50916b9`  
		Last Modified: Wed, 05 Aug 2026 18:15:06 GMT  
		Size: 27.7 MB (27658197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af76b6529880f6d0a650283254dae87fc227032d8f6bc815e333d70066801ee`  
		Last Modified: Wed, 05 Aug 2026 18:15:07 GMT  
		Size: 55.2 MB (55199113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6929fc1ea291f795b97fa3a5d06f381562421ae2408aeebe939f2e9e1a408c`  
		Last Modified: Wed, 05 Aug 2026 18:15:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10edafb3f28df30f73edfb256f7b563b48613cb498cbae6296792db461b93665`  
		Last Modified: Wed, 05 Aug 2026 18:15:06 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f743739892856c4e1dd51056c494e76031d08639e0df8a228c13fbcc8f7d2e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8d1d6149db7cfd0bbb773d8a1b549455e53f1e9e1635939ae42d7a5e975407`

```dockerfile
```

-	Layers:
	-	`sha256:7658572da8a6f1c0e401f36645d99505ce57e06479358817e02d3e4ae66bc03f`  
		Last Modified: Wed, 05 Aug 2026 18:15:04 GMT  
		Size: 2.6 MB (2615525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8728d42da35f625716393e8941d13bff15555e593d9b2249a4889cbca789ac4`  
		Last Modified: Wed, 05 Aug 2026 18:15:04 GMT  
		Size: 19.9 KB (19873 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2a4c7df4d4c9c039846e3432b5db3d9aecb8be2737410b3199524418d8b44f5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121186841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d604e5894a5d384e8cfc1027ced9fa11dc4b69059559a1ade3513aed48b12c32`
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
# Wed, 05 Aug 2026 18:14:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 18:14:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 18:14:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 05 Aug 2026 18:14:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 05 Aug 2026 18:14:02 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 05 Aug 2026 18:14:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 05 Aug 2026 18:14:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 05 Aug 2026 18:14:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 05 Aug 2026 18:14:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:5a99040b034c68b0560dce13016c272ff01da7a59b1bcf22a9d2b71ead46ab6e`  
		Last Modified: Wed, 05 Aug 2026 06:11:46 GMT  
		Size: 38.8 MB (38809285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773c8991772db8b4b411222fcb04461f2ebbfe596a236e833480dda457336116`  
		Last Modified: Wed, 05 Aug 2026 18:14:21 GMT  
		Size: 28.1 MB (28101536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad6eab8a0f1e9fb37d28b41dadc378f43e934a8f1b48f851c88f6a33d4fc5a5`  
		Last Modified: Wed, 05 Aug 2026 18:14:22 GMT  
		Size: 54.3 MB (54273399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af9eed70d266b9f652de898ac0690ddd4e4b2119affda69fc970786d49bc5e9`  
		Last Modified: Wed, 05 Aug 2026 18:14:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2f45c48a94377db10f39a7066326a4d83b4554a486c8cee11a37b66b9dae79`  
		Last Modified: Wed, 05 Aug 2026 18:14:21 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e51f1c986805b5085f6943ebe7382a2dbd5665f1d9aeb470a4d2590f87276478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2633802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a448199dc8241f7d8e67c3e5f6c2f2d6c88592f74153ddc0f19b43bb96db67`

```dockerfile
```

-	Layers:
	-	`sha256:dde8344d9d7130db0df1901bf0776d9fbbeba206b39376bf6e40892be95f4484`  
		Last Modified: Wed, 05 Aug 2026 18:14:20 GMT  
		Size: 2.6 MB (2613813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7f94abd9912e9a4acca9a778902f48535c8dd526c426f37c9d57db38957d54f`  
		Last Modified: Wed, 05 Aug 2026 18:14:19 GMT  
		Size: 20.0 KB (19989 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:fcc0ee5a0ddf2f5638b4b93ed5550dca39a6b62ffb16b94eb6e44cfc89f135fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127883264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad0f28c8013faef6f8376257362c6ef9d2b3f4d5fefb382dba114e6ed168336`
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
# Tue, 04 Aug 2026 20:54:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 04 Aug 2026 20:54:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 20:54:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:54:11 GMT
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
	-	`sha256:452335c818733c6c0203fdbdd9ca97398724718d7f8f290babdac89ec90e2264`  
		Last Modified: Tue, 04 Aug 2026 20:54:42 GMT  
		Size: 52.7 MB (52669708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0810e7e096a7515b1f4d698bd15f9cb2f10b2438a8774f3effb6255defa18772`  
		Last Modified: Tue, 04 Aug 2026 20:54:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cff5425fa1908086dae78f76e254d7ff5e27ab5163225325f29769927786d65`  
		Last Modified: Tue, 04 Aug 2026 20:54:40 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:39c6338708cd0c00be8483d94b4948e108a277b27a3c0edd28a1ba798d5acb3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719873c75487baab47de112d054f7ca15f49bcda3edf196a701da1507cd570f3`

```dockerfile
```

-	Layers:
	-	`sha256:da6d65cd40bfb9d0e495ff2af330e1832163b898550187b4609a19a3439e2c01`  
		Last Modified: Tue, 04 Aug 2026 20:54:39 GMT  
		Size: 2.6 MB (2612464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c05a66548b7ac4e29c8ab6cce6c54476cf6dac02aec9d614edf167a46cd2895`  
		Last Modified: Tue, 04 Aug 2026 20:54:39 GMT  
		Size: 19.9 KB (19909 bytes)  
		MIME: application/vnd.in-toto+json
