## `eclipse-temurin:8-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:cfc7b97dc78021cca05bbe76ebcc74cb96d426aac3fa56a89d46889d5d3f92a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:528e536cd4e149aa1cfb58770841f97e05deb31931f0488300c91ec0f4ea56c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.0 MB (106042158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d62f61d706b805dca0c6ec64dce885a81d32d7551373d14a3b9d7337473554`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:30:29 GMT
ENV container oci
# Wed, 04 Nov 2026 23:30:30 GMT
COPY dir:4d560116149d68c45acaa63b56ff293dcae47fabcda8ad6571764b0825e47e6e in /      
# Wed, 04 Nov 2026 23:30:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:30:30 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:30:31 GMT
COPY dir:bbba34ab9bdf461e4067b9dfcb1aad81c9c3962e23b001e64947a0a66c8f0a05 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:30:31 GMT
COPY dir:bbba34ab9bdf461e4067b9dfcb1aad81c9c3962e23b001e64947a0a66c8f0a05 in /root/buildinfo/      
# Wed, 04 Nov 2026 23:30:31 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:30:06Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:30:06Z" "architecture"="x86_64" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:30:06Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:34:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:34:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:34:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:34:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:34:04 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:34:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:34:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:34:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:34:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b678bad408ae33518fc2717ea9f3a0b3756774b7413325a1b7450af23c75bef9`  
		Last Modified: Wed, 11 Nov 2026 05:41:47 GMT  
		Size: 35.0 MB (34986613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f838f12e53e4497085f12acb36e96c100ef630b7b01da4e55a929ee38fa8ea66`  
		Last Modified: Wed, 11 Nov 2026 22:34:22 GMT  
		Size: 28.7 MB (28704466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f032c3ec42cc9fce1dd3ae9640e7838933bc9677374910623a8900f279519139`  
		Last Modified: Wed, 11 Nov 2026 22:34:45 GMT  
		Size: 42.3 MB (42348481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ff6b20f54d88d61503782d28d6533521c9aac9d8c9fe93f46cd0f9471f95a1`  
		Last Modified: Wed, 11 Nov 2026 22:34:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c76e6f2ee6cc86caeadfa16a2c1e10660eb3abc2a90b4ff737d6cdda88acad`  
		Last Modified: Wed, 11 Nov 2026 22:34:44 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:941539f063b483a7c286e82cbf9bea1ff45f692aac967e7ef7350c7d4d53df99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2999285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1292881f981bc5daf6c2941cf7f2426208d04cbdadb31857653c0b602ce0a7`

```dockerfile
```

-	Layers:
	-	`sha256:379310005537ff279c3dac3d2c4f5b42699459791b5531d41ae90894b4db62c6`  
		Last Modified: Wed, 11 Nov 2026 22:34:44 GMT  
		Size: 3.0 MB (2979774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:deae777515bd14dc21821afb69b2b4b568a2697019cbdd6c8f81b73597a64622`  
		Last Modified: Wed, 11 Nov 2026 22:34:44 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:edc54868feff6bce19511a9c43f523829a8f208c5e8cebd8f93535cb8da243c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102482472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb15cc73fe4acfd1ca97a807d44d4f27c3be68a9830d3eeb2fccdb650d0790b2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 04 Nov 2026 23:32:59 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:33:00 GMT
ENV container oci
# Wed, 04 Nov 2026 23:33:01 GMT
COPY dir:00dfc6e48ac5d871b75ee77968140e118f5bfdd254e76e400fe5bc8327903cc7 in /      
# Wed, 04 Nov 2026 23:33:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:33:02 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:33:02 GMT
COPY dir:09d1c8b8d9e999b3fc5ed6d1285e597b23e8ff69aefeac9bd5c5c8826b05d8df in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:33:03 GMT
COPY dir:09d1c8b8d9e999b3fc5ed6d1285e597b23e8ff69aefeac9bd5c5c8826b05d8df in /root/buildinfo/      
# Wed, 04 Nov 2026 23:33:03 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:32:32Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:32:32Z" "architecture"="aarch64" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:32:32Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:07:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:07:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:07:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:07:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:07:17 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Wed, 11 Nov 2026 22:07:21 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 22:07:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:07:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:07:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:be0565b917b07cbdde393c02afeb603fae99c9ecaaabb5caf02a1f90e2f13b13`  
		Last Modified: Wed, 11 Nov 2026 06:31:36 GMT  
		Size: 33.0 MB (33046604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a937d11471fa0758eef7f9fca543a17f6f849edf63cbc819ef8f972f2aa7ecc`  
		Last Modified: Wed, 11 Nov 2026 22:07:34 GMT  
		Size: 28.1 MB (28124105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1465ff5085a52d17b41b65a57ee2925163f7dedf5b272289cf7a7647c76b353`  
		Last Modified: Wed, 11 Nov 2026 22:07:34 GMT  
		Size: 41.3 MB (41309162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cafd340b75898b6907580b3f1e2dfda262f36d768c54354bb5ff961ed8786ad`  
		Last Modified: Wed, 11 Nov 2026 22:07:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6717eaae57e9b4d47810939208ff841c5c7483a81e2496b6662d2449d4b7c0fd`  
		Last Modified: Wed, 11 Nov 2026 22:07:33 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ac437d8ff0b940dee8ccddfb695818bb60907e5457dbf06a2b8edfeb50386626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2999495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26570ff86541002167e7d7973aed5c8dceaa077e0202273faf07e15751499b94`

```dockerfile
```

-	Layers:
	-	`sha256:20dab392a4cd85408d6884135ffff9538646e75e14afe0e67387333cbb62b847`  
		Last Modified: Wed, 11 Nov 2026 22:07:33 GMT  
		Size: 3.0 MB (2979880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7fce5d97898cc36f82e82b7a1e7a108624de7e693e987e8efe9a3e582a35e93`  
		Last Modified: Wed, 11 Nov 2026 22:07:33 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:0c6991f3b729902e55347e5e12bef9e39668f111ad45bed1a13d375883987459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.5 MB (120504111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5972b0cbf32032ac6691825cc516eccf1f6749bb274b6c9c1125702d2f4406ea`
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
# Tue, 10 Nov 2026 23:53:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9b45f49bc6e54cf9170aebe0ee45f48a833222325cb3b2d6d21220eee4c5207b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u512b09.tar.gz';          ;;        ppc64le)          ESUM='10e73d7932dca112d63fcdc3f26cc479cec52e0b3715f931ada758af47374b44';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u512b09.tar.gz';          ;;        x86_64)          ESUM='57468dc8bfd71dd0578d9717e63a8c13b9efe0a2f2c85c2a13966d1c0f9b1e5f';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 23:53:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 10 Nov 2026 23:53:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 10 Nov 2026 23:53:40 GMT
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
	-	`sha256:7bd8caad30132c9875c58d10455418fcf15491f02da062532c84a84ef0bc3c41`  
		Last Modified: Tue, 10 Nov 2026 23:54:25 GMT  
		Size: 41.8 MB (41760418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6eb6e3ab7067f5d42a465a2eda77efc83a40ae792d0728840436052b6cc528`  
		Last Modified: Tue, 10 Nov 2026 23:54:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162e9b416c2970c800c7af4925f9778a69c6a99e7b80a7bfb0807a5ed829ae17`  
		Last Modified: Tue, 10 Nov 2026 23:54:24 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4d8ccc8bbcaa638abfd85839d2a7f75ecf96b2198b32a2fd8afcd39290c3e1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3727405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2ab9c49ffedbddc2fec9d03e4b31f2f2c13e353efce5292e5ef667baa80c2fa`

```dockerfile
```

-	Layers:
	-	`sha256:349adc55387b9d5fa74080e09f634d353e82354662082913ca5deaeecf20df1d`  
		Last Modified: Tue, 10 Nov 2026 23:54:24 GMT  
		Size: 3.7 MB (3707864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1783a4aa8ba20a5e0d9cc719cb0c31c6dd379e4624d91d42ebfd285cd8e18e5b`  
		Last Modified: Tue, 10 Nov 2026 23:54:24 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
