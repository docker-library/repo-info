## `eclipse-temurin:21-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:981554315ec8b9d55b35307d3e514e22a409277ae932a5c73ba5605bfeb71eef
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

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:92f1834596a013ef078f293eb2ec5a4b3d4230c602601393d3a11a48c8367601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (125999742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08230fe237eed14eb9c1905296911351fb37076d1d526401db13cf1248c7bd7`
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
# Thu, 29 Oct 2026 19:14:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:12 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 19:14:12 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:14:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 19:14:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:14:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:14:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edca3061e3f8cfe5f00501af75c579244a887baf7f8fd85a71875d83824f8676`  
		Last Modified: Fri, 23 Oct 2026 09:57:09 GMT  
		Size: 34.9 MB (34900902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6595e0ddfb1106d837daa9f103aaa1f554f1bb31ac49f21f1e2e35e1e87b4fc1`  
		Last Modified: Thu, 29 Oct 2026 19:14:31 GMT  
		Size: 37.9 MB (37891021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91f643aa0db3eb473f1690ba6748a14313eff98f624f4f5ca086226b2c27081`  
		Last Modified: Thu, 29 Oct 2026 19:14:32 GMT  
		Size: 53.2 MB (53205222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b6eb6c1b7376670a376a3f02711f22e34e1b3490e26f897ddaf6c47fb4f38a`  
		Last Modified: Thu, 29 Oct 2026 19:14:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dde341b464ecd73b518a942c3f54e0e0256e1ea96772b8a220066256374f433`  
		Last Modified: Thu, 29 Oct 2026 19:14:30 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:deef275aebad11bece955998a515039b66c288ca83b8780e84c869fd025da371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3711100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a49af6138f7290b65b64ed075709035fde0d2407b70edc1fd2f5348a96c1dbf`

```dockerfile
```

-	Layers:
	-	`sha256:608a2c844ee0ee0f01e35487a9396493cd5cb599d0f2101148b2748441ea3373`  
		Last Modified: Thu, 29 Oct 2026 19:14:30 GMT  
		Size: 3.7 MB (3690746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27a7801e42644273c862bb0c7427b659b14a847b4af0c0eaa186a43da77f11e1`  
		Last Modified: Thu, 29 Oct 2026 19:14:30 GMT  
		Size: 20.4 KB (20354 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:f8e6d68cb8a1c776728cf1d0c6d5cc2a7b4ec3cd87e3ac1fe0f054a98135fa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.3 MB (123312299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f80fb1b85f9cb97a37d84dde45892189eebc90120afd459fef0c604235e966`
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
# Thu, 29 Oct 2026 19:08:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 19:08:20 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:08:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 19:08:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e1ecea44eec3674f31a32de1c39243e72839956e709ab2cbf88e40dd2f0ed92b`  
		Last Modified: Fri, 23 Oct 2026 09:57:12 GMT  
		Size: 33.1 MB (33087679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ae8af3daefbe2ae2f09cd53cadb928873069e97740d0624c43513445e5eba2`  
		Last Modified: Thu, 29 Oct 2026 19:08:39 GMT  
		Size: 37.8 MB (37832691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412998b50beae99a3ae52d2d92fc52d8099db5c9138615db91db62039e180c2b`  
		Last Modified: Thu, 29 Oct 2026 19:08:39 GMT  
		Size: 52.4 MB (52389332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fc86a6eb4917931f8a4729fb6aec66a170979bc4d5a2cb5aa2a26659a5c02f`  
		Last Modified: Thu, 29 Oct 2026 19:08:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d963820d2414bb1090ce8749efcbdec4e4b9d5e12d32fd771aac7ee7d56c6d6f`  
		Last Modified: Thu, 29 Oct 2026 19:08:28 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:09c2c17156963ebc669356f1392aab6c4b17682539bf6a02b610555299b37188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d12abb308cd6f4de5e450e84cec37c3aa135a25781ce26e802e789c2897b5b`

```dockerfile
```

-	Layers:
	-	`sha256:2452dea2d3d00ab62ff0aa9560f7c61fbcf32a9a6535eb1ed25d0d79c981c154`  
		Last Modified: Thu, 29 Oct 2026 19:08:37 GMT  
		Size: 3.7 MB (3690160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8ee4d14f51f2d4431e2b1ba70e78bd42b1afc46c5c9710748704a80de5c8343`  
		Last Modified: Thu, 29 Oct 2026 19:08:37 GMT  
		Size: 20.5 KB (20458 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:add8578a6598cc8be268094095886b4332cec6dedae27109215651b24df820e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131457577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:015450bb9004dd9a88c5ab683d6f62d9f541cb520032ce3cb5e06631137481c7`
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
# Thu, 29 Oct 2026 19:05:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:05:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:05:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:05:45 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 19:05:45 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:09:25 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 19:09:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:09:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:09:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:042c4028d78dcc708e3f9c3f1307df9c25ca8765bc563c8dcb32b8bb0c801979`  
		Last Modified: Fri, 23 Oct 2026 12:28:33 GMT  
		Size: 39.1 MB (39073309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0cbe4ac0262b960a2c836d1c967fd1b5f560c59861197f168f0e37bc4c28d6`  
		Last Modified: Thu, 29 Oct 2026 19:06:50 GMT  
		Size: 39.7 MB (39668765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6427658d040b4d41437779a6102057f3ac4d2f8046242af1ae7968255fb4b8a`  
		Last Modified: Thu, 29 Oct 2026 19:09:55 GMT  
		Size: 52.7 MB (52712905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf243daf31cd9ddc22bf008d23c61eb0f84fa870222daf8fdc11caa1f1bf044`  
		Last Modified: Thu, 29 Oct 2026 19:09:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b84650d65ff553e43547806f03247bf1b52ff5b06602230f3c5efe833f27311`  
		Last Modified: Thu, 29 Oct 2026 19:09:54 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e85efe8278e7cf6c846b6cbaeee115797ed2c20dbf6048d5cd3b69e5ed5861fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3698629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4260ecb984c7a5141844f2cca74a1a27691cf53c07b063c854460b2d9019094a`

```dockerfile
```

-	Layers:
	-	`sha256:a3f10e65eed8d58e2514e39b3e209486c1cc6752462f2c9ebdd5c1722b3bda89`  
		Last Modified: Thu, 29 Oct 2026 19:09:54 GMT  
		Size: 3.7 MB (3678245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a3bb7531beae1bdb805e5b6154aa76530f1fb008dcbc4715d04456629a08550`  
		Last Modified: Thu, 29 Oct 2026 19:09:54 GMT  
		Size: 20.4 KB (20384 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:f703e86dfdfee0666c9127c31356e03d343fa5933a3420c08a215414642e73d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122387030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0284a91e105ac8305072ff64a659eff4001a06a20f20dd3bcf947fe1702bf0`
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
# Thu, 29 Oct 2026 18:58:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:58:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:58:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:58:52 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:58:52 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:00:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 19:00:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:00:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:00:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:51a9c44503b0d69d15181c68a4bd60279649613f78dbe34b58f969720280bda2`  
		Last Modified: Fri, 23 Oct 2026 12:28:18 GMT  
		Size: 34.8 MB (34752836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631d1a59c840de4e812cab5dbaaceaadb4a2d800eb3089d13ae71d27059485fb`  
		Last Modified: Thu, 29 Oct 2026 18:59:31 GMT  
		Size: 38.3 MB (38271398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3cfa2c520e953edd81e1d1c11d81b8dfd0e2b7ad5ae2893e422af3c1c715c7`  
		Last Modified: Thu, 29 Oct 2026 19:01:16 GMT  
		Size: 49.4 MB (49360199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e11cedb252f8837fdb40badc29acf08f29df61cb6142e518b2999d4bce03c2`  
		Last Modified: Thu, 29 Oct 2026 19:01:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42a8ab2107209a9eccda062618477ee788c80aac32d3c533fcbd370a8e0e745`  
		Last Modified: Thu, 29 Oct 2026 19:01:14 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:023327b4c556da8f4dcda247aa1754e1fc32cf4c17c3be44e445ff5c7c1d1045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3699844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38961a1a8c9b3d7ce78ba039f2b687ecd9ec02c5ccfe80de5d1b4c6258d4b71`

```dockerfile
```

-	Layers:
	-	`sha256:3a1d728217f537965a0d4c5dc2ff69cc3d13bbf8fb429668650ab1bfde554a2b`  
		Last Modified: Thu, 29 Oct 2026 19:01:15 GMT  
		Size: 3.7 MB (3679490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cab5258a4c9865bfcfc209d8388dc2b281f0bd8a1f3873ae98eec9eb5fea33a`  
		Last Modified: Thu, 29 Oct 2026 19:01:14 GMT  
		Size: 20.4 KB (20354 bytes)  
		MIME: application/vnd.in-toto+json
