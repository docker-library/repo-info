## `eclipse-temurin:27_35-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:63c076cb6db1cea94ff777ba45f63848cd35c4d4fbd8f40a9053e81d6db16af8
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

### `eclipse-temurin:27_35-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ef81eca5c259e2201b264858a7498287067ead11069383c6da9b4596eb4ef438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136163189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb5000fd9e7ead113d671433a1d816d962313989ecfbec3421aa90005740ec7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:02:33 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:02:33 GMT
ENV container oci
# Fri, 23 Oct 2026 08:02:33 GMT
COPY dir:4ef772c9b83bf8948ac396e6b5f660d3d02caa9066e2f4d6be0580375526780a in /      
# Fri, 23 Oct 2026 08:02:34 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:02:34 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:02:34 GMT
COPY dir:dc4324ca422503b9a7366f984c1e682523829d527bc9a78f4fc74c8527616475 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:02:34 GMT
COPY dir:dc4324ca422503b9a7366f984c1e682523829d527bc9a78f4fc74c8527616475 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:02:35 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:01:58Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:01:58Z" "architecture"="x86_64" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:01:58Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:49:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:49:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:49:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:49:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:49:32 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 23 Oct 2026 16:50:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:50:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edca3061e3f8cfe5f00501af75c579244a887baf7f8fd85a71875d83824f8676`  
		Last Modified: Fri, 23 Oct 2026 09:57:09 GMT  
		Size: 34.9 MB (34900902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc90d314cbe49cdfc151906f187f7e4b2a50185d97cff83c0f99933cc20c06da`  
		Last Modified: Fri, 23 Oct 2026 16:49:50 GMT  
		Size: 37.9 MB (37891653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028bebcb0544da7da77641e1de436db1b81e972472c213824c429b42c549c109`  
		Last Modified: Fri, 23 Oct 2026 16:51:14 GMT  
		Size: 63.4 MB (63368036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492591653742fa9f59b750733f0b5c7166e20839ebf587b7b6c9fc7d29ad5ab4`  
		Last Modified: Fri, 23 Oct 2026 16:51:13 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429b9542c14f32ea0bff0141d7415435166efa08a07c09f4b42df1c65b90e3d6`  
		Last Modified: Fri, 23 Oct 2026 16:51:13 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6c53e6e5655a3490ae1fa9bfbd9bb2cadccdb2501f25a83163d0f3023fcb72ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4fec5f4b02908f88b389354f3d0a2a13e09aa1a4770cd255ab8b9f826b02a44`

```dockerfile
```

-	Layers:
	-	`sha256:c34f8479621dfd36ba97aaed440b3ff1e9e1a3bba8641a0dea3309ab3d4d9054`  
		Last Modified: Fri, 23 Oct 2026 16:51:13 GMT  
		Size: 3.7 MB (3694548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b23f8dc6282a0dbf032e84f8506c33e546b8af9ce7821f16286d85e3a1f9f498`  
		Last Modified: Fri, 23 Oct 2026 16:51:13 GMT  
		Size: 20.3 KB (20258 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27_35-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:cc25023b5b86cf73095fa71430137d02fffc07082c2583dabaa93f8c46209a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.2 MB (133219426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:163bb40305f98f91ff0d39b5038cfbaa18c56ea293522177f49fb22533e88708`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:05:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:05:48 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:05:48 GMT
ENV container oci
# Fri, 23 Oct 2026 08:05:49 GMT
COPY dir:e5dbb20dbdbbcb5b4f719f8d622d63ebf4e2d505b01fa95a911188697c8edd96 in /      
# Fri, 23 Oct 2026 08:05:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:05:50 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:05:50 GMT
COPY dir:ba33a5b875939ee2df7b46dc225238d8c473a8441cb6ddf0255eaa58260f734f in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:05:50 GMT
COPY dir:ba33a5b875939ee2df7b46dc225238d8c473a8441cb6ddf0255eaa58260f734f in /root/buildinfo/      
# Fri, 23 Oct 2026 08:05:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:05:19Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:05:19Z" "architecture"="aarch64" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:05:19Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:51:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:51:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:51:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:51:06 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:51:06 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 23 Oct 2026 16:51:11 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:51:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:51:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:51:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e1ecea44eec3674f31a32de1c39243e72839956e709ab2cbf88e40dd2f0ed92b`  
		Last Modified: Fri, 23 Oct 2026 09:57:12 GMT  
		Size: 33.1 MB (33087679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c32b19d61547bc9ff1b48ab6768b640026aa20b163d7f2d3f417f9b6f5e2c3`  
		Last Modified: Fri, 23 Oct 2026 16:51:28 GMT  
		Size: 37.8 MB (37827968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c18c833bafc2012f895731ffe1b375092b310434af3ca06a2bce59eb544b848`  
		Last Modified: Fri, 23 Oct 2026 16:51:29 GMT  
		Size: 62.3 MB (62301182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0230d3e01fbd651d3a0169db902062e3bb7d107c1268dcaf0126e47eefb6957b`  
		Last Modified: Fri, 23 Oct 2026 16:51:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1b0bb77f9b4236f0a5a87b00468b5aafa8bdab9c36cde24a6e4dd5dfc2659f`  
		Last Modified: Fri, 23 Oct 2026 16:51:27 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:634589bd13fe1f9259c528be1859ee1b7aac35115317fa25f85a969557a9cb9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f98d46ab9f2e21b936d5753fbf7ff3bcb43f2d09149e7019cd0b4f6b2d0619`

```dockerfile
```

-	Layers:
	-	`sha256:a5efc664248cee118597d02522523bf828b116ddbc098e75700b51ae740c1d5f`  
		Last Modified: Fri, 23 Oct 2026 16:51:27 GMT  
		Size: 3.7 MB (3693959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7428f05a7159f6e438df7100e9bf9e006ebe5209d1a21dde41bce4c2751397a7`  
		Last Modified: Fri, 23 Oct 2026 16:51:26 GMT  
		Size: 20.4 KB (20362 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27_35-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a43c451fc693a50c88080634b7d972d7d94e6e055893f45b3de47156545559a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (141010654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d0d313178b7962178325260222a2018aeb3fdccd084e674abffb0824bf5e2a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:09:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:09:54 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:09:54 GMT
ENV container oci
# Fri, 23 Oct 2026 08:09:55 GMT
COPY dir:295f54453e7171fac61302211ace298d2599ac74ce7eafb2d533fab73fc69f78 in /      
# Fri, 23 Oct 2026 08:09:55 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:09:55 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:09:56 GMT
COPY dir:4b9d0f2ce0fb12a692c80fa1ba2513a2251c3bfb06c748f9bf7b7f033c1b09e1 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:09:56 GMT
COPY dir:4b9d0f2ce0fb12a692c80fa1ba2513a2251c3bfb06c748f9bf7b7f033c1b09e1 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:09:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:09:19Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:09:19Z" "architecture"="ppc64le" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:09:19Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 17:28:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 17:28:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 17:28:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 23 Oct 2026 17:40:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 17:40:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:40:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:40:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:042c4028d78dcc708e3f9c3f1307df9c25ca8765bc563c8dcb32b8bb0c801979`  
		Last Modified: Fri, 23 Oct 2026 12:28:33 GMT  
		Size: 39.1 MB (39073309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9969ce94ed7c6e19366c1a1d59b4dc3ff007e030109167a5482ede99bab701a7`  
		Last Modified: Fri, 23 Oct 2026 17:28:58 GMT  
		Size: 39.7 MB (39670474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12cb144cc07b89744d418af844a82e19cdfd54736c23d8e0a479e41a61d004b9`  
		Last Modified: Fri, 23 Oct 2026 17:41:47 GMT  
		Size: 62.3 MB (62264273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e151f7b4496daea9b4ec164c7169331830de0e05d964e59d1e60d6ebfbf27d`  
		Last Modified: Fri, 23 Oct 2026 17:41:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c928bcc224a100bc72d6df4314de5d16646d4f851a8eb52ef920cd8292884aca`  
		Last Modified: Fri, 23 Oct 2026 17:41:45 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:24d25b5fdd591b3caf8d5434ca7315a9da775cf0d07d6163182c4823dd4fb55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3702960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae1909d65f7b26b95985981e4017dd3add321bb7aae078ba71c36b290d6379f`

```dockerfile
```

-	Layers:
	-	`sha256:2513e033d12b322dedee4ec77292cf35e9b8de12f0c01591ccd98000ec6f2860`  
		Last Modified: Fri, 23 Oct 2026 17:41:45 GMT  
		Size: 3.7 MB (3682672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0fbe9fb1639787ffc625fce087b6fe9ae3c8bc7a9c6ee0ff5ce3a3ab864928d`  
		Last Modified: Fri, 23 Oct 2026 17:41:45 GMT  
		Size: 20.3 KB (20288 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27_35-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:5c05c20ca67771c195c572975fd3dfcdc72acfacfbbc274b7e0bf5219c5d775d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134674748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e5109691b8eeb112030c99b1e75b165daecde3bdacfa5546f3b85924e0196e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Fri, 23 Oct 2026 08:15:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:15:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Fri, 23 Oct 2026 08:15:41 GMT
ENV container oci
# Fri, 23 Oct 2026 08:15:44 GMT
COPY dir:83ca23c900e74c48f911f17df6964c8db7f1d1d173c7ee325446aa5ea16de38a in /      
# Fri, 23 Oct 2026 08:15:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:15:45 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:15:46 GMT
COPY dir:0c5d7a9af49e28b6ac193f2aa63c70ac079c7d77e50827d97d8eaaf3cd83e91b in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:15:46 GMT
COPY dir:0c5d7a9af49e28b6ac193f2aa63c70ac079c7d77e50827d97d8eaaf3cd83e91b in /root/buildinfo/      
# Fri, 23 Oct 2026 08:15:47 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:13:02Z" "org.opencontainers.image.revision"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "build-date"="2026-10-23T08:13:02Z" "architecture"="s390x" "vcs-ref"="c29332dc58c1d049841f2bd7506b3249dc37ea6a" "vcs-type"="git" "release"="1792742351"org.opencontainers.image.created=2026-10-23T08:13:02Z,org.opencontainers.image.revision=c29332dc58c1d049841f2bd7506b3249dc37ea6a
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:57:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:57:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:57:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_VERSION=jdk-27+35
# Fri, 23 Oct 2026 17:00:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='a41b54098373f1ca8f75ee344db19b93ac39eca6c529c3ee9dc50f4b3e7857de';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_linux_hotspot_27_35.tar.gz';          ;;        ppc64le)          ESUM='a8e8e7e09e1b75822ce19982713b259306b82cdb1c6a4b1d1e09bf08ad4b1f3f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_ppc64le_linux_hotspot_27_35.tar.gz';          ;;        s390x)          ESUM='dd4201a54a89ff365880110bece4b7a7f53a15de62560864c3731bf14dd946d7';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_s390x_linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='2cb1b81ab49f516e5aeb28ee8acf3c73d64c77ca432ac959c6511a335342d8e9';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 17:00:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:00:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:00:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:51a9c44503b0d69d15181c68a4bd60279649613f78dbe34b58f969720280bda2`  
		Last Modified: Fri, 23 Oct 2026 12:28:18 GMT  
		Size: 34.8 MB (34752836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300f3da6d470afda0ac3e75fd30d3f3ff7534c093bbcfc3ebce4b657b2879018`  
		Last Modified: Fri, 23 Oct 2026 16:58:00 GMT  
		Size: 38.3 MB (38270822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ed1d7909c02feda1cbb4aec97231a4f448f0809535fb65cfbabdbaebd22e00`  
		Last Modified: Fri, 23 Oct 2026 17:01:03 GMT  
		Size: 61.6 MB (61648492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa09a4144b7ff4440fe7fda1a7ec0aa16b9f9d05ea9637de69a449f3edbd896`  
		Last Modified: Fri, 23 Oct 2026 17:01:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169eb1f20d6c29a8efff9323dfc30378583305b1c59317d6006d04effda5ee0b`  
		Last Modified: Fri, 23 Oct 2026 17:01:02 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:470dafa4dc084e12e425b8124a6701b4b6291f89d47fdba1894cc32cb42a456b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3704175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e500c938951d0ddc7524f2a8d7d0ca43f2b6ce4dc77ba0a6c579352cc77805b7`

```dockerfile
```

-	Layers:
	-	`sha256:b7dc1c68e08174b54278a774a1c7c385051eb4cd270855069d8c069ff0c0d40d`  
		Last Modified: Fri, 23 Oct 2026 17:01:02 GMT  
		Size: 3.7 MB (3683917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b42ac7a0467a41673b6610e915b8231b3ad377cf1c93db7e77350668925924a`  
		Last Modified: Fri, 23 Oct 2026 17:01:02 GMT  
		Size: 20.3 KB (20258 bytes)  
		MIME: application/vnd.in-toto+json
