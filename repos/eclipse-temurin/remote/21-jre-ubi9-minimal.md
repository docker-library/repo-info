## `eclipse-temurin:21-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:32e48df1806b7c89fd2986d73e2a16afffe2393cc77fe88137276073cd1b9c63
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

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:8e769e7b5ee6a33ff0e57290a87bf4a46ad9a55aa22d8618067fa51e9ce1240c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121339559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4868d396aea1075568f11ef141342a263eaa542792f64b5c56bc2897af76c1a6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:55:55 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:55:55 GMT
ENV container oci
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:2fc4551098c6ebd5c0304b2f61efdc67d6aebcbff8032750054f600bbeec82fc in /      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:55:56 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:55:56 GMT
COPY dir:a78b034003bd0e620e960223059e9c224ee88be75273ffd75b7039efe65e4145 in /root/buildinfo/      
# Fri, 23 Oct 2026 07:55:57 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:55:29Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:55:29Z" "architecture"="x86_64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:55:29Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:49:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:49:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:49:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:49:58 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:49:58 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 23 Oct 2026 16:50:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:50:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74b09d47403b6e0522a8cc3fd6a898259e54bbaae0be6c397399bd41ee27d9c1`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 40.6 MB (40609256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f95af9d1d10debb34e830a996b668f06e5731e15305ecabdd47472217b87bd2`  
		Last Modified: Fri, 23 Oct 2026 16:50:22 GMT  
		Size: 27.6 MB (27634928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d3b927950911c87cc940d6b500303d45ab776956fb1fc26a664118e0295501`  
		Last Modified: Fri, 23 Oct 2026 16:50:47 GMT  
		Size: 53.1 MB (53092777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:334023dc31dfcd7a9af52e53d3fc97b15a64b8bf70ad6a0c0e8585ef88e88225`  
		Last Modified: Fri, 23 Oct 2026 16:50:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6eb183b838515c1d2ef7cc98271c7c3a139c8050e06e0db3f8ab79949e0ea68`  
		Last Modified: Fri, 23 Oct 2026 16:50:45 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b3bf52e580caa9c9cb5ac85b4b1da987b615b48334fbbc16a152bf35f1d8fe01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76980c92876f137808f1e0e53766070689be9e59f941c4edf6cb1328f4a2d4d`

```dockerfile
```

-	Layers:
	-	`sha256:c0a565688e813de32e41a128ec5c4737cbe7c65f3649972685522310af03540d`  
		Last Modified: Fri, 23 Oct 2026 16:50:45 GMT  
		Size: 2.4 MB (2393994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f4d47d4e45169b46a3f8c56e0a7dd1030941cd69973b220cb8bc17bceed362e`  
		Last Modified: Fri, 23 Oct 2026 16:50:45 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c31eb8b9bb2c6ea3cf1b5040f4b9381b8d9f6792599152306845f74595325f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119055078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9585041d4ad26a323ea20c865ef5bb4ce1a81dba04be8a1c15d9b455bb42d7c6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:16 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:17 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:17 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:18 GMT
COPY dir:5dfa310507da27398f8076c2456ffd2197b043828a75f962db7044d875161543 in /      
# Fri, 23 Oct 2026 07:58:18 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:18 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
COPY dir:245207855491c502875407ff924decd7477ce054eb0ef618bc047892ca9116ea in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:45Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:45Z" "architecture"="aarch64" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:45Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:50:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:50:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:50:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:50:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:50:20 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 23 Oct 2026 16:50:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:50:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:50:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:50:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6cb90586f16ba5f631bc69ed4b10258b9b651fbb54718f47b878a4abd17252cb`  
		Last Modified: Fri, 23 Oct 2026 09:53:00 GMT  
		Size: 38.7 MB (38714705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d631a2d18f88b0a7d8308b2e763d8914ea85047b075dfd979cd85b1c259fd`  
		Last Modified: Fri, 23 Oct 2026 16:50:36 GMT  
		Size: 28.1 MB (28069273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933aaf12f70c605c76031d0a5f022cd380e45ff53c6b884a9bc1877f43e04b81`  
		Last Modified: Fri, 23 Oct 2026 16:51:01 GMT  
		Size: 52.3 MB (52268504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1341f930ae126e1b719eac5444c61ffa4537d5687db8efbc191b7ff78acb79`  
		Last Modified: Fri, 23 Oct 2026 16:50:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b774f5b020beb2265a10e9e577baeb37329b6eddaba108b3d8291a8ce3cb21`  
		Last Modified: Fri, 23 Oct 2026 16:50:59 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c1c0037e9dd46b8ebdca6688ea2c780b86f55c277580cdf13f5a3eb74638e9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2411908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65281ccbe07476e8efe3083a153d553e9dbc6ab434d59887801af325d71500ce`

```dockerfile
```

-	Layers:
	-	`sha256:cfb87d4ea408f04a8aab209ee283845685118de0b2b72684760996f985845e56`  
		Last Modified: Fri, 23 Oct 2026 16:51:00 GMT  
		Size: 2.4 MB (2391570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdd5f67e325d7b8fb0e467a5ae9939be32cb6e62e8c46ba74dd47a119c52820c`  
		Last Modified: Fri, 23 Oct 2026 16:50:59 GMT  
		Size: 20.3 KB (20338 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:382d177c620faf3db7959c91460ebc7e7a90f316cc73e9476de3d7d3960af8f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128226866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f620787e3a61ff4ff65b95bb96d2ac494c1d800b0d48a9e76181e7e0cdc3b1bc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 07:58:18 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 07:58:19 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 07:58:20 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 07:58:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 07:58:20 GMT
ENV container oci
# Fri, 23 Oct 2026 07:58:22 GMT
COPY dir:be29e417dbef72628a967183b8b7ae7e922e6bdd49b1170f0357574ceddc0063 in /      
# Fri, 23 Oct 2026 07:58:23 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 07:58:23 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 07:58:24 GMT
COPY dir:f6840b105933cf6e1dea85d65fe324fc36d97841d50c0cc737f9d0bd85087e6e in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 07:58:24 GMT
COPY dir:f6840b105933cf6e1dea85d65fe324fc36d97841d50c0cc737f9d0bd85087e6e in /root/buildinfo/      
# Fri, 23 Oct 2026 07:58:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T07:57:24Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T07:57:24Z" "architecture"="ppc64le" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T07:57:24Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 17:28:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 17:28:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 17:28:04 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 17:28:04 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 23 Oct 2026 17:36:41 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 17:36:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 17:36:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 17:36:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8600d58bbb8bb01636d59485bcdcbec2b5f7bed900f808d2f3873025a1c10f51`  
		Last Modified: Fri, 23 Oct 2026 12:17:14 GMT  
		Size: 45.1 MB (45056999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52173a77234d725955af0360e83880a1f64675cf3b0d0ef520415a9ac8a3b48`  
		Last Modified: Fri, 23 Oct 2026 17:28:53 GMT  
		Size: 30.1 MB (30055408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27eab29282dabe21f083063f8b4b8ebf1bb0df975cb69241ad49504e80ddcad0`  
		Last Modified: Fri, 23 Oct 2026 17:37:10 GMT  
		Size: 53.1 MB (53111861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9953d58bd85d7b5031e669df3046ec2b12c97aeccb6a92c05bc4735178678b29`  
		Last Modified: Fri, 23 Oct 2026 17:37:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad40be058e0357cd8c87dd9303a2006c5ad3039ea406e70104af0685cf3df8b`  
		Last Modified: Fri, 23 Oct 2026 17:37:08 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:abd43799dfb38f2615c540a62e5bca1dbb7bec4889fe2f691983856b37e6f6f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2412518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:008360d869d210ed300fd8baad4a047c1260ccb43529a54cbc849e64f434b194`

```dockerfile
```

-	Layers:
	-	`sha256:76c8fb2ca5197352a5085b45403f57f3b54b8986b2bcc7d784542956e94d47ba`  
		Last Modified: Fri, 23 Oct 2026 17:37:08 GMT  
		Size: 2.4 MB (2392255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f97649fd56edc7d0c47e7c70a0b45760c56490cbc0eb0ae434144169055cdc4`  
		Last Modified: Fri, 23 Oct 2026 17:37:08 GMT  
		Size: 20.3 KB (20263 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:596db5edb665062288081eae0bae971ba5fc554731b81036d577210538bc1214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116008541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73511f29eeb8591a61ee8ebad68aa384172098ae49129fbdb4b0da71d465c172`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 23 Oct 2026 08:02:59 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 23 Oct 2026 08:03:00 GMT
LABEL io.openshift.expose-services=""
# Fri, 23 Oct 2026 08:03:00 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 23 Oct 2026 08:03:00 GMT
ENV container oci
# Fri, 23 Oct 2026 08:03:02 GMT
COPY dir:700234f76bc35f95b0db1568179e5016110455c7aed925c6189dba8998aeec8b in /      
# Fri, 23 Oct 2026 08:03:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 23 Oct 2026 08:03:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 08:03:03 GMT
COPY dir:bdd4945543c96b7ab6f1cf5a706ca0181786069878cf74ca8f22a6b07aacdc59 in /usr/share/buildinfo/      
# Fri, 23 Oct 2026 08:03:04 GMT
COPY dir:bdd4945543c96b7ab6f1cf5a706ca0181786069878cf74ca8f22a6b07aacdc59 in /root/buildinfo/      
# Fri, 23 Oct 2026 08:03:04 GMT
LABEL "org.opencontainers.image.created"="2026-10-23T08:01:32Z" "org.opencontainers.image.revision"="59d275375d644e97803eb1be638cb4b2fa111a25" "build-date"="2026-10-23T08:01:32Z" "architecture"="s390x" "vcs-ref"="59d275375d644e97803eb1be638cb4b2fa111a25" "vcs-type"="git" "release"="1792742033"org.opencontainers.image.created=2026-10-23T08:01:32Z,org.opencontainers.image.revision=59d275375d644e97803eb1be638cb4b2fa111a25
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 23 Oct 2026 16:57:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 16:57:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 23 Oct 2026 16:57:37 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 23 Oct 2026 16:57:37 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 23 Oct 2026 16:59:10 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 23 Oct 2026 16:59:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 23 Oct 2026 16:59:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 23 Oct 2026 16:59:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c79017a98668fd0611d5357e4d3098bed87e792207ab39da4b6b5fade8cf7f80`  
		Last Modified: Fri, 23 Oct 2026 09:52:32 GMT  
		Size: 38.7 MB (38708637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5fab9e35de67c478ced171ab49814163a02118377cf2be6454074b881ef855`  
		Last Modified: Fri, 23 Oct 2026 16:58:07 GMT  
		Size: 27.7 MB (27662612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c50ce4645dca3bc90bb6e22289ddf9f69104d36fe4860e1693cd19e1452cf115`  
		Last Modified: Fri, 23 Oct 2026 16:59:28 GMT  
		Size: 49.6 MB (49634694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38f3d85b0bd3274ae57bc86d363ddd7fe56bd5ec8e98ad93389fd55acdde17`  
		Last Modified: Fri, 23 Oct 2026 16:59:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbaa959a51fdb5bf93353da4bf3ff2ec24d3902437e8b0078607d81717d7bf1c`  
		Last Modified: Fri, 23 Oct 2026 16:59:27 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a59fca747181e5b08115e801fc50db40f1d9a7abbf83a6e5dc7849eb98f4f1f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2404238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3c6cbdb0b65d37d3ba0a5376485145d34966f804dcd1729346d8cdf77f46fe`

```dockerfile
```

-	Layers:
	-	`sha256:a9e05bce0c85765bdcaf044dbdd151944b0afbb9aece3c543d6d27f081ba7e91`  
		Last Modified: Fri, 23 Oct 2026 16:59:27 GMT  
		Size: 2.4 MB (2384004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5fe5f379d17249e3eb9e5d161b65254e71f4b50a66706a46947458d4f10806d`  
		Last Modified: Fri, 23 Oct 2026 16:59:27 GMT  
		Size: 20.2 KB (20234 bytes)  
		MIME: application/vnd.in-toto+json
