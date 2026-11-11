## `eclipse-temurin:8-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:af2ad5ac56b5c90b2f0003e6178f4ec1b9bf234cae9bb47a19c0f7d00d747750
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:5d8b18fe4c4fc0e04bf6a9232df7d2e0571429800cae06b36b76c4c2fa782d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128037348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32e2446ce6d545886cad863045d5a190a79f1102142e414820e3510944132159`
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
# Tue, 10 Nov 2026 21:47:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:47:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:47:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:47:15 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:47:15 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Tue, 10 Nov 2026 21:47:19 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 10 Nov 2026 21:47:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:47:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:47:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:69b57da00fac19111ae56640149ff52360565f228e0311da5314d5052ae6a477`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 34.9 MB (34932314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e270a03620cbfecdd5b43e89552e42a17ab2c0a7f2f6722c20071a21a04526`  
		Last Modified: Tue, 10 Nov 2026 21:47:35 GMT  
		Size: 37.9 MB (37893981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ecf6ce0da4365a87284b127ef4abf752a60fccdf31b2a9b299a8a37c49831e`  
		Last Modified: Tue, 10 Nov 2026 21:47:36 GMT  
		Size: 55.2 MB (55208436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4d2f6c47517e9ecdb9b44790024d620f8ecb35fc4cca6747b9c55a9a572884`  
		Last Modified: Tue, 10 Nov 2026 21:47:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec580aa1f97df2ee584e991fb9bf35e455697bbbc25534c6a5bf95c7a35b14b2`  
		Last Modified: Tue, 10 Nov 2026 21:47:34 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:556180a57f62ab5add4d5dc16306f5518a75c80d7dce97ea44f9620d5b2b2807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3914454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf034080ea947009a32cdeec960c2fb5594b57196c5edd55560ebf68c7f2b3e`

```dockerfile
```

-	Layers:
	-	`sha256:05d68ea4247eb728b6150ef228adb76a65138af24f8f4a391d26f59d18f3bc9f`  
		Last Modified: Tue, 10 Nov 2026 21:47:33 GMT  
		Size: 3.9 MB (3894415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5f91a9107c08bf370bd6533308e471a8639a23119b48dcedd136b6593fc2140`  
		Last Modified: Tue, 10 Nov 2026 21:47:32 GMT  
		Size: 20.0 KB (20039 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:cb5ec384b8a20a1f1c379119667c1d0d43d66c9372d19bb29c3d04730133dfd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125167792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736de6e0c6b47790107ff96d4965a2d02df5b738f4c9a795ff2cd1c1a9f3dce0`
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
# Tue, 10 Nov 2026 21:50:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 21:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 21:50:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 21:50:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 21:50:51 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Tue, 10 Nov 2026 21:50:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 10 Nov 2026 21:50:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 21:50:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:50:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:79d5de29018018708e9112a663bf8efe877acdd3d07ba720507df4eef16fb72d`  
		Last Modified: Mon, 09 Nov 2026 14:54:21 GMT  
		Size: 33.1 MB (33060918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d929a0e198c5699e030e0aff36746cbb2013b868432a598580fffaefce12c2`  
		Last Modified: Tue, 10 Nov 2026 21:51:11 GMT  
		Size: 37.8 MB (37833320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddacb874b93d1dbb6c8bbb6b63c341c2df1ae70d609a02e29488e1dbadeb45b1`  
		Last Modified: Tue, 10 Nov 2026 21:51:11 GMT  
		Size: 54.3 MB (54270933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd3e04b1fd755fce6ad36eb316491987fb1344c4d2623eb86e2da5ae2a81df3`  
		Last Modified: Tue, 10 Nov 2026 21:51:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b868a8185a6af726b7656e72e2e2fac9f29ff89a0c028be676fbfcdddd9f9778`  
		Last Modified: Tue, 10 Nov 2026 21:51:10 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5f742f11e1a1b45c387bc9decef12b4f5188ddefc59ff5cad0257b7f5c572f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3914695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12242198bc7d914f17b5d8a7aa8e658bdec52848adf19e349a58027687a1c1bc`

```dockerfile
```

-	Layers:
	-	`sha256:70cb501e90972de3c736b7633bb06601e9fd09bfba78d6531c0ae39cd9540ad6`  
		Last Modified: Tue, 10 Nov 2026 21:51:09 GMT  
		Size: 3.9 MB (3894541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aba2a89f7a1648f6972a72f76bcbeabf749ab9b09e6ba59dc4f1c84558111935`  
		Last Modified: Tue, 10 Nov 2026 21:51:09 GMT  
		Size: 20.2 KB (20154 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:323616614b4028ed350a2ce3e69e14e4ef6baa7d56278d021783ca583d4ec053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131433420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce81aa72b2875b375ee8a5f07061d72ba76f5f8c89c0776ffe4a1e161b8da75c`
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
ENV JAVA_VERSION=jdk8u512-b09
# Tue, 10 Nov 2026 23:52:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='01263df22c4553f63146bbae807e70cd4628dd0d9ec7582f01cb2453f7c69aaa';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='8a1e67cdb014b924ddd4775cef3089b065aea2a73e9d540e938586319c73a4e1';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='fb3bfa869012419b562bb4235d0d83ec4f8c1dda62ae432ba20c6c3a7e43f7e4';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 10 Nov 2026 23:52:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:52:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:52:33 GMT
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
	-	`sha256:be021fe7d31ce878377e288849ecaaee9ed60447c8291236407104e2282ab1ef`  
		Last Modified: Tue, 10 Nov 2026 23:53:11 GMT  
		Size: 52.7 MB (52689707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e39299a39be3130357a91ef54d8b74ba588e8041e7e4d6b3955887ebcfd20e`  
		Last Modified: Tue, 10 Nov 2026 23:53:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46644d34f0a487e64bbe3c93460f0a5a3b8a41a42c99445517d1541a14b27c36`  
		Last Modified: Tue, 10 Nov 2026 23:53:09 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3e5acd2e478d276cb4c51783a71ca523f15ae62e295e7d4e4d2826d082a40fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3901917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c3aa9d0fb2f56efae8283b7a9c785f1a0de295bcc9b3b0f9c012c314edc52d`

```dockerfile
```

-	Layers:
	-	`sha256:d3444532c0d63ef3fe1cc55301b321fe8da07af885993e5dc3defb41adb8331f`  
		Last Modified: Tue, 10 Nov 2026 23:53:08 GMT  
		Size: 3.9 MB (3881842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86a04e428ad3c93f2ebd8ba2eaf07ded096919c1e97294c0e4967148800cfcbb`  
		Last Modified: Tue, 10 Nov 2026 23:53:08 GMT  
		Size: 20.1 KB (20075 bytes)  
		MIME: application/vnd.in-toto+json
