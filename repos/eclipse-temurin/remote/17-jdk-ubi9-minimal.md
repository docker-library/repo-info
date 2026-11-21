## `eclipse-temurin:17-jdk-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:439bcd136abbf42b9cbf8a90c8cff59ce514c0a42d3ca2c6ce889f53a9a3c11e
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

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:72e1aed3e764a34ddc4826ce954e6315c396827597baaad8bdf4f9988779342d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200329905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd034939fe8dcce9922e781700d3a1f1009032b734209ff0adf679538060e10`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Fri, 20 Nov 2026 17:42:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 20 Nov 2026 17:42:42 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:49 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:42:50 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5f7f1f3b305e0ffdfc043539995e0a392776db1611cb2f9dcee08b14f8da88`  
		Last Modified: Fri, 20 Nov 2026 17:43:04 GMT  
		Size: 13.5 MB (13531919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bc3e9c9a1f863789c24e5c33675ac929d4f28e21c999a6aff875f470c780ce`  
		Last Modified: Fri, 20 Nov 2026 17:43:07 GMT  
		Size: 146.1 MB (146119303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ab7400ee49903a706277a8e58f3012f396132497230dc315c91cae1e6b53a2`  
		Last Modified: Fri, 20 Nov 2026 17:43:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5732c3c89c0e6f4110efb7642c17e49de3d36f5571c58673ac9867bf125753c0`  
		Last Modified: Fri, 20 Nov 2026 17:43:04 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9fcf3173385903843f4ddee6b82d959bff353c343c6ede18c2aa3d1a169522a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1758403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44d74bb3875cabf9f7378aed48f00c772a1fb5d63695c792c1d6b378d6fdc26f`

```dockerfile
```

-	Layers:
	-	`sha256:69964547a37747e9062c2a53419da3aada574489a04990d691b66e9210e8e16d`  
		Last Modified: Fri, 20 Nov 2026 17:43:04 GMT  
		Size: 1.7 MB (1737276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:602879e812f6cab6ff230352f5b6f25c1d96eca3cd2073fe866078a3c4e6f814`  
		Last Modified: Fri, 20 Nov 2026 17:43:04 GMT  
		Size: 21.1 KB (21127 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:7d69f057e2ac814e23af42975776ce30fd652b9c5fcc8447d208b19e9757ed0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211793954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab8b639f4e8e1e20984bd6be1980f3bbc563a9492c9677c7bf7ed60a34772bc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:41:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:41:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:41:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:41:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:41:16 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 18 Nov 2026 21:41:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 21:41:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55951453d4b9db71ef83bf4f8a2fa8d00127c2124dfcd231726ef85157f6534e`  
		Last Modified: Wed, 18 Nov 2026 21:41:43 GMT  
		Size: 28.1 MB (28080246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e6cb2073f9fe631f1978e161461e240392c407ebd87604665802b7de23be74`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 145.0 MB (144966372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6e2478f418db0d5a2f2ae046ab6e88eea06e3f2cd4cc0639b7a818d2554b42`  
		Last Modified: Wed, 18 Nov 2026 21:41:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85d902be97cee342d6a70134e400c5171484340cc4217cdc67eaa30620804ea`  
		Last Modified: Wed, 18 Nov 2026 21:41:20 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:14ed7a6f439b7fc4c1928acd1c127c70c5e39f994f3b369ae9372b6d1abefc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2496766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92bcd0a98fc06c05444e861a2a47ed27a533432f0c9d1307a172d77c651f1642`

```dockerfile
```

-	Layers:
	-	`sha256:334ad10bd239357a59554a006869882941540e0b4a2280b768ca332d785ca35d`  
		Last Modified: Wed, 18 Nov 2026 21:41:42 GMT  
		Size: 2.5 MB (2475506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c438dad6fb4f4b01902e30d3af39a432e7b3c04de51aa68924872aa24ee71424`  
		Last Modified: Wed, 18 Nov 2026 21:41:42 GMT  
		Size: 21.3 KB (21260 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:477a84e59e5ed776154b04baf6167e2ae368f03f38cc65f033f090ff078113a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220011157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20de42f9a03ffc4affc890d50db47e1503739f5d0018e0360c40767ccebf1062`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:41 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:41 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:41 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:41 GMT
COPY dir:a0622cc71eaf4ca90209dfaeab4630dfa3434697e7052e6a993c1abb2d3c462c in /      
# Wed, 18 Nov 2026 11:36:42 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:42 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:42 GMT
COPY dir:3531fb7c7ea53108abeda523af513693c2bdea2399745e0e8bc99a635c3452af in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:42 GMT
COPY dir:3531fb7c7ea53108abeda523af513693c2bdea2399745e0e8bc99a635c3452af in /root/buildinfo/      
# Wed, 18 Nov 2026 11:36:43 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:14Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:14Z" "architecture"="ppc64le" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:14Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 22:12:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:12:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:12:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:12:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:12:29 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:48:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:48:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:48:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:48:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:48:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16d5500340afa364d9c29bc3f1a5f54b29187eb40d014253a87cdf2f5693005a`  
		Last Modified: Wed, 18 Nov 2026 18:13:22 GMT  
		Size: 45.0 MB (45025159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee59564fc4b96d76411141455bd7841ad14881ff439b73f509441ab77eed18b`  
		Last Modified: Wed, 18 Nov 2026 22:13:11 GMT  
		Size: 30.1 MB (30072171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0200938db8ee88917ea7da63649c13ea67d78655c5f82920d8f2dc335598fc42`  
		Last Modified: Fri, 20 Nov 2026 17:49:19 GMT  
		Size: 144.9 MB (144911225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd12fed7e21efe14ecafe4f3ab286a083b18d1c66b4e237ade609848c5662b4`  
		Last Modified: Fri, 20 Nov 2026 17:49:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06413997a36ca8912b6e8c5ac5c8458b1cd4de1cda1c29eb74a90c961e168e60`  
		Last Modified: Fri, 20 Nov 2026 17:49:16 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9375df442f2561bdbb5ecac58b298d1bcf5d2fb996f60d0d4e6904d4c4370e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2494195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76d72c274177516220a3c29d9b6c7efbed42fb9f8f16084add3ffbf6eed1eb6`

```dockerfile
```

-	Layers:
	-	`sha256:866e22b85ef382bb0a456f33af2bd68880adcfed83085ff0b52b61bb5b4af7a9`  
		Last Modified: Fri, 20 Nov 2026 17:49:16 GMT  
		Size: 2.5 MB (2473032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7034a2703efb60c4881a51f1044555b536d7426d73f574fb335ecdf8f836f3c`  
		Last Modified: Fri, 20 Nov 2026 17:49:15 GMT  
		Size: 21.2 KB (21163 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jdk-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:525613ce0dc55ca1cc5f4c776fc8d6eb5ee5f5b24361675c0c4afc48b2e443b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201778590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5cf23aaa2070c7f6d0dcbc9cc0fff0b27ca9800cdfe3f8902b4ab69edcbe166`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:38:42 GMT
ENV container oci
# Wed, 18 Nov 2026 11:38:43 GMT
COPY dir:cd9df8f36e38eebb483b42fc34557cd51607ec9538d1b4bae66870faf2fbe598 in /      
# Wed, 18 Nov 2026 11:38:43 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:38:43 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:38:44 GMT
COPY dir:a4341341e267795a4708499e31f70f2b2423a5b7824c6290a35a69787d62dcea in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:38:44 GMT
COPY dir:a4341341e267795a4708499e31f70f2b2423a5b7824c6290a35a69787d62dcea in /root/buildinfo/      
# Wed, 18 Nov 2026 11:38:44 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:37:54Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:37:54Z" "architecture"="s390x" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:37:54Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 22:49:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:49:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:49:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:49:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:49:22 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:46:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64le)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        x86_64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:46:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:46:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:46:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:46:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11a80d17533893f325035f1146f3c176f76cd556f19939362b9a3b3ab4456653`  
		Last Modified: Wed, 18 Nov 2026 17:17:21 GMT  
		Size: 38.7 MB (38669160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab48afbf1e81e85d01125637052ba999dc98c579e4f120af07d6df1a5edafad5`  
		Last Modified: Wed, 18 Nov 2026 22:50:33 GMT  
		Size: 27.7 MB (27687951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90e4d2ec674d12388dbfcfc9406f2bf28a651f15b30feae34a6818a7c6367c6e`  
		Last Modified: Fri, 20 Nov 2026 17:47:23 GMT  
		Size: 135.4 MB (135418880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a8ef57b51308672e6db2fc23e1064b6183309f8aa26f594cadd4a4717b9a2`  
		Last Modified: Fri, 20 Nov 2026 17:47:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c66125792da1960424defec468002a36cc384669ef0595ca66e99a0680287e5`  
		Last Modified: Fri, 20 Nov 2026 17:47:20 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jdk-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9cb774e249ec48cea758fe3207af3f52d57c24bc3db639c81140b8f9bb5413cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2483421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748f120a133c46f50116aaddeeb1da1f785727b0f00ef879710ca39ab87a8ecb`

```dockerfile
```

-	Layers:
	-	`sha256:67a2938dd415c42c195a40883dadf5f93466365fcd653216f0c016d287da77c2`  
		Last Modified: Fri, 20 Nov 2026 17:47:20 GMT  
		Size: 2.5 MB (2462294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cf3e709508db95bd0cf5498c1629ac5c4b2f6f843f5b556bdf6f25deab5a207`  
		Last Modified: Fri, 20 Nov 2026 17:47:19 GMT  
		Size: 21.1 KB (21127 bytes)  
		MIME: application/vnd.in-toto+json
