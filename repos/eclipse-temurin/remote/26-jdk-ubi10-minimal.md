## `eclipse-temurin:26-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:8a187c0232236a91436061ebb10b4b06d1297bafce200d2fdec09b76643d3fdd
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

### `eclipse-temurin:26-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6f5f632247c791ff448ac2d3f009035a79e22535febf824a3a1003d4d0bd13f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167406743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eceef4c2468e49abe55aa309e698c456e89ca171bc404a13de5f68b0c3a9936`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Oct 2026 11:36:12 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:36:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:36:13 GMT
ENV container oci
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:fe09ff3a49379305e1cb0e89f971424ce678aa73614343ecd1a31bb5cd5ba27f in /      
# Tue, 13 Oct 2026 11:36:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:36:14 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:5689adc5d5ec6bee467687c030512630f4ca86263fb7d693a9dce1bae6b0a2d9 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:36:14 GMT
COPY dir:5689adc5d5ec6bee467687c030512630f4ca86263fb7d693a9dce1bae6b0a2d9 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:36:15 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:35:38Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:35:38Z" "architecture"="x86_64" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:35:38Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:58:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:58:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:58:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:58:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:58:35 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 13 Oct 2026 22:58:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64le)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:58:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:58:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:58:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:58:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:96e018865a7455542a612b44ed5f5973fa5ce3706b35273d9256f2da3960156c`  
		Last Modified: Tue, 13 Oct 2026 13:00:37 GMT  
		Size: 35.0 MB (34952271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b5c8fdc95be75e98cea38010cd8a90c06ca34abd0dc52726918e4a33170197`  
		Last Modified: Tue, 13 Oct 2026 22:59:01 GMT  
		Size: 37.9 MB (37888052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001471554fe7fa1360d313ca35d219ab243499f6230fabe3f9594472aec69d5e`  
		Last Modified: Tue, 13 Oct 2026 22:59:02 GMT  
		Size: 94.6 MB (94563818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7a4c1ae2b91a9a1081e7c1306fe9a7ced5749129379142a1e9d1790e12ae2c`  
		Last Modified: Tue, 13 Oct 2026 22:58:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7dbabc10441e2973baafae8039b20be45025b61e0bf8fcbd3805a0cf661bab`  
		Last Modified: Tue, 13 Oct 2026 22:58:59 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:93a51cb25bbc2b61e66e15ecbe9b687458fc3142d1547dad16a6face47083cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3778768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d5303453f60d0e9a1a1522819016261f12e86a51fef87ad430a76363b604f5`

```dockerfile
```

-	Layers:
	-	`sha256:5195c8e4a667a3b31fd7cc759d056cf351fd978393b0f8c4f0796dbf9ad1b3c6`  
		Last Modified: Tue, 13 Oct 2026 22:58:59 GMT  
		Size: 3.8 MB (3757431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddfae275788c6902ba2d99f9595bb6aba50cc7c8e9ec2bcfef8a3f249f230f72`  
		Last Modified: Tue, 13 Oct 2026 22:58:59 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:824cd408af092e7dbf86f5b9393e9df0b70396a0df0d5642f2fefb54866b8f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164508789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5439020ff310cfe271aa291079d572093d1e6cdc6eaaef4bb757bbaacf193cc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:38:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:38:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:38:12 GMT
ENV container oci
# Tue, 13 Oct 2026 11:38:13 GMT
COPY dir:afba438e6c8fbafbf237be0da7ee4d78bf11b0c3e7cc19222cf85ac1fb700d8b in /      
# Tue, 13 Oct 2026 11:38:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:38:14 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:38:14 GMT
COPY dir:fe33b4e5c0b1e5a254838c04b2eae09c265227f5dbb605d1129c98df0746a610 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:38:14 GMT
COPY dir:fe33b4e5c0b1e5a254838c04b2eae09c265227f5dbb605d1129c98df0746a610 in /root/buildinfo/      
# Tue, 13 Oct 2026 11:38:15 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:37:42Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:37:42Z" "architecture"="aarch64" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:37:42Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:56:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:56:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:56:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:56:50 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:56:50 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 13 Oct 2026 22:57:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64le)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:57:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:57:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:be085d7a47c11404cbba8ea172a330ab100dad42557617444fa11a7b10a1bcfd`  
		Last Modified: Tue, 13 Oct 2026 13:00:34 GMT  
		Size: 33.1 MB (33127982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc2f9696ae4cb35b4bcca7bc9596cd66981bbaa3e280abd9f0492e68d9f8b21`  
		Last Modified: Tue, 13 Oct 2026 22:57:17 GMT  
		Size: 37.8 MB (37834685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e403d02dbebba88eef17de475ef4a1c43ffa7cfbef9bbd5cd07639eda364d8`  
		Last Modified: Tue, 13 Oct 2026 22:57:52 GMT  
		Size: 93.5 MB (93543521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983295847a9770f46fd9f257b4e1bf49be5de5a3af2f0fbbd71c0276d9d9a9f4`  
		Last Modified: Tue, 13 Oct 2026 22:57:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16bcb54164f85f3916083db38f3f753342c22a961fc1d8dd89d0c4a7c136443`  
		Last Modified: Tue, 13 Oct 2026 22:57:50 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f5a3c2ec11817a3442b63c6dbae77770ab6ba8c999bb603037981d3c63e0e2ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3778307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d0afb68121a784bd5854ceb08c218cefebd85bc11b9ea762096c58bca34759`

```dockerfile
```

-	Layers:
	-	`sha256:edd4d644b165a50a5b2411f1aad5f3a8d5d5effaba126db6c611da8907f87111`  
		Last Modified: Tue, 13 Oct 2026 22:57:50 GMT  
		Size: 3.8 MB (3756854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23ba56d6dbf5fc4f1a08563e9638e93dc1f349a73641789e2740489ec3670941`  
		Last Modified: Tue, 13 Oct 2026 22:57:50 GMT  
		Size: 21.5 KB (21453 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6821ecc3a294164f86c035b8337045bf29fbfd9e3efbc27e42290f99732dd47b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172122856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c567478e83285517a8acb07c23844756aaa528cbcd83ec4bd2a07372a60d4726`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:16 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 06:07:17 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 12 Oct 2026 06:07:17 GMT
ENV container oci
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:6692fc3e66bbf0913b2d152014d3b0e34bbd923bc55d13e178d365aac806e220 in /      
# Mon, 12 Oct 2026 06:07:18 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 06:07:18 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 06:07:18 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
COPY dir:39461ef2f88a895d3655798d126e96b7b231101a07bff7389995c2e8e741ee23 in /root/buildinfo/      
# Mon, 12 Oct 2026 06:07:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T06:06:54Z" "org.opencontainers.image.revision"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "build-date"="2026-10-12T06:06:54Z" "architecture"="ppc64le" "vcs-ref"="8c837bbacfff8c5d55573f41d1221ce17eebbeb1" "vcs-type"="git" "release"="1791784796"org.opencontainers.image.created=2026-10-12T06:06:54Z,org.opencontainers.image.revision=8c837bbacfff8c5d55573f41d1221ce17eebbeb1
# Tue, 13 Oct 2026 02:14:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 02:14:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 02:14:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 02:14:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 02:14:02 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 13 Oct 2026 02:24:48 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64le)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 02:24:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 02:24:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 02:24:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 02:24:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a05cfbffa86171447875ba9950514b237a53b4f2fba7ac663609dcb504587364`  
		Last Modified: Mon, 12 Oct 2026 11:37:08 GMT  
		Size: 39.1 MB (39115195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6af5f3f2e6337c522ced566c86f9580c3d36ea3228b09072ff572272d3010e`  
		Last Modified: Tue, 13 Oct 2026 02:14:54 GMT  
		Size: 39.7 MB (39654589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46deb2ffcd098e6d68873f4b0a7e924a495c60b64503cadcf257e9acc7b8c4bf`  
		Last Modified: Tue, 13 Oct 2026 02:25:35 GMT  
		Size: 93.4 MB (93350470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113c11886000160e762329ca8f5440e9780e5debb9fd6a41ce1c56bd5baf374a`  
		Last Modified: Tue, 13 Oct 2026 02:25:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0107f3891555acfc9f6c27ebc8b099012ddd5e47fba31633a1b8002edc5e1feb`  
		Last Modified: Tue, 13 Oct 2026 02:25:32 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:56af1a0668501b56a84831506a851b9a49f310215d58ed815dc1d1e97bdcf10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3749564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b8f9ea717a03b5e9a4a66b09488fe9e807899937a75ed02bdd4bbe9eef7b26`

```dockerfile
```

-	Layers:
	-	`sha256:bc10f509e9d8345f761846cd480c9737e021ac776068831ad0bcfb46ad28d915`  
		Last Modified: Tue, 13 Oct 2026 02:25:33 GMT  
		Size: 3.7 MB (3728191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57e32aadd4f0e2cb4ec45e5656d45e861bc1ba43dc394c7423c5d5b167d73741`  
		Last Modified: Tue, 13 Oct 2026 02:25:32 GMT  
		Size: 21.4 KB (21373 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:1762416c456597460902fc381d859ce8636e998342c0944bc18ceba5ba555ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.7 MB (163689028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22eee3db7bac32d63af3053572ec1d82fcf2dfbc245a17ac50756df865797f10`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 13 Oct 2026 11:50:19 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 11:50:19 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 11:50:20 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 13 Oct 2026 11:50:21 GMT
ENV container oci
# Tue, 13 Oct 2026 11:50:23 GMT
COPY dir:1e6e97c7b08276d6fc241657760d66b7afc6a0634288bfec812f60856399bac6 in /      
# Tue, 13 Oct 2026 11:50:24 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 11:50:24 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 11:50:24 GMT
COPY dir:a1971d62b01fb53b8823b9e3a25eadc4645703c309044f9cff0e33ddbf4d511d in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 11:50:25 GMT
COPY dir:a1971d62b01fb53b8823b9e3a25eadc4645703c309044f9cff0e33ddbf4d511d in /root/buildinfo/      
# Tue, 13 Oct 2026 11:50:26 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T11:48:36Z" "org.opencontainers.image.revision"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "build-date"="2026-10-13T11:48:36Z" "architecture"="s390x" "vcs-ref"="4988974e41f8d667ce04e92cdb152c9dc1f5d08f" "vcs-type"="git" "release"="1791891203"org.opencontainers.image.created=2026-10-13T11:48:36Z,org.opencontainers.image.revision=4988974e41f8d667ce04e92cdb152c9dc1f5d08f
# Tue, 13 Oct 2026 22:55:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:19 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Tue, 13 Oct 2026 22:57:40 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64le)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        x86_64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:57:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:57:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9a74cc32d0c11450cc3df28e940e72b0fc246b2ea4419b55b451e71c6cb0957e`  
		Last Modified: Tue, 13 Oct 2026 16:45:48 GMT  
		Size: 34.8 MB (34822258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37738299d37c835c30a436e5426ee0a7a6f254177dfc73825e46e460b422c76c`  
		Last Modified: Tue, 13 Oct 2026 22:55:52 GMT  
		Size: 38.3 MB (38273423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffe52e48b6645c550507118216d2f13797823ea515a4d93afc40411e83acb88`  
		Last Modified: Tue, 13 Oct 2026 22:58:06 GMT  
		Size: 90.6 MB (90590745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f2244f3b3d8ef6556eb1d39736664960b9102b9389738260490753f3aa9770`  
		Last Modified: Tue, 13 Oct 2026 22:58:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132b43acfa81ee97609cf34b25b1ef4d2b063d639ccb08daa8656856c96166dd`  
		Last Modified: Tue, 13 Oct 2026 22:58:04 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bbdf2deb52f3d992e28ffae0221764cf77680f92aaa7191a652b33aa903affca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3749544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d7f8cb80ba81a58eccf46c33b8e529dbf9590a23451856f34390d4377c3bf5`

```dockerfile
```

-	Layers:
	-	`sha256:4ae6c44796a0d96110b63230d89937f5079b8c57efb1660508273a43a098800c`  
		Last Modified: Tue, 13 Oct 2026 22:58:04 GMT  
		Size: 3.7 MB (3728207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6df4c85c88c5fc91fb59747a80f32cd76a095a522d76ae3b4902dae0161eda2a`  
		Last Modified: Tue, 13 Oct 2026 22:58:04 GMT  
		Size: 21.3 KB (21337 bytes)  
		MIME: application/vnd.in-toto+json
