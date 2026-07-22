## `eclipse-temurin:21-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:9ad8f91900869aed17446ab4e4e4424c3e77a651d9154ec75f2be005df1d97de
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

### `eclipse-temurin:21-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:494377ebaec49f9d52c1cc04f71033be1e2c8b5e193fe7291465ddf1861fc927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230890391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a2fbf4b0420851e43004d576cf7334f2b127450c0d22f80f43abb941343a00`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:26:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:26:51 GMT
ENV container oci
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:b8ce0462b23033a189e5c4dd0f5c6ccb96b3cec90716c47359623a67ff89ff8a in /      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:26:52 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
COPY dir:252f351b421304c992996882cb00d6f04fd6ac2c0d6c63f07b755dedc3bc9246 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:26:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:26:32Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:26:32Z" "architecture"="x86_64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:26:32Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:28:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:28:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:28:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:28:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:28:25 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 18:28:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:28:33 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:28:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:28:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:28:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1a70cbb74144ef90a6ddb34ce9ec12c795834baf78bdb1417827dff114fc5859`  
		Last Modified: Wed, 22 Jul 2026 00:25:25 GMT  
		Size: 34.9 MB (34943743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64607e9b55a7af7e74a9b65d6ef9613b8bb4e6206885562aa51f7b6190954cb`  
		Last Modified: Wed, 22 Jul 2026 18:28:52 GMT  
		Size: 37.8 MB (37771551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e8d125e52cea4ddfe14f83d8b966eed9a549a02d7d86de04995b1bd994d202`  
		Last Modified: Wed, 22 Jul 2026 18:28:54 GMT  
		Size: 158.2 MB (158172680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d699db98d082ff3e8d4584edc98be46574b70c312892587fadc866e25af383`  
		Last Modified: Wed, 22 Jul 2026 18:28:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cbe3577f633c1cb0820c57acc6384135d72351ca9f0d254ed3f32efbd66fb4c`  
		Last Modified: Wed, 22 Jul 2026 18:28:50 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:94859e66c379719dd6463421ce307a41a22bb684688b1e9208a54e28e1ce080b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3817a29bbee8a87ca32f5a28aac7952b0b4bb09d6a34143e3225bd92b95c5b5c`

```dockerfile
```

-	Layers:
	-	`sha256:6f4d5fd85968bb76250294796997090b4119e0982297d8040cc19df4ad0606fe`  
		Last Modified: Wed, 22 Jul 2026 18:28:50 GMT  
		Size: 3.8 MB (3794259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:826a6ec576f6f2355b936cd28afa8955b236f42ff3461967a978a41a57f806d3`  
		Last Modified: Wed, 22 Jul 2026 18:28:50 GMT  
		Size: 21.3 KB (21340 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:b037d46371097229b8d004a82c77a438f1db781a9ee127995239dcbfef0dda7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227233760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9785918dcbbe48d0eddb59deae68e31249fc1b1ab40e4242415fb05d2a49be52`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:30:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:30:05 GMT
ENV container oci
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:58c4efe09946efbac1eda4e0aca465b8b6cdac53b3c03d17070e9e7933760782 in /      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:30:06 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:30:06 GMT
COPY dir:a9f896a5c62d3423fff2b67473319ede4242afa9801ddb241e77920e7ee4ae16 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:30:07 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:29:44Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:29:44Z" "architecture"="aarch64" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:29:44Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:52:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:52:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:52:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:52:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:52:45 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 18:53:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:53:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:53:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:53:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:53:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:58f664164ca85fb5b417ce6f6fffea1e66eaf780a7dedb2c483cdd5286d5ee2b`  
		Last Modified: Wed, 22 Jul 2026 00:25:47 GMT  
		Size: 33.1 MB (33053422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0d872524b22ace2bdfb17f47422247a33a3e1b5e70a9045c843e51c60af241`  
		Last Modified: Wed, 22 Jul 2026 18:53:03 GMT  
		Size: 37.7 MB (37713536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575ae94b6d191e52e84a0aa18f71f221a77b93ddd709109d8b1f4c8d2a5bb45`  
		Last Modified: Wed, 22 Jul 2026 18:53:40 GMT  
		Size: 156.5 MB (156464384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96543b6c0708383385abaa3ae885545069ea2fd5cd37496b44f50eb6f7a15dd3`  
		Last Modified: Wed, 22 Jul 2026 18:53:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5130ddf4082e225906ce08a4c3fb3711ea3318e0311dd8a24d50bb96499dada4`  
		Last Modified: Wed, 22 Jul 2026 18:53:36 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ad8ae9e23df48100367517a8ae8ccebf7721a7f2dbafaf208c30e0e9daa59edb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07293c68474a549ed0bb80dca4f76a912f014e6e0de346de24a9b0848a2e3b89`

```dockerfile
```

-	Layers:
	-	`sha256:6c93c3f0853b65f6782ea4d1d649246a36b4c02d07ef68ce6828d5e4449bf339`  
		Last Modified: Wed, 22 Jul 2026 18:53:36 GMT  
		Size: 3.8 MB (3793685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c98f8b3d00a2972ac54e1d6364723d68be226c7bb935d2a1be983591c400b1c`  
		Last Modified: Wed, 22 Jul 2026 18:53:36 GMT  
		Size: 21.5 KB (21456 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:246f10ecd62d40f65d374842637bc2b2fba2ce0bef5df6600a41bb9d36c0574d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236872357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34844cd8322c79ffb53a0c9af18e8ae68f9262615f8c5d1178d57b2e634a1367`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:34:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:34:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:34:53 GMT
ENV container oci
# Tue, 21 Jul 2026 21:34:55 GMT
COPY dir:2be7a12ce5be4d4799407145cf668d5c439ba83ced58b5070bfcdd5f320f8500 in /      
# Tue, 21 Jul 2026 21:34:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:34:55 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:34:56 GMT
COPY dir:5cd3487f87b37ce48164c2bf021513de7ca3b9cca1b06b6185c3eb1a7d71e341 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:34:56 GMT
COPY dir:5cd3487f87b37ce48164c2bf021513de7ca3b9cca1b06b6185c3eb1a7d71e341 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:34:57 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:34:01Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:34:01Z" "architecture"="ppc64le" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:34:01Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:44:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:44:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:44:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 18:50:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:50:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:50:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:50:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:50:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7dff45cdbd542ff0d1554cac7bc8766b00b4f2cac3b6de5ffb196a763e728d0`  
		Last Modified: Wed, 22 Jul 2026 00:26:15 GMT  
		Size: 39.0 MB (38992813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea677b487eddcc2724d84a06466dbe287bd24402018e31b7d306276209358525`  
		Last Modified: Wed, 22 Jul 2026 18:45:02 GMT  
		Size: 39.5 MB (39528607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c35837329081e6044621547c9c8ea26b8de3af45b4fdf488fb269a4a58c06f`  
		Last Modified: Wed, 22 Jul 2026 18:50:54 GMT  
		Size: 158.3 MB (158348518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38dfec2b0e94075d0839b8d5ad53f58535b39d884dad2e053e24c3735f8aafe`  
		Last Modified: Wed, 22 Jul 2026 18:50:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabae2f8664613f0c0cfc7e2ab1e964860c232b782c436a1bc6b9985299a1e93`  
		Last Modified: Wed, 22 Jul 2026 18:50:51 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b815676e70a9f1f4aa53a195c1ed406bb294d036c9d5662092a05da24b984690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a256b2e56a9950364f9df087f0fd63ba3567cea16dfd3dccfa679ce9b0a3181b`

```dockerfile
```

-	Layers:
	-	`sha256:cfbb973b43f9680b87ae43a0d232c41945e930fcd394facb4fc8333dc5bf7cc3`  
		Last Modified: Wed, 22 Jul 2026 18:50:51 GMT  
		Size: 3.8 MB (3781091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:770003f4b1475c4c4828593bd85b8975d109799fca82c69b146aee0ca282188b`  
		Last Modified: Wed, 22 Jul 2026 18:50:51 GMT  
		Size: 21.4 KB (21376 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:e82fbedf118729e0b9f2add78bcd2feec1aebab3569a4f15cfafc1ad0915b50f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.3 MB (220297274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e780812d2774f5c15624e2b2f0a75ef669098644bd585b3f17cbb0d8922a8b2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 21 Jul 2026 21:51:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 21:51:09 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 21 Jul 2026 21:51:09 GMT
ENV container oci
# Tue, 21 Jul 2026 21:51:09 GMT
COPY dir:9eebc05d3ad25e1005067d385daba94753dd3bfa6128dd08f610b26253fb6350 in /      
# Tue, 21 Jul 2026 21:51:09 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 21:51:09 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 21:51:09 GMT
COPY dir:13be6a4129a9a53b67e6e64ca1941131443609662eccf183d87e0edf74a5d332 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 21:51:09 GMT
COPY dir:13be6a4129a9a53b67e6e64ca1941131443609662eccf183d87e0edf74a5d332 in /root/buildinfo/      
# Tue, 21 Jul 2026 21:51:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T21:50:12Z" "org.opencontainers.image.revision"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "build-date"="2026-07-21T21:50:12Z" "architecture"="s390x" "vcs-ref"="f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a" "vcs-type"="git" "release"="1784669047"org.opencontainers.image.created=2026-07-21T21:50:12Z,org.opencontainers.image.revision=f2cd6e345a1ff2cf7cb9fe0fd0a23c457fd8882a
# Wed, 22 Jul 2026 19:56:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 19:56:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 19:56:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 19:56:33 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 19:56:33 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Wed, 22 Jul 2026 19:58:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 19:58:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 19:58:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 19:58:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 19:58:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:82442003a9e8ee823cd2cb391091b2b043ed73db6df06f649c004890be849039`  
		Last Modified: Wed, 22 Jul 2026 00:26:06 GMT  
		Size: 34.8 MB (34752287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00caefeda422c90a1621a7afcbd01da717550e5ffcda98aac817f034605390ea`  
		Last Modified: Wed, 22 Jul 2026 19:56:57 GMT  
		Size: 38.2 MB (38152354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553ca84cdadc123c372899263dbde9e627224474a8b16ef92593c9c90c1a40ca`  
		Last Modified: Wed, 22 Jul 2026 19:58:35 GMT  
		Size: 147.4 MB (147390213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6b9c264b677b311788f562e25c25c55a70b3e914a76a72625f2c6fd977f25`  
		Last Modified: Wed, 22 Jul 2026 19:58:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295a069cae9ffa7d79d48216ad5253d9a95f0b0f637290093eef5675838a4bd3`  
		Last Modified: Wed, 22 Jul 2026 19:58:32 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:83fbb07c8e3749b615f7f3dda02ebabdbf3f7bc87a3513556e684859bf392425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a1f7f8707a0b9f9e59cf0973858331bd357e2f3f202c093066edc54ee168ca`

```dockerfile
```

-	Layers:
	-	`sha256:21a898fef5935f38a0c200a9271995518573c6d45d6a2c72dc242f4dc654c193`  
		Last Modified: Wed, 22 Jul 2026 19:58:32 GMT  
		Size: 3.8 MB (3779849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2219be3b033bb309237c1aeebb50e2dda45863b1258cb680351f015d40a36e36`  
		Last Modified: Wed, 22 Jul 2026 19:58:32 GMT  
		Size: 21.3 KB (21339 bytes)  
		MIME: application/vnd.in-toto+json
