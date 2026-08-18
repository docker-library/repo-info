## `eclipse-temurin:21-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:3157c7dd1ea4916257de537eb9e161ccabf6766037236456cdb596bdd5f24968
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
$ docker pull eclipse-temurin@sha256:4882672697175ada11dff4271b0dbb508b8f1098df71e7efee675d581c0f2f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125833837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5342a8374e33b01c088dc761a09b9ca8359465df68f8e96eb1f51d35ccc6d1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:00:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:00:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:00:29 GMT
ENV container oci
# Mon, 17 Aug 2026 10:00:29 GMT
COPY dir:e1c00668e831c6f7c1c82890c3ff2aa86777926f6fcef54ed840b79618da399c in /      
# Mon, 17 Aug 2026 10:00:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:00:30 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:00:30 GMT
COPY dir:711c35f0e0f5b6c4acb3cbb42fc5687dfbbb2a5043ce701198a3131e25785504 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:00:30 GMT
COPY dir:711c35f0e0f5b6c4acb3cbb42fc5687dfbbb2a5043ce701198a3131e25785504 in /root/buildinfo/      
# Mon, 17 Aug 2026 10:00:30 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T09:59:37Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T09:59:37Z" "architecture"="x86_64" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T09:59:37Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:38:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:38:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:38:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:38:06 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:06 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:38:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 17 Aug 2026 22:38:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:38:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:38:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:872a2aed985e0b2daad07dd2009dbba2c5d87b2369582eb5b179f081ac4ea0e9`  
		Last Modified: Mon, 17 Aug 2026 10:54:15 GMT  
		Size: 34.9 MB (34914306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b17fc87649e09e4663e0334de1849e735e61fd336f6977b867c94b316aa3e61`  
		Last Modified: Mon, 17 Aug 2026 22:38:24 GMT  
		Size: 37.8 MB (37794824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044e00ec525f2aea33587fdbfbe6b7d0908c2f2465b52da8bd50b596fefda197`  
		Last Modified: Mon, 17 Aug 2026 22:38:25 GMT  
		Size: 53.1 MB (53122289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:110fb22f5a0596a28d4e401cf81f2281aced2cc92c64dca2696bc41b13e8befd`  
		Last Modified: Mon, 17 Aug 2026 22:38:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a7af22375e1cf73b495b79a017f6a758d8748c041e0167d34e19d04a25f0f1`  
		Last Modified: Mon, 17 Aug 2026 22:38:23 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:128dd406762e5b90a5a1a91a2e1aa89d02622c0548dfc40b5bd18cd99f01b22a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1ae47b8a13ccca0b61d9532b30a61a14529971c0e02a0cf5a9f6631891831c`

```dockerfile
```

-	Layers:
	-	`sha256:9da5a0f20e2d0b1b97b2349cbe8b378798289c408d166225b2bcf799a91876b9`  
		Last Modified: Mon, 17 Aug 2026 22:38:23 GMT  
		Size: 3.7 MB (3709207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7e61dd295fb0c9758b0775218bbff2e8af9a55531dcf5ea4441c8b68b3662a`  
		Last Modified: Mon, 17 Aug 2026 22:38:23 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:56fe674bd9f57f91d8f59c69982bdf539a6533f562a7efb53642e5e0d5e18b09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123138006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71179f8a53874455ea3f0c5dc28f8e4ff4dfaec0b2f72ef2bb5a29a57dda4810`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:02:26 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:02:26 GMT
ENV container oci
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:793eca9839ba6ad23829ed8a657d8667ee4d15a851784f37c997c048e9870781 in /      
# Mon, 17 Aug 2026 10:02:27 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:02:27 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:55140f70ed2ba8822276b175ee837493eab52c96586720bf3979289e5dccba53 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:02:27 GMT
COPY dir:55140f70ed2ba8822276b175ee837493eab52c96586720bf3979289e5dccba53 in /root/buildinfo/      
# Mon, 17 Aug 2026 10:02:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T10:02:05Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T10:02:05Z" "architecture"="aarch64" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T10:02:05Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:36:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:36:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:36:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:36:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:36:51 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:37:18 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:ff4356eadc8eb39aa229f22a6bde46a2c9a62afe867477b6cf66b5ce54cfb5d4`  
		Last Modified: Mon, 17 Aug 2026 10:54:11 GMT  
		Size: 33.1 MB (33101866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1378aa15e4651eeee14615733dd593680606df83606b8d5f57319998964c180a`  
		Last Modified: Mon, 17 Aug 2026 22:37:09 GMT  
		Size: 37.7 MB (37724415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60a3e1870ff42083f65ab14c720dd776c664397bd9ed647f2818cbad517675c`  
		Last Modified: Mon, 17 Aug 2026 22:37:33 GMT  
		Size: 52.3 MB (52309308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3357d44e3b60043ceb163af9ac5807101c4264b545f2d198fce040ec6f907234`  
		Last Modified: Mon, 17 Aug 2026 22:37:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a443a16ddb541694b2fe1ea6130dd9b6692afd034233e86c0130bee17fcd07a`  
		Last Modified: Mon, 17 Aug 2026 22:37:32 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a180256840ddbff8e7317b82264a9fd1536f512850a57ba60f04b91a86f0db24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3729103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea7ddbd4a6b375ed8917268213a316ff771635dd408e6a50c80e65dc3733b97`

```dockerfile
```

-	Layers:
	-	`sha256:4e3aaa85d9c227e53585f5c1a6f37787c16de7f5bcafa39050bd269e7428e660`  
		Last Modified: Mon, 17 Aug 2026 22:37:32 GMT  
		Size: 3.7 MB (3708621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5a52a17b9a167fc6c0774dcbe20b43400ad918b9148a0e2860998e05fce68d`  
		Last Modified: Mon, 17 Aug 2026 22:37:32 GMT  
		Size: 20.5 KB (20482 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:37fd69e40aeeb813ef5d62c3610e2ec7fe199eed99b4c4dbc3a7c1f1ad071611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131679203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d496d29a7288a26b328737b178cfb7418d954ef9e5c5f81a99d9f65e98f13bec`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:59:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:59:05 GMT
ENV container oci
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:249066be360b20bac2c3d87c82d2fd5913a2bd1c8a7703095843f7bb07f442b8 in /      
# Mon, 10 Aug 2026 21:59:05 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:59:05 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:7876787ddee47582bd5037da96d6c1c51bee54abfb82e51e92e428cf06595bca in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:59:05 GMT
COPY dir:7876787ddee47582bd5037da96d6c1c51bee54abfb82e51e92e428cf06595bca in /root/buildinfo/      
# Mon, 10 Aug 2026 21:59:06 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:58:46Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:58:46Z" "architecture"="ppc64le" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:58:46Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 20:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 11 Aug 2026 20:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 20:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 11 Aug 2026 20:19:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 20:19:36 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 11 Aug 2026 20:26:22 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 11 Aug 2026 20:26:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:26:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:26:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8cd8bf1356749857de78a84ea2d535a37f25277dac8b1dcfbb2a37ef254ca46b`  
		Last Modified: Tue, 11 Aug 2026 00:19:54 GMT  
		Size: 39.0 MB (38992795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3681bd23f68912b8e5fc514148289990dda7f13561576208484ea88934ecba6`  
		Last Modified: Tue, 11 Aug 2026 20:20:14 GMT  
		Size: 39.5 MB (39545533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9399e63a20c43a305b27f66fd37b77054f1a3a499b08e9d375bf2e21ebaa845`  
		Last Modified: Tue, 11 Aug 2026 20:26:48 GMT  
		Size: 53.1 MB (53138455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29febbed6312d4ba72939ddb74a3686fb9b1997d85926fa3ac3e3e1ca5a28526`  
		Last Modified: Tue, 11 Aug 2026 20:26:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fac936a922b6cfbf9a7065257f4214da472d6aa5fe030936911ff553fc075a8`  
		Last Modified: Tue, 11 Aug 2026 20:26:47 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:70633c310027158cc2c34a4ab3f26616d6cfea8c8d424443c876c3df00267950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3718344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a7a5614de363e21ecc99060363f69f75f80a56d666f477ae3c792322d5563e4`

```dockerfile
```

-	Layers:
	-	`sha256:7a25201e9e9c0a3d33494d288ff58001e6a7ffee7827de4688dc8b569f2a7335`  
		Last Modified: Tue, 11 Aug 2026 20:26:47 GMT  
		Size: 3.7 MB (3697936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a579edd1143790814bd282791ef6887d6559e115eae5bc9461d885ecf5ffd09e`  
		Last Modified: Tue, 11 Aug 2026 20:26:46 GMT  
		Size: 20.4 KB (20408 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:4421594acabfad865c51d6f1be48744a12f1681457f9ae29e7bdb7ad5358cbe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.6 MB (122645127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a68c40523757baee547400393bbf59da5aba997b803e3acd815f2f4a52a371b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 10:17:18 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 17 Aug 2026 10:17:18 GMT
ENV container oci
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:db8c552773640bcf67a97fcba29870289b1428b16d5ec8d65c572309418e9fd3 in /      
# Mon, 17 Aug 2026 10:17:19 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 10:17:19 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:7d13de7d05c45bf79021a229b19a0a25e9cf990735122c09853b8d2c0611408e in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 10:17:19 GMT
COPY dir:7d13de7d05c45bf79021a229b19a0a25e9cf990735122c09853b8d2c0611408e in /root/buildinfo/      
# Mon, 17 Aug 2026 10:17:19 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T10:15:57Z" "org.opencontainers.image.revision"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "build-date"="2026-08-17T10:15:57Z" "architecture"="s390x" "vcs-ref"="e7c0028707fa6423887e58fdaaa0ce41b96656c8" "vcs-type"="git" "release"="1786960640"org.opencontainers.image.created=2026-08-17T10:15:57Z,org.opencontainers.image.revision=e7c0028707fa6423887e58fdaaa0ce41b96656c8
# Mon, 17 Aug 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:35:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:37:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 17 Aug 2026 22:37:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:12ecfd32ac8bb40ba4889411d71319e37dea47907db2b9306af99b658953469c`  
		Last Modified: Mon, 17 Aug 2026 11:32:31 GMT  
		Size: 34.8 MB (34815441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb2e1229ed031edd8ad8cd675a2fc89246c29704423ccaa73fcdc1aeba7db8a`  
		Last Modified: Mon, 17 Aug 2026 22:36:01 GMT  
		Size: 38.2 MB (38171368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9de38f98ca7895dedc9b50e87af13f9b3e208d2f2d9a6786c4c57eea07114ee`  
		Last Modified: Mon, 17 Aug 2026 22:37:21 GMT  
		Size: 49.7 MB (49655901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07d1b37bb5480fa3038b508b6595aaea04ff9d559f9f0741d85ff55dcccadb6`  
		Last Modified: Mon, 17 Aug 2026 22:37:20 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f111b3986449b1ff4bc967ffd22ce3c94727d23ea6bbaa49b71d7832b1dade`  
		Last Modified: Mon, 17 Aug 2026 22:37:20 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:659c718d604e0bd63e9591aea312cfee2e02ae670fc2e824d38fe4a27ba0d730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3719575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e36538ae14e30e8ee378af364ceeb72d6b70385f12d6b19e26ba14cc54242cd`

```dockerfile
```

-	Layers:
	-	`sha256:613e80a0931297e46d09b02d210d9ff3376587eedbdaaedab7d86c1adc11ec14`  
		Last Modified: Mon, 17 Aug 2026 22:37:20 GMT  
		Size: 3.7 MB (3699197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9167cef864be660b4039c8961333d1d30ddc7c02f888837653890f65a7be49f1`  
		Last Modified: Mon, 17 Aug 2026 22:37:20 GMT  
		Size: 20.4 KB (20378 bytes)  
		MIME: application/vnd.in-toto+json
