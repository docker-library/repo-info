## `eclipse-temurin:8-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:9610a2365b0355f3023d65d99bf57dfc3e29986704874464844ad7f215e97183
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
$ docker pull eclipse-temurin@sha256:c2b13139f467e862732181c5e4fdbfc35bbb10e61cb48a4275799ba0fc50fd2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118013818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9062b2b707e066323a4c21d3eebe8391e208a25739bb8d997931d6f371a7c8e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:04 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:04 GMT
COPY dir:7c2bbbb7f5210f15511c07d2c4001d7fe8f4d068648bb2a4ad6d3eda0100bdce in /      
# Wed, 07 Oct 2026 04:15:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:04 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:14:06Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:14:06Z" "architecture"="x86_64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:14:06Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:07:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:07:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:07:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:07:59 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:07:59 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 07 Oct 2026 22:08:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 07 Oct 2026 22:08:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:08:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:08:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7622e8b6ee5965126c68b18861709ea82ce88ca92ffc0ce29f05c5a215e20b96`  
		Last Modified: Wed, 07 Oct 2026 06:14:48 GMT  
		Size: 35.0 MB (34950412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4884c35f18266bae9e42a56b1e1767a7724ecc062df516f4e9d4dacca784a0b`  
		Last Modified: Wed, 07 Oct 2026 22:08:18 GMT  
		Size: 40.7 MB (40732310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac83da4ce80dd9198571dca7273caf566632fb2636f0324e9090b09484b8dc`  
		Last Modified: Wed, 07 Oct 2026 22:08:18 GMT  
		Size: 42.3 MB (42328499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5dedec0dad7f4788d76068f9a84b9c39665176a4c964b8dc0ffcd27d60c6eb9`  
		Last Modified: Wed, 07 Oct 2026 22:08:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af187870cabc87e871a64b131f03fe8b49795108b3b2e9eb73ab8ecf8c90a2c9`  
		Last Modified: Wed, 07 Oct 2026 22:08:16 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:62b61611cb9aa0f4fe156e7723bdf4d776f4657c0ea832e468d1b864fa722a7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ccce3f7b77756a99825a845b53e61d260ebe78c6e796a257f9ce038e0fb8d85`

```dockerfile
```

-	Layers:
	-	`sha256:068c70b257c18cfe25856ba91c6f747a7f45593e0ac12528142055839c35c69c`  
		Last Modified: Wed, 07 Oct 2026 22:08:16 GMT  
		Size: 3.7 MB (3736896 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:274fec13de2e9924066b7184b692b0ce761db9bdb2d966a57040bb1c6f38ee70`  
		Last Modified: Wed, 07 Oct 2026 22:08:16 GMT  
		Size: 19.5 KB (19511 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:27dfc7d0a573a997fa5d57db5bc68dc3bec69e255a2843ce7bb5f70232e23a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114960871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b4263749e7bf67bdcaca327e014f5f5b6830fd6acb9d43fa7a5e3b8af8e579`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:40 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:40 GMT
COPY dir:2ef2e4e2a6b41f232e640f18c3dc5f15c442e4e4c8f84bc19a7a6f7ec341c008 in /      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:41 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:15:20Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:15:20Z" "architecture"="aarch64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:15:20Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:07:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:07:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:07:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:07:34 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:07:34 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 07 Oct 2026 22:07:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 07 Oct 2026 22:07:37 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:07:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:07:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a74897f26d06e9dd89c15728fca5ccd6144a0eb4a8a988677b35be5ef16025a2`  
		Last Modified: Wed, 07 Oct 2026 06:15:00 GMT  
		Size: 33.2 MB (33194468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3bb5c3077acca72651749acd42241012a1ecf34b31c5d58dfec2c2975c5f61`  
		Last Modified: Wed, 07 Oct 2026 22:07:51 GMT  
		Size: 40.5 MB (40470734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d66e2091efa6a9f0a71b7cf6b454cd0e2c7d7ec74375ae7ef814524e5c76cfc`  
		Last Modified: Wed, 07 Oct 2026 22:07:51 GMT  
		Size: 41.3 MB (41293071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d182bb0a078845a9fa7274332007ea74aa36676cddf2e6bfb51618180283292`  
		Last Modified: Wed, 07 Oct 2026 22:07:50 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22c0b519a61e8c356bcdbc4ef48e331b458e12ce7edf0eeeeaeff254bf96153`  
		Last Modified: Wed, 07 Oct 2026 22:07:50 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4a0da29124c0037202ad4deae793b80b5af023f817e3f5dedd3b290f9d232419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d687a4c001a51274bb5cc58cabfa34636e9a9debf2ce7cfde541041e2b9cf8c9`

```dockerfile
```

-	Layers:
	-	`sha256:243bcd6fa5b141175a6b648f0d5f0d677c1b24f00f9bf5182cf583030abe3c9c`  
		Last Modified: Wed, 07 Oct 2026 22:07:50 GMT  
		Size: 3.7 MB (3737002 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba051c856a30642351c8aee869b67e0bd201917a1cea0364444ddc58475927de`  
		Last Modified: Wed, 07 Oct 2026 22:07:50 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:485fbe95d330fa9b5be7388ebf0ee875c79a802ab6afc8ace8d171b645af6449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123488065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7f9021eb85c526937bb6a2109cd7666b11fe25fde67763d3bb4b642edd2057b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:21:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:21:21 GMT
ENV container oci
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:2487f3d5e203d3216a55dc379085a4d7d5554d8e2f02df41000fbb0e3e09aa93 in /      
# Wed, 07 Oct 2026 04:21:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:21:22 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:f1aa898926061f8db7d6cba7b85a7dfe413a7429132b3c5ede46914750ecf0ff in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:21:22 GMT
COPY dir:f1aa898926061f8db7d6cba7b85a7dfe413a7429132b3c5ede46914750ecf0ff in /root/buildinfo/      
# Wed, 07 Oct 2026 04:21:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:21:04Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:21:04Z" "architecture"="ppc64le" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:21:04Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:21:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 22:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:21:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 07 Oct 2026 22:21:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:21:20 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Wed, 07 Oct 2026 22:21:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Wed, 07 Oct 2026 22:21:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 07 Oct 2026 22:21:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 07 Oct 2026 22:21:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b5d9c969c5baa30f03fe96495c747916f02c7eeeb53fe9ad61b3f919d3b4317c`  
		Last Modified: Wed, 07 Oct 2026 06:15:42 GMT  
		Size: 39.1 MB (39091436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a1e8879bdb28e6db16e53f2e5fb958bd30c0c8fd918d85338639b348a71392`  
		Last Modified: Wed, 07 Oct 2026 22:22:08 GMT  
		Size: 42.7 MB (42656404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5113e275a357c8f7c3099556fd122757b5cabcd1ed5e8a8c7b98527f7e3c7f0`  
		Last Modified: Wed, 07 Oct 2026 22:22:08 GMT  
		Size: 41.7 MB (41737627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35feb945b0a035373c5f9a1208e79ba01b1f66ffeda677898dba6872885757e1`  
		Last Modified: Wed, 07 Oct 2026 22:22:05 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f54b7c8eac41fe6543419123e9ce84c2f362a7243c961c3dc2d56cd6f97eab`  
		Last Modified: Wed, 07 Oct 2026 22:22:07 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bd1df1419bc17f7104d0c7f808ed52605f9e60d3de04f10b95ec4357ca1cbc05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c817d3019d4800c45c8ea5aee0e51cac6d47bd100f5a737695476f3f37a06abf`

```dockerfile
```

-	Layers:
	-	`sha256:eee3a35d5528d2998a7533c56dd4c9d5cbbc0a72aa8c5ef28961c575facf270e`  
		Last Modified: Wed, 07 Oct 2026 22:22:06 GMT  
		Size: 3.7 MB (3726333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cbdd9a9d8d0a7982c6a6068563866e28a7cbdeb63456aadb1d25f8606d94fbd`  
		Last Modified: Wed, 07 Oct 2026 22:22:05 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
