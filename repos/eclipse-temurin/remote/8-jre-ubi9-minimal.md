## `eclipse-temurin:8-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:ecafeb38d94f35f426bd18988c46d091b2df6fe1833256518cd851b72e38e006
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:2cf1dae6264dd2073b2fbc7636caf278518d4a2b3d50f670a7f24eb154723560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110704695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02186e5c9cf0370beb19861ad68ac7211b58259817d82e66a55eee2b1238ccd7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:53:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:53:44 GMT
ENV container oci
# Mon, 31 Aug 2026 08:53:44 GMT
COPY dir:19cc2d5b9eaa116f3cb84eada48063b3bc3fe9e2c9e39a73cc87b72cc8d70c32 in /      
# Mon, 31 Aug 2026 08:53:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:53:44 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
COPY dir:06b2f05cbdc30c870d2738e959aef49498d01d38b907966b94425ac991c6f532 in /root/buildinfo/      
# Mon, 31 Aug 2026 08:53:45 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:53:29Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:53:29Z" "architecture"="x86_64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:53:29Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:16:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:16:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:16:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:16:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:16:10 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:16:13 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:16:13 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:16:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:16:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2943616793071e9fa96e298a7454ac45b7a498df6ca5c681004955a177cdf999`  
		Last Modified: Mon, 31 Aug 2026 10:01:51 GMT  
		Size: 40.7 MB (40709577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e21a25acf98a6167158715b9a560bed150510745171fb4a45ca99c2b8885d1`  
		Last Modified: Mon, 31 Aug 2026 19:16:25 GMT  
		Size: 27.7 MB (27666157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19bee2613cc6a8cfdd5380bf8662da0b48be3ed12c55863566630ee3c17713e`  
		Last Modified: Mon, 31 Aug 2026 19:16:25 GMT  
		Size: 42.3 MB (42326365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa92cc226b62e203e4481a0c43d83e47b17a7e9bdcac6f924d1fed99b2d4f45`  
		Last Modified: Mon, 31 Aug 2026 19:16:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9866dccc04e717953c7d7eb136ca14b62546b147e61306a6ff7e957cee24c621`  
		Last Modified: Mon, 31 Aug 2026 19:16:24 GMT  
		Size: 2.5 KB (2468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:301a7de0eadefc152b785d23e31138f0ebf1c9eda5c78dff1145745b4f5a989f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2459447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636574e7b5596804329b9966c209224f04f7bb3baa91a3a06c725730094615fb`

```dockerfile
```

-	Layers:
	-	`sha256:0bab470ab65e55513bb31feda3402718852f420302b18ccf337a9bdef1fbd2ad`  
		Last Modified: Mon, 31 Aug 2026 19:16:24 GMT  
		Size: 2.4 MB (2440100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da098adb4273c5028b01e505b822f9d57628babeaf455e92e1c1712f2ada935c`  
		Last Modified: Mon, 31 Aug 2026 19:16:23 GMT  
		Size: 19.3 KB (19347 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1d9606765a6ceb2669061be8ef3ae0f14af3b2165efb8a0b9bf5920e0a816edf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108211011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c203eb66ab02c35ced6ebf0ac93ba49d31b33531871203821f149cdf9d24963`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:27 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:f2269a49305dc61b5c62efda70ce8327957d5aafa0915c5b324ac4402d0afd7e in /      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:28 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
COPY dir:314f6db1cd15d342fa9962b7dae89ed14fe0c81c812223914e17998e1aac0abe in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:28 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:06Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:06Z" "architecture"="aarch64" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:06Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:33:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:33:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:33:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:33:38 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:33:38 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:33:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:33:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:33:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:33:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8289a871631249c9c1a3b2366de832716cd43c77864c245a1c1364a2abeb5704`  
		Last Modified: Mon, 31 Aug 2026 10:01:50 GMT  
		Size: 38.8 MB (38815996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:affa1c45452e61f3a935ac889d2269bc26e40adbdb3744de22674ba1ee9cd90c`  
		Last Modified: Mon, 31 Aug 2026 19:33:53 GMT  
		Size: 28.1 MB (28095457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9436dca780bbdccce2f979be9ab668c80d9c93205b17f70bf951fd4ffdd73f19`  
		Last Modified: Mon, 31 Aug 2026 19:33:53 GMT  
		Size: 41.3 MB (41296960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724050919db6470282c4859f16c241e3f0c93d8661e0df91db069c794ed37cce`  
		Last Modified: Mon, 31 Aug 2026 19:33:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eb421b870a79c9477d6021aae7cd170d3b699cfdb2774c7e0bd9899e01ac30`  
		Last Modified: Mon, 31 Aug 2026 19:33:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:310f391496c9693a152a9bdc92ecb20ce4a4c4ee8fa1f86520cc8dbd116e15b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2457823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f566bc9291c1086920402841fa561ba2745bb996021f5d04bfe6a8c3a1448897`

```dockerfile
```

-	Layers:
	-	`sha256:6a26332c16f42bec5d1e057528782a3c9bb705a4b0f4455d6729f97fc89a8803`  
		Last Modified: Mon, 31 Aug 2026 19:33:52 GMT  
		Size: 2.4 MB (2438372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a8d25d34978bb74d9e59b7f366eeacdac2aac1b4cab260b20da24955c567725`  
		Last Modified: Mon, 31 Aug 2026 19:33:52 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:383184dc9381cfbb88f1acc2f2a26769d918bea771dc1b1b710ac95c5a7cd11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116947064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d509bb66532846e16d4df7965309ac2f6ac36eadb47a1f92aa30da047fbdf427`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.openshift.expose-services=""
# Mon, 31 Aug 2026 08:55:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 31 Aug 2026 08:55:17 GMT
ENV container oci
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:741537afbb3785105e7b2ca806b19e20cea721418a8279ff4ede1766d643f701 in /      
# Mon, 31 Aug 2026 08:55:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 31 Aug 2026 08:55:18 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:68059ba414ddd7df0a40efbe3877fcfcb91455dbd0f37dcdb8e9fe364568bcdf in /usr/share/buildinfo/      
# Mon, 31 Aug 2026 08:55:18 GMT
COPY dir:68059ba414ddd7df0a40efbe3877fcfcb91455dbd0f37dcdb8e9fe364568bcdf in /root/buildinfo/      
# Mon, 31 Aug 2026 08:55:19 GMT
LABEL "org.opencontainers.image.created"="2026-08-31T08:55:01Z" "org.opencontainers.image.revision"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "build-date"="2026-08-31T08:55:01Z" "architecture"="ppc64le" "vcs-ref"="3c32d7c63d617fc21bc66bb65a893d8db99096da" "vcs-type"="git" "release"="1788166357"org.opencontainers.image.created=2026-08-31T08:55:01Z,org.opencontainers.image.revision=3c32d7c63d617fc21bc66bb65a893d8db99096da
# Mon, 31 Aug 2026 19:56:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 31 Aug 2026 19:56:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:56:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:56:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Mon, 31 Aug 2026 19:56:49 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Mon, 31 Aug 2026 19:57:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='4ffd3abaf65a47610096d9c25ea06f2439428f1c087d3e54eb518553a6115638';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='56fbe946d93afefd39353ff3fe0219e227fd4880267159ab48f95ac8ba25482d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='f1a7bea0804bfa5627dac412fe7a0d751c4228592e356d6a32a30da54a48ed7a';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:57:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 31 Aug 2026 19:57:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 31 Aug 2026 19:57:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2f251b8d3e076987b58b62b3eda665de6816a418e936600327231b1852d5f30a`  
		Last Modified: Mon, 31 Aug 2026 12:14:10 GMT  
		Size: 45.1 MB (45126014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23ae3964c903e609b2272363bf6507736070cc9dc57638f1ea8927d70943cee`  
		Last Modified: Mon, 31 Aug 2026 19:57:23 GMT  
		Size: 30.1 MB (30075024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39e3fcaf659f55a509b03bd71579991a2b72a3685c76ce2ee57e0115bfd28e9`  
		Last Modified: Mon, 31 Aug 2026 19:57:58 GMT  
		Size: 41.7 MB (41743427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416d50b32ba9e9f96883e484b26bce3e17dd293774f81d7e6dda12ff7bcd3a4e`  
		Last Modified: Mon, 31 Aug 2026 19:57:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ff7070f3c92985a080af7f6b04e6124602496a342518edff8e771ce4a15208`  
		Last Modified: Mon, 31 Aug 2026 19:57:56 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:47776fd55f59e1febfa2aa3cc19f09c32ece9d8c17f924bf464e8001f82b115c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2458434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137734c4c8d635c511bd6f637a9620e927822b4a03bf742124f84952beb23556`

```dockerfile
```

-	Layers:
	-	`sha256:cd69bfd09cc16884eab97b46259c30255672d1e8a1d26ee23611c6783e73dd92`  
		Last Modified: Mon, 31 Aug 2026 19:57:56 GMT  
		Size: 2.4 MB (2439057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c1a191c0d21f2a2d5e547b906ee01a8ac32a3b1695aa0f5a5b6fc791a934e07`  
		Last Modified: Mon, 31 Aug 2026 19:57:56 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
