## `eclipse-temurin:27-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:4fdd41e950784756f21c60631f45980bffc53833fb0f541d3172ea2a5dda9eea
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

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3bd7662d622556bd7f80c1493518db0dc7046478744cb1871f010d77b3fbfc07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136221842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bbd12f4fae1fe8dea692f53f2ace9e054e1998d10465aee2fedae1795d2bb28`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:48:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:48:53 GMT
ENV container oci
# Tue, 20 Oct 2026 00:48:54 GMT
COPY dir:f1c76a6243bae0571dcb78281fcfe2c643a8f555dfdca207fe1b10b3b00283d9 in /      
# Tue, 20 Oct 2026 00:48:54 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:48:54 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:48:54 GMT
COPY dir:b5325220b21ab4bdd3b622989894128b9739c056cbb0dd5b9f66881f5434041c in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:48:55 GMT
COPY dir:b5325220b21ab4bdd3b622989894128b9739c056cbb0dd5b9f66881f5434041c in /root/buildinfo/      
# Tue, 20 Oct 2026 00:48:55 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:48:29Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:48:29Z" "architecture"="x86_64" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:48:29Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 21:49:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 21:49:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:49:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 21:49:33 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 21:49:33 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 21:50:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 21:50:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 21:50:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 21:50:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:87420a9ecd145c9a242c1eaa570c6b7327b097ddb3bf3d58c96ba0e75e0d3edc`  
		Last Modified: Tue, 20 Oct 2026 02:09:48 GMT  
		Size: 35.0 MB (34961973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b10ac107fd19517d40ccd884aa5722fe3e80f228f301af8d491570ed3b80479`  
		Last Modified: Wed, 21 Oct 2026 21:50:00 GMT  
		Size: 37.9 MB (37889235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e2f0a5fd95dea7ccc07c7f6f7a71453ff9fe98ff7ff14488b179b1fbab7adc4`  
		Last Modified: Wed, 21 Oct 2026 21:50:30 GMT  
		Size: 63.4 MB (63368035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01df0684ac174c02a998d44a0302b36337d2d630c883fd15a112e300d4f6e84c`  
		Last Modified: Wed, 21 Oct 2026 21:50:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe15c62788c550b49e469c60b433a8717773d1f7ae6fe4d5c8cdc02688ee808`  
		Last Modified: Wed, 21 Oct 2026 21:50:28 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2403defb144fa4a7aaf3be0f315cafb9204a9fa60791f6a1ba9b5af71ae5a3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3733361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3516cdbab9a9c1bf05b389775b316d5978631cf54fa917d1449aa83099da58a`

```dockerfile
```

-	Layers:
	-	`sha256:5599478706fdbdee82dc9ce23d054c3e07691deeae8a8a53a74d618e9ba2704e`  
		Last Modified: Wed, 21 Oct 2026 21:50:28 GMT  
		Size: 3.7 MB (3713103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47afa0d2e1b31f5226a22a0665376e04e03ba339faa7ce48f0a8d8737b3dcc08`  
		Last Modified: Wed, 21 Oct 2026 21:50:28 GMT  
		Size: 20.3 KB (20258 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:32b1bbdfdf9b31067e100a687092254a8eb6c86d3f404e85e321bc859cad47a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.3 MB (133279959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a3074236f48e6d3cc1c30f7909d0da8f2b7eaec58d0811e3fdbe7dd7c5e712d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:51:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:51:54 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:51:54 GMT
ENV container oci
# Tue, 20 Oct 2026 00:51:55 GMT
COPY dir:0d7cbcbcf024404d0c04cf00e00c66c352826a90edb3b336fe7e26d881767ac0 in /      
# Tue, 20 Oct 2026 00:51:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:51:55 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:51:56 GMT
COPY dir:24db7167ffb16392a529e9c110e76f8adb27cab3a5daaf3fa3cb59ee0e4577e9 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:51:56 GMT
COPY dir:24db7167ffb16392a529e9c110e76f8adb27cab3a5daaf3fa3cb59ee0e4577e9 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:51:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:51:25Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:51:25Z" "architecture"="aarch64" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:51:25Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 22:24:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:24:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:24:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:24:26 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:24:26 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 22:24:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 22:24:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:24:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:24:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:de452dfec330a84b0272627b023d15c8c60dd01f2776e3bfb8479177eea5f9e8`  
		Last Modified: Tue, 20 Oct 2026 02:12:17 GMT  
		Size: 33.1 MB (33146454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe14e37871b2b6c0fb668ac61ab329de0058fe0c0f7b36c65857072456217f7`  
		Last Modified: Wed, 21 Oct 2026 22:24:48 GMT  
		Size: 37.8 MB (37829721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f55e8a7427562851be8d00b874a03a42fd9bc2511dff8d4a3095d8e99811f5`  
		Last Modified: Wed, 21 Oct 2026 22:24:49 GMT  
		Size: 62.3 MB (62301184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3ae0557c91d2831735673091a04de9717f4308b85cffd043922f8e0bbf8679`  
		Last Modified: Wed, 21 Oct 2026 22:24:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8317fcb264ba5f5872b73e88df464fc121e59453a969dec03450e606239f336d`  
		Last Modified: Wed, 21 Oct 2026 22:24:47 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3b876026562a1c7eadf15e2cb7b721393cb3ecf8736df91f8400745de7bf563f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3732876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:670f501088f97adf4080e1d59952638107b4a9bcd3a5df862c4f58c46f060f1d`

```dockerfile
```

-	Layers:
	-	`sha256:70e4d88f5ff25799b028fdcd84b8de6219743fc50beac687f31c44b9b49a3c19`  
		Last Modified: Wed, 21 Oct 2026 22:24:47 GMT  
		Size: 3.7 MB (3712514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6649f951ed19080a4a4be8857b33f4bfe4cb1d94fa7799445dac09c3a2e3d3d`  
		Last Modified: Wed, 21 Oct 2026 22:24:47 GMT  
		Size: 20.4 KB (20362 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:f6ff0cc318a138b1440d5efa7030daff45e67c961aee78276b56574b0dfab4fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141049905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a975015dc269ac5dbd19ec4d64bb9ea5ad9e5f43c9d7564958aa2f974d9305e4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:57:03 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:57:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:57:04 GMT
ENV container oci
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:cd373f5068beb4743179e195991b7397c3c3824ae4bf507d1128934272762d7b in /      
# Tue, 20 Oct 2026 00:57:05 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:57:05 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:769c20b7655e754c3450cea4f95dca4b1728fd234d7fa2bdd65ec28d7b1b5a23 in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:57:05 GMT
COPY dir:769c20b7655e754c3450cea4f95dca4b1728fd234d7fa2bdd65ec28d7b1b5a23 in /root/buildinfo/      
# Tue, 20 Oct 2026 00:57:06 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:56:42Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:56:42Z" "architecture"="ppc64le" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:56:42Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Thu, 22 Oct 2026 03:45:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 22 Oct 2026 03:45:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 03:45:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 22 Oct 2026 03:45:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 22 Oct 2026 03:45:19 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 22 Oct 2026 03:52:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 22 Oct 2026 03:52:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 22 Oct 2026 03:52:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 22 Oct 2026 03:52:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:706c1d86d8f655e7a9987b276168ae6610b6eb0f0af14eef00d3c9b0fd3ef9af`  
		Last Modified: Tue, 20 Oct 2026 06:23:50 GMT  
		Size: 39.1 MB (39114515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74474bfe984479734eb518da4a75b237b4ecf2ebdc0e86cda4d7d076d9b91086`  
		Last Modified: Thu, 22 Oct 2026 03:46:31 GMT  
		Size: 39.7 MB (39668516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7087e3b7ed88440dad77150bf924f5551deba557b14610e0d3254a87ed152c85`  
		Last Modified: Thu, 22 Oct 2026 03:53:49 GMT  
		Size: 62.3 MB (62264275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ed16c768b047682b11ce7b98f98aa890fed1c5bf4391b61cceb5370506d179`  
		Last Modified: Thu, 22 Oct 2026 03:53:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ea6fadaa3074d0d273ccafdbca9d220a947cec7b46d359108925466f92fce0`  
		Last Modified: Thu, 22 Oct 2026 03:53:47 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fdc18f4108d7c706c189a6853f8b44dcea25bf1b9835ac9ffc8752709e9684c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3721515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af03adca2a9ab8b134bdf3838a60df1e9f131ef9020f8ccf3059920ca76071cf`

```dockerfile
```

-	Layers:
	-	`sha256:a2cab5f809dd697c93b15d0da36ddec48097681b8762d47979638e909f312aff`  
		Last Modified: Thu, 22 Oct 2026 03:53:47 GMT  
		Size: 3.7 MB (3701227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27df87523a1b4ddbc8d0064c14bfb1a7ef417861ed48b7cafa334fa12f2448c5`  
		Last Modified: Thu, 22 Oct 2026 03:53:47 GMT  
		Size: 20.3 KB (20288 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:a755279551adf2b0cd9498f7456e0f0ad4a99ce18b2d49a1f3e396d4bc04cf9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134768797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd714b840a6bc19bd0677d2d875bdb047d8c885d3211679dceab2039765cc185`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:59:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 20 Oct 2026 00:59:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 20 Oct 2026 00:59:46 GMT
LABEL io.openshift.expose-services=""
# Tue, 20 Oct 2026 00:59:46 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 20 Oct 2026 00:59:46 GMT
ENV container oci
# Tue, 20 Oct 2026 00:59:46 GMT
COPY dir:1dca27d8a4631430ce4a0546b2acb4d2dfd9e93a14f7ce87ec4760e4b4e094d8 in /      
# Tue, 20 Oct 2026 00:59:47 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 20 Oct 2026 00:59:47 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 00:59:47 GMT
COPY dir:34d2f38fc29827d4559e7791423f00150e0ce5b6b676cdb03f156d477c55fb3b in /usr/share/buildinfo/      
# Tue, 20 Oct 2026 00:59:48 GMT
COPY dir:34d2f38fc29827d4559e7791423f00150e0ce5b6b676cdb03f156d477c55fb3b in /root/buildinfo/      
# Tue, 20 Oct 2026 00:59:48 GMT
LABEL "org.opencontainers.image.created"="2026-10-20T00:58:22Z" "org.opencontainers.image.revision"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "build-date"="2026-10-20T00:58:22Z" "architecture"="s390x" "vcs-ref"="a4525a44c38615f09f474d3b5285a2a1ea7a1905" "vcs-type"="git" "release"="1792457157"org.opencontainers.image.created=2026-10-20T00:58:22Z,org.opencontainers.image.revision=a4525a44c38615f09f474d3b5285a2a1ea7a1905
# Wed, 21 Oct 2026 22:44:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:44:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:44:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:44:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 21 Oct 2026 22:44:42 GMT
ENV JAVA_VERSION=jdk-27+35
# Wed, 21 Oct 2026 22:46:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 21 Oct 2026 22:46:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:46:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:46:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f0c098a0b77910af4ed5092668750de09dbb36cfe7d08db735e1fde196a516a8`  
		Last Modified: Tue, 20 Oct 2026 06:23:43 GMT  
		Size: 34.8 MB (34846681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999581174ae130f229ce64c7a4491d31e04573214f7483951096801727ca497b`  
		Last Modified: Wed, 21 Oct 2026 22:45:14 GMT  
		Size: 38.3 MB (38271014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fcc5f74df4bef85926dcc4bab13a576046d0654a7c5c3ab2ed3e8f5f119a472`  
		Last Modified: Wed, 21 Oct 2026 22:46:37 GMT  
		Size: 61.6 MB (61648503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b51aaee2c00033244ea4774df6f6bf98da754ade52763aa0091da509b17015`  
		Last Modified: Wed, 21 Oct 2026 22:46:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52eb2f2ef663cdbace667f76f447cf761b40fa635eb1fb2c56cfe4e7bd5906e`  
		Last Modified: Wed, 21 Oct 2026 22:46:35 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e28b88a49e68ed43c1026ad1a7785291db1ce0be21b22569d4bad4a580e4b256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3722730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ea8fcf3b14101c38065ab422e6264c769815de5c67b0ac49d315253f4d96d1`

```dockerfile
```

-	Layers:
	-	`sha256:93ad32428d50ae337332a05fa0f768044af0b89e7954fbb7e212a8d8777a6ffa`  
		Last Modified: Wed, 21 Oct 2026 22:46:35 GMT  
		Size: 3.7 MB (3702472 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:052ca0097b130f3d05d559eee721287dc5ed700fe47cbb273db6b52c10ba8ade`  
		Last Modified: Wed, 21 Oct 2026 22:46:35 GMT  
		Size: 20.3 KB (20258 bytes)  
		MIME: application/vnd.in-toto+json
