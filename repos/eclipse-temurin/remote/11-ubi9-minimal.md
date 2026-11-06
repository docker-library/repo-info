## `eclipse-temurin:11-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:9367744164a695a771ed07ee25783545d0ea9f4f4f2a2d181be3e25c910de5fb
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

### `eclipse-temurin:11-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6a17d14d772e201857129ae7d07273c69c25a8d0caa34a477c493bbeb394932c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210617230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9083ba0547d98cc150b056366bb024a875bfdce652141c0a11ff2f9d8f4128d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:50:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:50:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:50:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:50:52 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:50:52 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 22:51:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 22:51:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:51:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:51:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 22:51:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7333f2008b3ce010455516ea6b8e8c00b0c225ed776587b3bd8c512176028b`  
		Last Modified: Thu, 05 Nov 2026 22:51:20 GMT  
		Size: 27.6 MB (27633629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860489558d68145f73e8256d309a883ca75b8a12e3f2f0640d78b0c3a4b3e817`  
		Last Modified: Thu, 05 Nov 2026 22:51:22 GMT  
		Size: 142.3 MB (142324227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634d7eb702f13d4b616b37cd5f90309af7d8f50d8f728e98bc094ac6922183d9`  
		Last Modified: Thu, 05 Nov 2026 22:51:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7c0286bcda193a147ba479d5fd2f2019027322b2dc1ca7705045864ebeeecd`  
		Last Modified: Thu, 05 Nov 2026 22:51:12 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2072dbadaefc6c13973192b684f859509d5ad08e6ab564f4ab9c116d37795486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2517333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735a1460735534f41cc84c37eba651b136d10ff1ea6ec790e85e5df00159abb3`

```dockerfile
```

-	Layers:
	-	`sha256:4bb634a84065024d77f09fa45bf809e2e436949a1be29898e17923c800754c9e`  
		Last Modified: Thu, 05 Nov 2026 22:51:19 GMT  
		Size: 2.5 MB (2496142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855c8e9ba60573eb7ed16395c2d640861c8a77b82e09d95ea25364382217701d`  
		Last Modified: Thu, 05 Nov 2026 22:51:19 GMT  
		Size: 21.2 KB (21191 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:0c83b97354aec6de981e18a3420f3615ae04222a15bd948f766b81a07ea958eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.9 MB (205872021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d491ba9d8a308b6c5833315b207244dd08e7ab32adb9cff8f797e08e4e7d184`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:04:02 GMT
ENV container oci
# Thu, 05 Nov 2026 07:04:03 GMT
COPY dir:2bdd2747ab945d7a9d2ac3c44d42257c603213cbc7baa656ccc81a23ba6bf702 in /      
# Thu, 05 Nov 2026 07:04:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:04:03 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /root/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:03:31Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:03:31Z" "architecture"="aarch64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:03:31Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 23:27:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 23:27:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:27:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 23:27:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:27:18 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 23:28:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 23:28:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 23:28:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 23:28:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 23:28:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9f9a14895de9c30c7ee6336a5ea720dc2fe575b0809b678170d0b1484cbdcc6c`  
		Last Modified: Thu, 05 Nov 2026 08:00:30 GMT  
		Size: 38.8 MB (38764456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b822d1e1c258264f919fc47b1d58fff8649ab11a3d8263fdc595b995f37b283`  
		Last Modified: Thu, 05 Nov 2026 23:27:37 GMT  
		Size: 28.1 MB (28069714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2886ee9877c242079bfda83ce4fcf1b2d58611495549feeaacfe873df875fbd`  
		Last Modified: Thu, 05 Nov 2026 23:28:51 GMT  
		Size: 139.0 MB (139035251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:888414e9e74888b6136e2c38c5605c793ceb0b33560b22b829610dc526c64b45`  
		Last Modified: Thu, 05 Nov 2026 23:28:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdc2bb43421f6dce5f8d9a59e69623bb3b4abc1fc84b50fed9d1df617735553`  
		Last Modified: Thu, 05 Nov 2026 23:28:48 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d2c1b7231492d7f9a96da52b6d991521d5e0401ac03cc7168ba72796230a4137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2515656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5cee3429aced5fb58f05d5cf3165bd009c92fee7c690574733a70ac332c30b`

```dockerfile
```

-	Layers:
	-	`sha256:96281a13bf15c0368c982b81f6e8cde6f017b5623da47f2c5c73448fa63edf44`  
		Last Modified: Thu, 05 Nov 2026 23:28:48 GMT  
		Size: 2.5 MB (2494348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94a529ab0dee82dfd1322ff4bab31e8f5e69ea363b5fe7889ba9b226c4c1610f`  
		Last Modified: Thu, 05 Nov 2026 23:28:48 GMT  
		Size: 21.3 KB (21308 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:80558881e6a8bc1c0f32cb24ade769b63dadd74854ca77d63ea05d9220909a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204720516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307012f31e00ab6fdb921498f54b1b9e22370b0773eb066ad8af2f6272b7ff68`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:28 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:29 GMT
COPY dir:71d38a1ba2a232bf2a1539156a589171b69c7e13bdcef7890d1e066b1fc4a7ca in /      
# Mon, 02 Nov 2026 00:25:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:29 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:29 GMT
COPY dir:0f37da6522cb4da37ab5bb24702dcfbe681f0adba3328e248ab52a9853b76016 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:30 GMT
COPY dir:0f37da6522cb4da37ab5bb24702dcfbe681f0adba3328e248ab52a9853b76016 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:30 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:00Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:00Z" "architecture"="ppc64le" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:00Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 01:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 01:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:21:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 01:21:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:21:36 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Tue, 03 Nov 2026 01:22:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 01:22:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 01:22:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 01:22:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 01:22:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa3f596ae7698c21f199c443b9309fb1eafc211ad3ad4ff1a6c5c3ff4b3250fd`  
		Last Modified: Mon, 02 Nov 2026 06:14:43 GMT  
		Size: 45.1 MB (45065542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef25287ca90e37eaf01f14803d76ba77c63e423cab3bf67817cc9f7d5f9f28d`  
		Last Modified: Tue, 03 Nov 2026 01:22:14 GMT  
		Size: 30.1 MB (30056005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83069e37aa1efa8f125889892ec6738ca230bd7f9f22dc89b7e076ebd640263e`  
		Last Modified: Tue, 03 Nov 2026 01:23:20 GMT  
		Size: 129.6 MB (129596368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f45226244ca91ac50d4c9cd093f335b52c6b3c3b77cdb1ab600dad3a6e1e5c7`  
		Last Modified: Tue, 03 Nov 2026 01:23:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c5ffbbd57cd10ee7365a873d6205538f091f8217351a33689f0837ab3c75c0`  
		Last Modified: Tue, 03 Nov 2026 01:23:17 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9d3fb165d018c3e54d09a7248fc1f9ec358104f9e6f4e3263d3014a1d779ec0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2513103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61c26c10f3d56beed6e6d217d824791ca63b1cc626aaf446c07e4f7eea9aeeb2`

```dockerfile
```

-	Layers:
	-	`sha256:dca6fa2441a3c11aa651932c5b6e773fb1fcf6275ee1a135a8140734cb57ba29`  
		Last Modified: Tue, 03 Nov 2026 01:23:17 GMT  
		Size: 2.5 MB (2491875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c49c72fcbf13ece516079c38e0ae8d9ef8c4dff0df44b63244e08014d8bbd02e`  
		Last Modified: Tue, 03 Nov 2026 01:23:17 GMT  
		Size: 21.2 KB (21228 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:7b8849d8303fdb5338ab4cec14e1deff07539e398b3603a9a3b810bf386f5550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189442813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffa4d3d4dd4607347039c48c7b46e1fe1efbf4a51b5d83772026b031e6b712f2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 07:09:44 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:09:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:09:47 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:09:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:09:47 GMT
ENV container oci
# Thu, 05 Nov 2026 07:09:48 GMT
COPY dir:67c315a75735d4f9dc7f8aea99d867c0e8ef21877c13cdf1068a55af3eb0d639 in /      
# Thu, 05 Nov 2026 07:09:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:09:49 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:09:49 GMT
COPY dir:91859050cf5087661a7030a8896da8e2f77bbc5f378645990124c7dff2babb75 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:09:49 GMT
COPY dir:91859050cf5087661a7030a8896da8e2f77bbc5f378645990124c7dff2babb75 in /root/buildinfo/      
# Thu, 05 Nov 2026 07:09:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:08:29Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:08:29Z" "architecture"="s390x" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:08:29Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:55:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:55:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:55:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:55:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:55:36 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Thu, 05 Nov 2026 22:55:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='f27033e6f7523c1b0b2565a78e9c0e0abe5596a854ce00ca04ec1b06ece7a935';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64le)          ESUM='bb84dc99346d66d5acd3610c4289b5d7c944559efe0d7a0004f9921866b16c97';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='4f51e08f4b0faa3c114c76ee4999bec81457713362b3c7208469e8c08cfbf89d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        x86_64)          ESUM='5c3f68887c325d36d852ba534303e1f5f1f5cae7d6cc1e951d73e0d8e98a058d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 22:55:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:55:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:55:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 22:55:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe31620ac2ebf80bdf35145b00c6c2f709f5d497cb68f8414e5f0e6dde5ccf17`  
		Last Modified: Thu, 05 Nov 2026 12:08:24 GMT  
		Size: 38.7 MB (38725243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2813e3853e08f9bdd6a1ef958e26f08e061c83fd69a8a1703b8a9ce3aa2d3c`  
		Last Modified: Thu, 05 Nov 2026 22:56:24 GMT  
		Size: 27.7 MB (27666778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747aa7fbb367771937381a31887c2175a430952b05a1bdf57aa5eee9300402e6`  
		Last Modified: Thu, 05 Nov 2026 22:56:26 GMT  
		Size: 123.0 MB (123048191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:420d7c4ce8c01e5fba7a23ca2d2691285c9f2ad9a735a9e8b24302946c976c60`  
		Last Modified: Thu, 05 Nov 2026 22:56:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c37ab1d772553260c2ae4bbfe589e49810c4c1ae5d8dbdacb0caf3e2eb6a3e6`  
		Last Modified: Thu, 05 Nov 2026 22:56:24 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:472983ee505faa50f74e70d3bfc303fe6c592beac1e494609ebe2729193d4414
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2502948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4f3eb7f1b0219a3bf62fd69be1d674ab54278ab1b5f8e267b3018e8353ff12`

```dockerfile
```

-	Layers:
	-	`sha256:8fa41e0ee716e22a414c7d8aacc5db5ddaa996288844d50b100496900372b339`  
		Last Modified: Thu, 05 Nov 2026 22:56:23 GMT  
		Size: 2.5 MB (2481756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9136640809c778cfef8bfff7c3d1d1019d0946cbb25a553631210eed4d501574`  
		Last Modified: Thu, 05 Nov 2026 22:56:23 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.in-toto+json
