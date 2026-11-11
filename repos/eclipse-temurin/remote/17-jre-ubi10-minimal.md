## `eclipse-temurin:17-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:537a68bf5726b83a8c48d70900024bc3946b0e538150423c0f514ad9bdb73c5d
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

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:e09deb20a3e0e07cb6c26603239f865c46d380002ff5c05977f8dbee4f187706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.4 MB (120443297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206369f6e59e156417e1f0b6614e837be277b31ca2c8f47173f84f9a2a60ea75`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:26:06 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:26:07 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:26:07 GMT
ENV container oci
# Mon, 09 Nov 2026 12:26:07 GMT
COPY dir:de8dd738944ef6f5b4d97345e9a50f3fee83357444222ef69d5f7873b509f97e in /      
# Mon, 09 Nov 2026 12:26:07 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:26:08 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:26:08 GMT
COPY dir:2e9c6dae68dcfc921d3ed6e1432dcf31580e458a2773247f4b6f7a0702800b5c in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:26:08 GMT
COPY dir:2e9c6dae68dcfc921d3ed6e1432dcf31580e458a2773247f4b6f7a0702800b5c in /root/buildinfo/      
# Mon, 09 Nov 2026 12:26:08 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:25:43Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:25:43Z" "architecture"="x86_64" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:25:43Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 21:47:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:47:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:47:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:47:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:47:18 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 21:48:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 21:48:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:48:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:48:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:69b57da00fac19111ae56640149ff52360565f228e0311da5314d5052ae6a477`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 34.9 MB (34932314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c378fe726de264d30185aded5639d7533b8ea344701db523410a6b064f59030`  
		Last Modified: Tue, 10 Nov 2026 21:47:36 GMT  
		Size: 37.9 MB (37893810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca2b5c0fbfda36af680cf1e680b1d5aeffecd9fbb0e27327f20985cea73ebbe`  
		Last Modified: Tue, 10 Nov 2026 21:48:29 GMT  
		Size: 47.6 MB (47614575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936d18c3b9cc1eb526a04659f539fd25ba5c2a1b056b02f6e7f97688379480c1`  
		Last Modified: Tue, 10 Nov 2026 21:48:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e137e33809f3354dec9291b97cbfa60bf7e5aa9f76f1393db69b65bb54d592c`  
		Last Modified: Tue, 10 Nov 2026 21:48:27 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:62a4c7aa19092d555cc997c9eed38b884da82fb377679261dbf884981f6f1c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3709922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425d92d9c646c6a8aeb42582488cd0d9d2bfb5f70726e8a0f9bcc8f7690b43b3`

```dockerfile
```

-	Layers:
	-	`sha256:fdf160c1f77961c3c849519bee527b7bcd6150ba2b0c4760d1ef3fb453862186`  
		Last Modified: Tue, 10 Nov 2026 21:48:27 GMT  
		Size: 3.7 MB (3689568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08d6ba8bc7ff15ccd850e5438f802316b0e144a25bf50be9a404a6e11c1098d0`  
		Last Modified: Tue, 10 Nov 2026 21:48:27 GMT  
		Size: 20.4 KB (20354 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e6f69a72d857bbf6c6bfe71933711de7ee5e544912ce1cf2fc26f5d0cd7aa06c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118016274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bfb30b392ef89d9f11874ebf58952e6c5f9b6d0abfddf3b2ec7a096c686af2c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:30:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:30:50 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:30:50 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:30:50 GMT
ENV container oci
# Mon, 09 Nov 2026 12:30:51 GMT
COPY dir:bf003691994de32df5104daabfbd9232c3fc6127a3d2eea464e7f865a51f97b3 in /      
# Mon, 09 Nov 2026 12:30:51 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:30:51 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:30:52 GMT
COPY dir:e41cb72f62e144ba0400c303aa4242e38a9ceaff1fdb33d5559f5ebc8f63325d in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:30:52 GMT
COPY dir:e41cb72f62e144ba0400c303aa4242e38a9ceaff1fdb33d5559f5ebc8f63325d in /root/buildinfo/      
# Mon, 09 Nov 2026 12:30:52 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:30:22Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:30:22Z" "architecture"="aarch64" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:30:22Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 22:13:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 22:13:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 22:13:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 22:13:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 22:13:51 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 22:13:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 22:13:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 22:13:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 22:13:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:79d5de29018018708e9112a663bf8efe877acdd3d07ba720507df4eef16fb72d`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 33.1 MB (33060918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fe4695ada5556fdf6142e06bda6eb31dfe9beb434030dec2cd526a1090287b`  
		Last Modified: Tue, 10 Nov 2026 22:14:09 GMT  
		Size: 37.8 MB (37833038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96bc5b6d4ee467f04a93f072f660f734b4052a517eb72228551cc2d5bd2fc95e`  
		Last Modified: Tue, 10 Nov 2026 22:14:10 GMT  
		Size: 47.1 MB (47119718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b025da415c60bb0a3a763080a347e76c39149af9618f6b6a3a625bf94f9940`  
		Last Modified: Tue, 10 Nov 2026 22:14:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0496ec596662c900e9c5b58bf1fa92a59e038239ccb25c94dac2b6af80ce699`  
		Last Modified: Tue, 10 Nov 2026 22:14:08 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8ee963df6467219c9042702baae2a2b5a7822e3a904d60547c4113ab09f5f748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3709440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b0111fa1022c764db1522b42e4f7b9894a1871bb859b9f1057a1fe6a357887`

```dockerfile
```

-	Layers:
	-	`sha256:7183b3dde6302eba62a5166337fe7992a6000a855afca5397421b2a63d3de646`  
		Last Modified: Tue, 10 Nov 2026 22:14:08 GMT  
		Size: 3.7 MB (3688982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9526440f09e8f6c100ec662bd4f8a1dfebad962fcc584f57c4e1289559ce272`  
		Last Modified: Tue, 10 Nov 2026 22:14:08 GMT  
		Size: 20.5 KB (20458 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:707226ff57c7e29c47b16e073125b98483970f54aec735a2d90515149eedf401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125738277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc5076258d12db1892265dc0748e3e24c79661abd02dc04f376f654e6b042919`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:29:05 GMT
ENV container oci
# Mon, 09 Nov 2026 12:29:06 GMT
COPY dir:0142191d7882bfcd1a642f157feb9fe0f606d143d9c1d9a77ef434e357ac4cf5 in /      
# Mon, 09 Nov 2026 12:29:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:29:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:29:06 GMT
COPY dir:eb3e47531baf4fb6578dff0b54a6c80c07b067beb496e68f478fd566ca4500c9 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:29:07 GMT
COPY dir:eb3e47531baf4fb6578dff0b54a6c80c07b067beb496e68f478fd566ca4500c9 in /root/buildinfo/      
# Mon, 09 Nov 2026 12:29:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:28:37Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:28:37Z" "architecture"="ppc64le" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:28:37Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 23:52:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 23:52:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 23:52:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 23:52:23 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 23:52:23 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 23:58:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 23:58:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:58:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:58:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ed28db74a3ef4dc59de6b526427c8c3a556936eb057f0923cc4be84bca6817bb`  
		Last Modified: Mon, 09 Nov 2026 18:22:05 GMT  
		Size: 39.1 MB (39069438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4082f8f249a65d1ca6e2dff783e599cebda5fb8051de428b448ce5c2cf783a1b`  
		Last Modified: Tue, 10 Nov 2026 23:53:10 GMT  
		Size: 39.7 MB (39671657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3effdd0c2930386c300ea157fd0a5cf0d3c7cfdb7541a1a2324a38934eb4d6`  
		Last Modified: Tue, 10 Nov 2026 23:59:08 GMT  
		Size: 47.0 MB (46994584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2934a1f1822ed6198b268cc2b9bb4c762cf0ec8921d99649652d4a400a30430`  
		Last Modified: Tue, 10 Nov 2026 23:59:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a04c9b9c47211fceeaaeae892da1d13713744ad63498b1f7d8b8f385b6799be`  
		Last Modified: Tue, 10 Nov 2026 23:59:06 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:48d094ce4e95a1db29ccb0aef6fdb41404eea873cf125f409145ac8fb6ac294e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3697451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451be37c4c25ba02002e3c86e321a4e5d9b7fa096530e18289bafcea82de6bf7`

```dockerfile
```

-	Layers:
	-	`sha256:101bca8a7a4cdec4355001c90efcc0eefed6e71918b508a19b8cff2a1a650bf6`  
		Last Modified: Tue, 10 Nov 2026 23:59:06 GMT  
		Size: 3.7 MB (3677067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7bb1f503d721bb2a27c8b29eece1343072804059f5a691d2e26ead1d31f8ccb`  
		Last Modified: Tue, 10 Nov 2026 23:59:06 GMT  
		Size: 20.4 KB (20384 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:2a735293d2ea32b3d7a4636d50918b5c883ca5988ceb61084e999dab419f84fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117258393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9301ecb35a6e4e8e284c4d17152f774d0ee17e4662d07f896e2073646528f98a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:45:22 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:45:22 GMT
ENV container oci
# Mon, 09 Nov 2026 12:45:23 GMT
COPY dir:d12d65b9ef1c46718ee21196fcc3025bc337aeb7a761a8432166375e120770b8 in /      
# Mon, 09 Nov 2026 12:45:23 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:45:23 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:45:24 GMT
COPY dir:86c9bd055e7df245798740ba1f2bd92a4e2862708391b43aa25b1e3890a08f1e in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:45:24 GMT
COPY dir:86c9bd055e7df245798740ba1f2bd92a4e2862708391b43aa25b1e3890a08f1e in /root/buildinfo/      
# Mon, 09 Nov 2026 12:45:24 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:44:00Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:44:00Z" "architecture"="s390x" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:44:00Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 22:55:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 22:55:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 22:55:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 22:55:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 22:55:46 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 10 Nov 2026 22:55:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 22:55:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 22:55:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 22:55:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:06080e5ed1e7453afb1c4cce82c124613221fc6e9b9184d3a4d5fd1c6a308b4f`  
		Last Modified: Mon, 09 Nov 2026 18:21:56 GMT  
		Size: 34.8 MB (34761006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:466ca5ee394f3eec45d527dc25824ddecdb111d1f837231a13270cb0a3125bfe`  
		Last Modified: Tue, 10 Nov 2026 22:56:44 GMT  
		Size: 38.3 MB (38274152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0563072e6a4c129f17fc456a3256c0e7825aa2273efd25fe49b6da9928dd2a`  
		Last Modified: Tue, 10 Nov 2026 22:56:44 GMT  
		Size: 44.2 MB (44220639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555256ce68baa8d8ae47c8f39dc56d38925bc299922f33cfd0e3c13d602af1d4`  
		Last Modified: Tue, 10 Nov 2026 22:56:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea0be0afbbbc49557bfbdc3b211ce6d5bb1f6ff6ce782927ff1b01178d21130`  
		Last Modified: Tue, 10 Nov 2026 22:56:39 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8610daa02725fe1b079fb8aac13516dfa8bde751c196e48d83e75788408ea224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3698666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237ea8bded6157a3253d2fe88611c1c6aaad4bd98f4a20c7cbe13c378993aa1f`

```dockerfile
```

-	Layers:
	-	`sha256:2f9e9e935c9665f2756a923dc8483ac01098d3299df844e14ff757b39bf66000`  
		Last Modified: Tue, 10 Nov 2026 22:56:40 GMT  
		Size: 3.7 MB (3678312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe4339e80951e61433717e4acb132011a4dcf2a118e7fcf739822b4d24b435f7`  
		Last Modified: Tue, 10 Nov 2026 22:56:39 GMT  
		Size: 20.4 KB (20354 bytes)  
		MIME: application/vnd.in-toto+json
