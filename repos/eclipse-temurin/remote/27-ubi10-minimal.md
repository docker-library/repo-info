## `eclipse-temurin:27-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:039e599cc0c8f19f80352dd54cff8348f3f99d229ebedef93aaaa217f2bd158c
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

### `eclipse-temurin:27-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:cf847205acd0fa42ec90faa213b672c1d1950ea37453b520f6f649f637a0209f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (151024610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451bbc10113391db53edface5dd47c05cf0593b2e666feec6ebd3e85d0714620`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:03:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:03:35 GMT
ENV container oci
# Thu, 12 Nov 2026 16:03:36 GMT
COPY dir:abaeaccaa183ac0f937690d9c3d971f171eee110eb25e55bb2014a260848d444 in /      
# Thu, 12 Nov 2026 16:03:36 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:03:36 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:03:36 GMT
COPY dir:4907c31dd7720cc331953cb8cbe73d698387e1a9bb6e1ff53fe2e44570a4e195 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:03:37 GMT
COPY dir:4907c31dd7720cc331953cb8cbe73d698387e1a9bb6e1ff53fe2e44570a4e195 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:03:37 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:02:48Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:02:48Z" "architecture"="x86_64" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:02:48Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:45:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:45:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:45:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:45:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:45:35 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Fri, 13 Nov 2026 21:46:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:47:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:47:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:47:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:47:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cfd5e1005a32b7225818bfd0eb2156a15f6be2100d285589a641ff98bd55281`  
		Last Modified: Thu, 12 Nov 2026 18:03:34 GMT  
		Size: 35.0 MB (34989854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b437d6471a30cf259c97168c0797f2adc89eab654cd8d2f88f39c131a3a963`  
		Last Modified: Fri, 13 Nov 2026 21:45:52 GMT  
		Size: 22.4 MB (22383591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf2f035358a7687b7c987be424e0b99728ea35deffb56087a64cd5180e615ea1`  
		Last Modified: Fri, 13 Nov 2026 21:47:17 GMT  
		Size: 93.6 MB (93648566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0165de01a2dd761a37b8dcd2a6d4e664960214711e2139fc7d5193cf3b8168f8`  
		Last Modified: Fri, 13 Nov 2026 21:47:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0b86272021f5a5798ec68ee2fec23f64ae5be99cbf36f5b620a0d77b4dc6e4`  
		Last Modified: Fri, 13 Nov 2026 21:47:09 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5fdffceee362d7f56a56a79b2aeefb62c1e4adf1431618773008306753290de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb743908ce978543bb8238e79f58dfd6ad7c8dd0a477d1142e636a86c71d3816`

```dockerfile
```

-	Layers:
	-	`sha256:3201ad2f14b188fbd269bbfc005e5be64e7ff18301f7acf9b8ea6da117eca521`  
		Last Modified: Fri, 13 Nov 2026 21:47:15 GMT  
		Size: 3.0 MB (2999122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91775ba835ba87ae8c831614e061ea7d9b018ab8086a8e968e15331702ec97e9`  
		Last Modified: Fri, 13 Nov 2026 21:47:15 GMT  
		Size: 21.4 KB (21360 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:983ad9c6dbfa7da03f1beee1955f576fd7f8e28406af1ec4fcbc346a8fd96cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148346028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6feb8e432f3e46d2d8342c096f7a000293a8cb78d7e3f7c5079de362d7c77a07`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:05:37 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:05:37 GMT
ENV container oci
# Thu, 12 Nov 2026 16:05:39 GMT
COPY dir:fe8420d32862f0115fa228720b49066fadc1b8d1092b0d3d3cb9962c75e35cc6 in /      
# Thu, 12 Nov 2026 16:05:39 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:05:39 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:05:39 GMT
COPY dir:fc47a3f30ae4d6e4c8b5cebf7d8469dad63931bae6197b61a549f3789f2ea498 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:05:40 GMT
COPY dir:fc47a3f30ae4d6e4c8b5cebf7d8469dad63931bae6197b61a549f3789f2ea498 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:05:40 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:05:09Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:05:09Z" "architecture"="aarch64" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:05:09Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:41:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:37 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Fri, 13 Nov 2026 21:45:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:45:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:45:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:45:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:45:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:92b92fb6cc01fdbff60386e24bb888d8cbdc5d4af6a26214b7a8c5549a2ed08a`  
		Last Modified: Thu, 12 Nov 2026 18:03:29 GMT  
		Size: 33.1 MB (33057880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100918ea78ea51df29f21098024433ab4fe2e36832415b3c2cc0eae1aef6ca6e`  
		Last Modified: Fri, 13 Nov 2026 21:41:53 GMT  
		Size: 22.6 MB (22624592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e57062be06236c38eb1c3018b43904683a5ce73a6e65db79c1d8c105fde1be4`  
		Last Modified: Fri, 13 Nov 2026 21:45:50 GMT  
		Size: 92.7 MB (92660957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee39569b204e69fb4e03b8a917714d93442d32c0819833c25ee6d4dba86f418`  
		Last Modified: Fri, 13 Nov 2026 21:45:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523d91718cb619cedb189b33ff0ab4a45361dd3df54299194e2a4ade67c2b9da`  
		Last Modified: Fri, 13 Nov 2026 21:45:48 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5dbdc771237ac8b5bbe7c3aacdf4bb0fbd082c705e9e2ab5459ed2007f170fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313056dd3b0434b562422e5bcd64e86c57ec6bef09d406e3db4e7b7812e97a87`

```dockerfile
```

-	Layers:
	-	`sha256:7207e149b0b006e7683faf29028cbf7d641ea56e18099b853425bdd3f4dca7c0`  
		Last Modified: Fri, 13 Nov 2026 21:45:48 GMT  
		Size: 3.0 MB (2998545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94735594394247bd759353905381fc1c3ddc7b17f52b157a3b0285e7503a064d`  
		Last Modified: Fri, 13 Nov 2026 21:45:48 GMT  
		Size: 21.5 KB (21477 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:3af225482a2d6d051710c6f7d2eca3735fdb4594ae5cf1a576c9124e31334a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.8 MB (170786815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738cfb0988b69a81e808a3b933b722af30f31808149c30313948450841124eb6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:09:58 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:09:59 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:09:59 GMT
ENV container oci
# Thu, 12 Nov 2026 16:10:00 GMT
COPY dir:ad66467f60bb0a64961b37b18c45eabc5da9768db94a9506ecae7a8434041e56 in /      
# Thu, 12 Nov 2026 16:10:00 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:10:00 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:10:00 GMT
COPY dir:004ff3a132bc9072133b960572269ccc9d243198026dfe8e2c063dd7a6729985 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:10:01 GMT
COPY dir:004ff3a132bc9072133b960572269ccc9d243198026dfe8e2c063dd7a6729985 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:10:01 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:09:32Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:09:32Z" "architecture"="ppc64le" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:09:32Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:41:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:41:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:41:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:41:03 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Fri, 13 Nov 2026 21:51:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:51:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:51:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:51:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:51:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:732e1cc5e2c16e0c0f268f77b46621ef010009a9109126d06365d7e29c2876d6`  
		Last Modified: Thu, 12 Nov 2026 18:29:10 GMT  
		Size: 39.1 MB (39060038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a091144000673e21ab164cebc0c14f91c53123f6d6f421fc75f70b68a4b4d0`  
		Last Modified: Fri, 13 Nov 2026 21:41:43 GMT  
		Size: 39.8 MB (39798191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade58302cd2f978ded4672cfb9f28cc6b70c269269f0b3e443f0683c078cdc21`  
		Last Modified: Fri, 13 Nov 2026 21:51:59 GMT  
		Size: 91.9 MB (91925988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b504b0dc95e4f571d2752f75c96906288073fcf13cc89e873364f0645290de`  
		Last Modified: Fri, 13 Nov 2026 21:51:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269137c171869e72c108a3b99966c3af624db1d394ec9a05fd33ca65a74123f1`  
		Last Modified: Fri, 13 Nov 2026 21:51:56 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1bba2f2e5f702408d224d5c29daf72a61e5dfb36fa3f7bca28bfd9f28de5cfd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3732704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00caabd471a05db1c6c2b40be6971d677f8f28604a8ff7a12b5c9115f89e6753`

```dockerfile
```

-	Layers:
	-	`sha256:a7f2fb91ba58ea942af6cd2206136e1a0509cc37aacd1517d73fc45cd533a8ca`  
		Last Modified: Fri, 13 Nov 2026 21:51:56 GMT  
		Size: 3.7 MB (3711308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dcfb575c141882d3712f7d047b84d36aac6c35a3a42761e4ad96fa9535e9a89`  
		Last Modified: Fri, 13 Nov 2026 21:51:56 GMT  
		Size: 21.4 KB (21396 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:2c7876c7fb8b24cfacd0ee893e51d46e3ffb4515b8f45313552ebfa9fe40cbc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147635010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf455ad8dda150bb75629a6e9be24657a62f3987f5c6c8f050947e1a48b013c6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 12 Nov 2026 16:37:23 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.openshift.expose-services=""
# Thu, 12 Nov 2026 16:37:24 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 12 Nov 2026 16:37:24 GMT
ENV container oci
# Thu, 12 Nov 2026 16:37:25 GMT
COPY dir:566a5022316ff560512005a088367d2853859f574e9087ef74ae030a0a6af5df in /      
# Thu, 12 Nov 2026 16:37:25 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 12 Nov 2026 16:37:25 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 16:37:25 GMT
COPY dir:ec55cb9b5c6900c8ca824e865d9eb8d5a48c85e1c2ebfcf28d8cfa0a5d4ab260 in /usr/share/buildinfo/      
# Thu, 12 Nov 2026 16:37:26 GMT
COPY dir:ec55cb9b5c6900c8ca824e865d9eb8d5a48c85e1c2ebfcf28d8cfa0a5d4ab260 in /root/buildinfo/      
# Thu, 12 Nov 2026 16:37:26 GMT
LABEL "org.opencontainers.image.created"="2026-11-12T16:35:59Z" "org.opencontainers.image.revision"="27aec17d81064cac2334b5f7b651e14c5265def8" "build-date"="2026-11-12T16:35:59Z" "architecture"="s390x" "vcs-ref"="27aec17d81064cac2334b5f7b651e14c5265def8" "vcs-type"="git" "release"="1794499233"org.opencontainers.image.created=2026-11-12T16:35:59Z,org.opencontainers.image.revision=27aec17d81064cac2334b5f7b651e14c5265def8
# Fri, 13 Nov 2026 21:40:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 13 Nov 2026 21:40:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Nov 2026 21:40:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 13 Nov 2026 21:40:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 13 Nov 2026 21:40:45 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Fri, 13 Nov 2026 21:43:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 13 Nov 2026 21:43:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 13 Nov 2026 21:43:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 13 Nov 2026 21:43:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 13 Nov 2026 21:43:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e71dc9438b94c2c137e529ef670ef1400ab2d4cdcaa57af35b766fe14f8fa33d`  
		Last Modified: Thu, 12 Nov 2026 18:28:59 GMT  
		Size: 34.8 MB (34831835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b66052a239beefeeb1c907453fc5f93f351b25d6997ad25ed1a7b921796b33`  
		Last Modified: Fri, 13 Nov 2026 21:41:15 GMT  
		Size: 22.7 MB (22723782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d3ec260362f112ed489e8052d91f28bc4f3efc948757e2feb10f517f6f90ab`  
		Last Modified: Fri, 13 Nov 2026 21:43:33 GMT  
		Size: 90.1 MB (90076794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2239acc898507a74186dcd29a8d9cbe70df0a501aed7b4bd05c0cb9b14c1d056`  
		Last Modified: Fri, 13 Nov 2026 21:43:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b670dcc6186d8f40a8004b5190cb696c1a4828bd34a4856dcba4dcb2f008fb6`  
		Last Modified: Fri, 13 Nov 2026 21:43:31 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7cced144aa1395c93db930b87a46db351612fc70eb262c680b3c44baee77b660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ca8b041449d4faa6443e2a8e1f960a2248d5a32137eaabbf360012f0ccfe52`

```dockerfile
```

-	Layers:
	-	`sha256:b016abf3c2024ed1ff5453622ab225b254f5a1fa666d237bb44f2bbd2a0ea416`  
		Last Modified: Fri, 13 Nov 2026 21:43:31 GMT  
		Size: 3.0 MB (2974961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6034b67d82be34d0a59f4af36351b4ab1b58385587b6ee0cd148b62da488c41`  
		Last Modified: Fri, 13 Nov 2026 21:43:30 GMT  
		Size: 21.4 KB (21361 bytes)  
		MIME: application/vnd.in-toto+json
