## `eclipse-temurin:21-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:6b289fcb45009ba4b256f79b77b55026a15663e7d6679acaecabf5435539b05d
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

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:507c85291d1cf6d8c73df48b92060edd78eaf6b3ddc1f5d0edbc50655cf00cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230888487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75bbce18396e92454853c79ea7edb15a1622725e63eed560badda8a6b139c30c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:04:44 GMT
ENV container oci
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:876d55a6afad3c650d61c0b66072339064fd4222217a3606856925173e6b4f5d in /      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:04:45 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:04:26Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:04:26Z" "architecture"="x86_64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:04:26Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:36:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:42 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 22:38:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:38:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:38:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:38:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:38:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1abc6d29de37a94354a7ff1ac7ec241d10a16dabadf22aaa8ea915e748300f18`  
		Last Modified: Wed, 09 Sep 2026 09:16:41 GMT  
		Size: 34.9 MB (34908248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7417f344fa3a35de5ca400b28649146bed9ccffcaa997358ee3d7e75868a8c29`  
		Last Modified: Wed, 09 Sep 2026 22:37:02 GMT  
		Size: 37.9 MB (37851272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ba31e476bcce42fe8c031dc18151af41d9ae7edf7c0c0ecfff7255467e5973`  
		Last Modified: Wed, 09 Sep 2026 22:38:29 GMT  
		Size: 158.1 MB (158126367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6800e2cac31e8fe5e63d0dd8720938d2bdbecb79fd904afb7aa66400971056`  
		Last Modified: Wed, 09 Sep 2026 22:38:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d007892e88e0d4ffdb2b84f6fc65f4104bcb7e564f102fe17071a5034d290227`  
		Last Modified: Wed, 09 Sep 2026 22:38:25 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fd5fcdc9a5cd9e85edc0141fe3c8ec6ad65994b10db6ed2a2b912d2e18b8c680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed4d6cfefac563d9cfd321b05055c200aa1e7647391e3a769cb6ff5f77fa801c`

```dockerfile
```

-	Layers:
	-	`sha256:76e9167788209a0454c51ef74d9163c1a506682ef26bd659c7415ad785a7c454`  
		Last Modified: Wed, 09 Sep 2026 22:38:25 GMT  
		Size: 3.8 MB (3794346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50530bc9e829ab3dfc66a28728a9442c7742617766b72562db9a0b13905e206d`  
		Last Modified: Wed, 09 Sep 2026 22:38:24 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:7321a6484c14e5228370f4c9156c00db145c6e8fe9e00f13d7780f77da86bb8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227306516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea43dcb6660ae2db8d9a822bf518bac94b1c48a460bd479af78b296e8a8d6eee`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:49 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:50 GMT
COPY dir:57d486e1a6b8b6e97fc97c129774bb79b4e36c15fecc3af363e179377116c60e in /      
# Wed, 09 Sep 2026 08:06:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:50 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:27Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:27Z" "architecture"="aarch64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:27Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:36:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:36:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:36:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:36:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:36:13 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 22:36:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:37:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:37:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:37:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:37:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8fd75ffc9e9e12cc305a8d45a9be20f6f7f4be59d1a88a8ba04e45d5fe6b4e10`  
		Last Modified: Wed, 09 Sep 2026 09:16:40 GMT  
		Size: 33.1 MB (33117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4fcc933a7b7f86c65cec5f135722bb3bb4e6dce7f0d217bbdba22d7cb2b1c2`  
		Last Modified: Wed, 09 Sep 2026 22:36:43 GMT  
		Size: 37.8 MB (37780795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bec683d12fa99523fde3cb0ba3e665c2eb893ddb299db6de849de3054ee89e0`  
		Last Modified: Wed, 09 Sep 2026 22:37:21 GMT  
		Size: 156.4 MB (156405787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53ed021bb2bcf8dd4d46686958bc2e988cd8e86c9f9afe789d4fdb234e89352`  
		Last Modified: Wed, 09 Sep 2026 22:37:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94feaaa9e119e2ff283846b1482c07889cb3b97c9cd9e2b549ca2d4551d6e72`  
		Last Modified: Wed, 09 Sep 2026 22:37:18 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:662ade30534e764f5d185c1242441bed8608b2d5c271af8d278371466330af4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363c09218720e4836c88bd1aec7da8b213bb597e369e5657c96a30cdfea71d7f`

```dockerfile
```

-	Layers:
	-	`sha256:768766c41878bbc490d7af09f8c83745fbdb30a3cd819e82d25bd16115c81521`  
		Last Modified: Wed, 09 Sep 2026 22:37:19 GMT  
		Size: 3.8 MB (3793772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b2dee3a4b1f5569651ed8501aa7cdbc58fbee105f0f7ed1445f3b8ce59abe89`  
		Last Modified: Wed, 09 Sep 2026 22:37:18 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:547f848b61906043ae2530e2ed896d4c8c359eae6b492ee7bc4d860809405364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.0 MB (236987078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c9f065765f53f59a6399f2dca09665c1e25d143dc696f382e1fd86fb836131`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:39 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:39 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:0685b6397104b9765a1a0dd63be7b48ac903f486ac996e6e23bbb9b17d69003c in /      
# Wed, 09 Sep 2026 08:06:40 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:40 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:fac2abf7d1bd3e81b31254757fb843349b91fa6f1a92b7b768e949e6a469dae3 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:40 GMT
COPY dir:fac2abf7d1bd3e81b31254757fb843349b91fa6f1a92b7b768e949e6a469dae3 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:18Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:18Z" "architecture"="ppc64le" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:18Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 22:35:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 22:35:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 22:35:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 09 Sep 2026 22:35:53 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 22:42:54 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 09 Sep 2026 22:43:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 22:43:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 22:43:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 22:43:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:245a2e93cd72e73a8f90ed5ced2a97c07c6fd0958f8e2194fab3139abf47eb5f`  
		Last Modified: Wed, 09 Sep 2026 12:24:36 GMT  
		Size: 39.1 MB (39102809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10c8fc955d4331db7d08e6c6c4453b5eb830f6e137362380c3076b86f9d85b6`  
		Last Modified: Wed, 09 Sep 2026 22:36:57 GMT  
		Size: 39.6 MB (39600709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:882563f452cd6dd01475bfc9a1545dfb90e934fb7ce5169de5ae10b81fe45fe7`  
		Last Modified: Wed, 09 Sep 2026 22:43:49 GMT  
		Size: 158.3 MB (158280959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10179220ca0a9f777bb9caed59805de5d1fd6314c73e274867827071f9525371`  
		Last Modified: Wed, 09 Sep 2026 22:43:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7017579282c2bc0986908af73e80b9c63a7d4d16b1275a6f680b656c29661f17`  
		Last Modified: Wed, 09 Sep 2026 22:43:45 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ef17ef10f22e78b291e82c4382ebd8da78ae2cfadc60e4f167e1834327e406b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fba5fd6f8064deaa2a4c434f32f9fec7c6fd0c355b406cdd20d830303d21c0b`

```dockerfile
```

-	Layers:
	-	`sha256:42c904edc105348d5a0ae60425d3c8e5b8258b6262c09890b938d19188a3e182`  
		Last Modified: Wed, 09 Sep 2026 22:43:45 GMT  
		Size: 3.8 MB (3781178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e6205d7232d9a8ea6e434c379f481ddaee05452186a718c9f6a807332a1904b`  
		Last Modified: Wed, 09 Sep 2026 22:43:45 GMT  
		Size: 21.4 KB (21352 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:cdd2a1a920fa43c01c693c0bae769d59115d17a9104807b2a1a0e129850769b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.3 MB (220325716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214465d4a1cae21090bdc51e4c5ba638568e1b57557bfa62ea7a75f0109f9650`
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
ENV JAVA_VERSION=jdk-21.0.12+8
# Mon, 31 Aug 2026 19:03:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64le)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 31 Aug 2026 19:03:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:03:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:03:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 31 Aug 2026 19:03:55 GMT
CMD ["jshell"]
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
	-	`sha256:f4d46e8f26a6331d6a66bba1e914127508e19d7888730e3a273c2e67ddd98b84`  
		Last Modified: Mon, 31 Aug 2026 19:04:22 GMT  
		Size: 147.3 MB (147346443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad00767e4cc068219bc761ff910ed0a6abd155f927ee65eacaf806ac18b4336`  
		Last Modified: Mon, 31 Aug 2026 19:04:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b626073ddc2e122a29e9292dea63cb4637904aaa3f383a5586cd457fb970ac5`  
		Last Modified: Mon, 31 Aug 2026 19:04:20 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f7fa547d19989ae8942969c8313fa8bea883e060adc300fec8f2efd96251b267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9cac76f0a2a9308b195bc5b8d4110d57453113b9d550218503145f0bcecc1f`

```dockerfile
```

-	Layers:
	-	`sha256:e9650b51be76527a749e92f9f247a1bc6a7b62188a0151843865321837eb9195`  
		Last Modified: Mon, 31 Aug 2026 19:04:20 GMT  
		Size: 3.8 MB (3779924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d91c1993eb9b3a5c105d29f4e267d71c0538ca821d40f15d2a12b9af6cec524`  
		Last Modified: Mon, 31 Aug 2026 19:04:20 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json
