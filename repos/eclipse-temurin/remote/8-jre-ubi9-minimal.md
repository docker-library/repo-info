## `eclipse-temurin:8-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:89d3c9728e986887bbc1d8f3fc0d114ded88d84085a414670ef2fbe586f368a4
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
$ docker pull eclipse-temurin@sha256:8f2702007701e49e976e2338442c795218e2b1866be33f7533f1f0ff5e39e7ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110705024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d992f08a1006d545696ff96b7edb4125a4dd582f82f7204b8b8424dc69079a60`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:49 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:50 GMT
COPY dir:e45266e494b9752d347f82bff660e367c92279dd3110ea5b3aba7f7174fdf656 in /      
# Mon, 12 Oct 2026 12:37:50 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:50 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
COPY dir:a1b3412d0ee6658591c067c250fc387d859e4d182c15f2dde66e7f77f7cb6d4a in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:51 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:05Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:05Z" "architecture"="x86_64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:05Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:34:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:34:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:34:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:34:10 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:34:10 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 00:34:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:34:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:34:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:34:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c8fb2f748d0518200c41845a3bbb526397078028e42feaddaf7208534fc575b4`  
		Last Modified: Mon, 12 Oct 2026 14:31:54 GMT  
		Size: 40.7 MB (40731722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34699a3316b0904805cac7b396ba796885092c5606cddbdd7b52b21eeff3ca0`  
		Last Modified: Tue, 13 Oct 2026 00:34:26 GMT  
		Size: 27.6 MB (27642231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f9a08a179b807806a1bc4305a31e2441752e42f58b5020055f9fbbc65da661`  
		Last Modified: Tue, 13 Oct 2026 00:34:26 GMT  
		Size: 42.3 MB (42328472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46af6b77d292adfa95ba7093ff3c752208a6ed3c7a25908b0589abf13541486c`  
		Last Modified: Tue, 13 Oct 2026 00:34:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad84e465c92b813c06b7771cff19a0dca4e7c443a391a8a2ba7e9286ccbf96c`  
		Last Modified: Tue, 13 Oct 2026 00:34:25 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ccb1109af444cabce8c8140443ce8e28765892e6c14070ea18e7344c163182c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2459483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1744e8b1002fa8461333f747137f842504deb51406fd77dc2246db5042d5ec`

```dockerfile
```

-	Layers:
	-	`sha256:a1d976f8681d272b224b247e5ae0334b47657de044e90af0540c0a58eece6ce1`  
		Last Modified: Tue, 13 Oct 2026 00:34:24 GMT  
		Size: 2.4 MB (2440136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a47e1d755550be5e54011a8610f7060777c71aa55526262b8e81a520f75bf1aa`  
		Last Modified: Tue, 13 Oct 2026 00:34:24 GMT  
		Size: 19.3 KB (19347 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:ef5dcb26d5bfd84bf84b75b0c3eafd59243652cbe5ded963f83cbc99ba89069c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108173992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d768076adfd963e645a72dbed91a9754281186534167a948190b53f8ee5046`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:19 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.expose-services=""
# Mon, 12 Oct 2026 12:37:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 12 Oct 2026 12:37:20 GMT
ENV container oci
# Mon, 12 Oct 2026 12:37:21 GMT
COPY dir:123af182f2411d6301e92c5816a09ad572a38ac45c6a006a2a67fe12bba24337 in /      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 12 Oct 2026 12:37:22 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /usr/share/buildinfo/      
# Mon, 12 Oct 2026 12:37:22 GMT
COPY dir:af25db34574ac74a77dcb2c3247cf0e47211ca3e53116d59e2c507bd5db60e5e in /root/buildinfo/      
# Mon, 12 Oct 2026 12:37:23 GMT
LABEL "org.opencontainers.image.created"="2026-10-12T12:36:49Z" "org.opencontainers.image.revision"="605f9da3afeb17ea0827cac3edf823279a26c42f" "build-date"="2026-10-12T12:36:49Z" "architecture"="aarch64" "vcs-ref"="605f9da3afeb17ea0827cac3edf823279a26c42f" "vcs-type"="git" "release"="1791808450"org.opencontainers.image.created=2026-10-12T12:36:49Z,org.opencontainers.image.revision=605f9da3afeb17ea0827cac3edf823279a26c42f
# Tue, 13 Oct 2026 00:32:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 00:32:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:32:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 00:32:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 00:32:43 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 13 Oct 2026 00:32:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 13 Oct 2026 00:32:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 00:32:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 00:32:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e9b14607c5b59da407fa1d8ceb91765c821f6a3e5637af082c822b0741fd9481`  
		Last Modified: Mon, 12 Oct 2026 14:30:43 GMT  
		Size: 38.8 MB (38798784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221618e8eef171f5d9e6c532978a965874313a587000be3006db47aa4ca0d132`  
		Last Modified: Tue, 13 Oct 2026 00:32:58 GMT  
		Size: 28.1 MB (28079583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b55b2552b40b7f80b23eac2835738ffb22b7a8e593c5a526fad82a2f922c8c6`  
		Last Modified: Tue, 13 Oct 2026 00:32:59 GMT  
		Size: 41.3 MB (41293026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9445b358568e50e983bb0d2fac3568cc9aa9f9cca9bfd653cef8c3b59fd27157`  
		Last Modified: Tue, 13 Oct 2026 00:32:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c6878f4f75900342b5e2e074af14699a104d9a21f440cc2fda1f1dabda7f46`  
		Last Modified: Tue, 13 Oct 2026 00:32:57 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d22da1e3adac38f43cc400a13a838cfa5efeb8501fdb43877068bb5467afd288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2457855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2b9e88dae819f2b5bc9b67d6726bfacc1cf404595beb2785cf7c635f15e387`

```dockerfile
```

-	Layers:
	-	`sha256:4e6bf15a093d7ef8eefcd400a64446e1b3152dc8afcdcbe8ba801d9a452c4c52`  
		Last Modified: Tue, 13 Oct 2026 00:32:57 GMT  
		Size: 2.4 MB (2438404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5017efa8089a8cca49a16a55e038b93c6a2ecd60b9ae67eb2e0c5690010f5ad`  
		Last Modified: Tue, 13 Oct 2026 00:32:57 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a22c15935f8db37227ee10b49ef68911be3d5e6b10843c0d8728893384f9407b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116890062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336eedf92b9624258a064043c1703ac6a9a2e43b8760267b0f822115f17b925a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:44 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:44 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:d07f2b7b7fc0328aad01cfdaed182c175acb09c22d3d7ce49cc19c491698d5b0 in /      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:45 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
COPY dir:774b92356406bfee1307af385a5d45b5beda7faea39e85ca4f3d6fbc56d40b00 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:45 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:23Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:23Z" "architecture"="ppc64le" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:23Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:24 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Tue, 06 Oct 2026 21:50:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 06 Oct 2026 21:50:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:50:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:50:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9244f500f9cceb07e7669ad9bfa7c24a2ed1eed26cb416a3d032180e1d0448b2`  
		Last Modified: Tue, 06 Oct 2026 12:14:20 GMT  
		Size: 45.1 MB (45090018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19b15df0f393569d2b35ab6197ae367a01bab491b217c2f51043e833e5b92ae`  
		Last Modified: Tue, 06 Oct 2026 21:50:11 GMT  
		Size: 30.1 MB (30059845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3984953648a0b111b089338a3c3c6828b78d1efbe7ad95a18dbbaa7c095758b`  
		Last Modified: Tue, 06 Oct 2026 21:51:02 GMT  
		Size: 41.7 MB (41737599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399a601a558189d62fff71eac92f873e125fd8149f26fcf31ce9010a6be7b15f`  
		Last Modified: Tue, 06 Oct 2026 21:51:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da03d85644a646f5ba3e9c2192394038bc7082d73d82aa8dda74fb61b68183a`  
		Last Modified: Tue, 06 Oct 2026 21:51:00 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a7f42fd83a9ececebc0066b44b01f4c19dd7f0e02b9ce545135d393f20795d47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2458466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac769d20dc0e784eb234ecdd535a63d6315dfc7c98c40e47e05d555a68f2f59`

```dockerfile
```

-	Layers:
	-	`sha256:ae9095033bd3750e4e743181b8f36f1b25cffdf7edf31cc7a483f8bd2097f2d5`  
		Last Modified: Tue, 06 Oct 2026 21:51:01 GMT  
		Size: 2.4 MB (2439089 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2985b877494b90a36b52ae6687dfbe6bd25ff4b26eff5e40fe4a9dd62f9c3bd3`  
		Last Modified: Tue, 06 Oct 2026 21:51:00 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
