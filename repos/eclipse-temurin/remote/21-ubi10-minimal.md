## `eclipse-temurin:21-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:b7cdf1e19b7563a635892a3b0422a1563398e08f03ea07e94f6cc5396f558ac3
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
$ docker pull eclipse-temurin@sha256:c8e8c58dc88eb39518953dd8191b02b32b5c9000d9f3cdef642f8271b3c44cc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230884322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588a258297ccbfee10045cc1dab66c03879378a7ff1681bf1be68b5642791015`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Mon, 17 Aug 2026 22:38:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:38:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:38:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:38:02 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:02 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:38:09 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:38:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:38:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:38:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:38:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:872a2aed985e0b2daad07dd2009dbba2c5d87b2369582eb5b179f081ac4ea0e9`  
		Last Modified: Mon, 17 Aug 2026 10:54:15 GMT  
		Size: 34.9 MB (34914306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9069c226ab9c140cc1cf68d3047651ec152f1b46465664577b7657b0a468a7`  
		Last Modified: Mon, 17 Aug 2026 22:38:30 GMT  
		Size: 37.8 MB (37794926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde35d6dbd842aaf2ac5f76f0e3ee3d9b0c6a140fba4fbfb73d9d7dc901683da`  
		Last Modified: Mon, 17 Aug 2026 22:38:32 GMT  
		Size: 158.2 MB (158172670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84437cb4f544a047c03023fe78da261f0a7319938f18f4002607d57369e5a784`  
		Last Modified: Mon, 17 Aug 2026 22:38:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31454372ce8ad7a70232f69a96fb98ec15633f27c78dffeff8049b9e39fb8b6`  
		Last Modified: Mon, 17 Aug 2026 22:38:28 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:842f69606bcbc5ebdbd46e135833556989ede333fb80c7bc5d03a239b0e72d57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7816c7362b3cfe22418635ee7526359c9161fb645b127aca2e25a1e77e864db`

```dockerfile
```

-	Layers:
	-	`sha256:f3822b6cb1f31e452961a84fa8ac93074c79fe3298fa3b3ce5388521d292998e`  
		Last Modified: Mon, 17 Aug 2026 22:38:29 GMT  
		Size: 3.8 MB (3794294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291d54eed8d2ac3ec499e31df2789fd22604030eba2bff3ad2ed06fb8a8b2d63`  
		Last Modified: Mon, 17 Aug 2026 22:38:28 GMT  
		Size: 21.3 KB (21340 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:94db3729c3535ae7dd86fadfaa68ca53dd6a9ea3710a0e897dad2d98712e8ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227293130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1285cda230fbb1053fd97fb89fa38cf824e721fbde9bceb4bb2224cf3dc80fd3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Mon, 17 Aug 2026 22:36:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 17 Aug 2026 22:36:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:36:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 17 Aug 2026 22:36:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:36:18 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Mon, 17 Aug 2026 22:37:17 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ff4356eadc8eb39aa229f22a6bde46a2c9a62afe867477b6cf66b5ce54cfb5d4`  
		Last Modified: Mon, 17 Aug 2026 10:54:11 GMT  
		Size: 33.1 MB (33101866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43deaad581e8a0754377c633b3c094ddf38c8e7c0f8a94a68ac995b406ad850c`  
		Last Modified: Mon, 17 Aug 2026 22:36:40 GMT  
		Size: 37.7 MB (37724487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aefa41289e095693524ba1c17415e3d9187f64bd24df5070bfe558bd3bf3686`  
		Last Modified: Mon, 17 Aug 2026 22:37:40 GMT  
		Size: 156.5 MB (156464359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3357d44e3b60043ceb163af9ac5807101c4264b545f2d198fce040ec6f907234`  
		Last Modified: Mon, 17 Aug 2026 22:37:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d18f084832018d223e9137171d552a7f888418d8b8f56a081a01c9938de9b5`  
		Last Modified: Mon, 17 Aug 2026 22:37:37 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7cda880b185af6208495b39fb39e6e33d13ac9158edf92521431a1e334f8ff4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3815176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d17bdbc219bd6b128c25b6e1dded5c6632ed833ddecf83608a4db8df54c2a52`

```dockerfile
```

-	Layers:
	-	`sha256:2161703c94987117a6b8ae49061947e885ffdec529f23e86beda1c70e2bd996b`  
		Last Modified: Mon, 17 Aug 2026 22:37:37 GMT  
		Size: 3.8 MB (3793720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8580d455f34f8c2bdf9430fc4dfaf916786f6ba5f9e448339cec8d150ff107e8`  
		Last Modified: Mon, 17 Aug 2026 22:37:37 GMT  
		Size: 21.5 KB (21456 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:846dbb3802185d0946b771a802a4d798cec7a6ed7a539e07e8e901034f49dd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236889281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05fb65a01d7a6600a8edf214907c3e8a33ef2430eb3e9b843a74e456a11d63f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Tue, 11 Aug 2026 20:25:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 11 Aug 2026 20:25:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 11 Aug 2026 20:25:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 11 Aug 2026 20:25:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 11 Aug 2026 20:25:23 GMT
CMD ["jshell"]
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
	-	`sha256:1bea7c833c20ebf9a599ee103164c2e5fb076b277613081633cccf5d0930f7bf`  
		Last Modified: Tue, 11 Aug 2026 20:26:05 GMT  
		Size: 158.3 MB (158348533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5505e24696c92b87cde0fb29b6d5472860e0759322e4db7dea50afa6b786ccc5`  
		Last Modified: Tue, 11 Aug 2026 20:25:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cd873cc20d0cd8e3ea46d7435ab0ff2b97d389624c296ca3ce65b27b456187`  
		Last Modified: Tue, 11 Aug 2026 20:26:00 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f2a1cf3e3d9c306a05b109f230740ef34a72243a2d0cb003d23988a5e715a379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3802486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee119907741b253cb456c2605d8d561959e8a9217950378d3e8634151577efe9`

```dockerfile
```

-	Layers:
	-	`sha256:f48edeae38067da9fb7bfcc9cea585018e5277ac0c34d5450a8466959704c673`  
		Last Modified: Tue, 11 Aug 2026 20:26:02 GMT  
		Size: 3.8 MB (3781110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c148ce3c88df0c33900d9b92d6ac9460fd3751750695599c0081736cb169864`  
		Last Modified: Tue, 11 Aug 2026 20:26:02 GMT  
		Size: 21.4 KB (21376 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:04547076a69f6b628a505ef33af51e3e1185dc821ae2fa6b73598141cde1f4cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.4 MB (220379452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36b0577dbaa8226de4da04d5476f0eb202442aaa9515cc21e323976974f74bb5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Mon, 17 Aug 2026 22:36:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='8d498ec88e1c1989fab95c6784240ab92d011e29c54d20a3f9c324b13476f9ad';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64le)          ESUM='3d043ae96d2343962bf2307d8c55f19849fbfa4c6be9fe164a77d79263f0d989';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='14dbe3cb226e64b945a36bea32686e8deec746504fe3ccee8de585c54af41ffd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        x86_64)          ESUM='4b2220e232a97997b436ca6ab15cbf70171ecff52958a46159dfa5a8c44ca4de';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jdk_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 17 Aug 2026 22:37:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 17 Aug 2026 22:37:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 17 Aug 2026 22:37:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 17 Aug 2026 22:37:00 GMT
CMD ["jshell"]
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
	-	`sha256:445eb3169821d428d5b1417a30b77fcfd351508504f7c71e2a0c615fa9aa7ea3`  
		Last Modified: Mon, 17 Aug 2026 22:37:27 GMT  
		Size: 147.4 MB (147390223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d3a0f61bf7735d63e98587bdc9e63bd7f0d4d59aa8b10a659fdbcf4d53b4db`  
		Last Modified: Mon, 17 Aug 2026 22:37:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62871f0b97fc3172300ee758f260e6c5cedc0cde8374cbdec2c95eb443f7b5e6`  
		Last Modified: Mon, 17 Aug 2026 22:37:24 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:13d91c00b0919a8b40f21721aed4d178d7c969eb45dff4179d7295728a91fe4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3801223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5484dbb7481a3c691d1f0dd97950752a38226ac9b4681c4d21229c3d55abf6e3`

```dockerfile
```

-	Layers:
	-	`sha256:4a18bd717c60f1dc198632e2e8f070b5eb1fa368fc55f82e3ec85161a20238e1`  
		Last Modified: Mon, 17 Aug 2026 22:37:25 GMT  
		Size: 3.8 MB (3779884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23ef49b091255e241bb7254ce078b4ca30308c6648b7ddabf2df7d7862f87c64`  
		Last Modified: Mon, 17 Aug 2026 22:37:24 GMT  
		Size: 21.3 KB (21339 bytes)  
		MIME: application/vnd.in-toto+json
