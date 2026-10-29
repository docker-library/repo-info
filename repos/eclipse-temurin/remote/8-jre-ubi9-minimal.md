## `eclipse-temurin:8-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:986769724a46c2eb7c9dd92245ae0201cb544b4542f6ab5545108df740bd7d15
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
$ docker pull eclipse-temurin@sha256:8e92db5de9573416500814610d941639eebec176d55c6d11bd63e501d266be34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110619442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39da4ea6a36c914485f2a28a2ff1911190e649e5ebefcfacd7e1930a25ffbbec`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:54:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:54:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:54:23 GMT
ENV container oci
# Thu, 29 Oct 2026 05:54:23 GMT
COPY dir:cb36e4a04f700577f4d44e5ef8e97fee2e20c96c2328537ddf72d477ad63850e in /      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:54:24 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
COPY dir:6f787a22ee9c86f2977e5bc3d8b8487c5e75e12cf005c8de8336495493a703c0 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:54:24 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:53:50Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:53:50Z" "architecture"="x86_64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:53:50Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:56:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:56:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:56:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:56:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:56:35 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 29 Oct 2026 18:56:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:56:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:56:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:56:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2164d2820af90f29766403e395ab877c03c4ae5dd020d8a1180c2bdb12e89bf2`  
		Last Modified: Thu, 29 Oct 2026 06:37:49 GMT  
		Size: 40.7 MB (40656045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16daacb2ea7525229f705af92bfa07215f84df6cc8b15532df1ea490d9e92611`  
		Last Modified: Thu, 29 Oct 2026 18:56:51 GMT  
		Size: 27.6 MB (27632334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774be2a82ab2a19d62ac397862e152c6107b212a1fabb9d835c7e9f47b7c704b`  
		Last Modified: Thu, 29 Oct 2026 18:56:51 GMT  
		Size: 42.3 MB (42328463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbc0c285ccd997dbacc726811eee0ad112c96cb9e1b55703bf904059a8e0c45`  
		Last Modified: Thu, 29 Oct 2026 18:56:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d0f998238e288a0696d7ea61f20817463d2bba703c04d94760a3164bc6f7f6`  
		Last Modified: Thu, 29 Oct 2026 18:56:51 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a50c0e5a070513454b82fe70b79485d2067675201e5a2515ea3fd3bc44e59e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2440964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b97480f0d75a80d089ce8037939a8e7c4ecd370397d06e2381283ca4ffe8545`

```dockerfile
```

-	Layers:
	-	`sha256:3b2bcfce69b72a5d809c1a28ec72a442e81c55fbc3902e3a10d1305f00477469`  
		Last Modified: Thu, 29 Oct 2026 18:56:49 GMT  
		Size: 2.4 MB (2421617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b9f3268acc81e02df6255581b4ab451152b00a8aaf2e7c76c013a5c651abcc2`  
		Last Modified: Thu, 29 Oct 2026 18:56:49 GMT  
		Size: 19.3 KB (19347 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:943dbb38fced189fce31ffe80dc3ee426267c8b7e598cf7166ee2ad0d680ffdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108084122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55d65b55ddd997924a39c7d86ba9fc39afca29c246bf1100da2a1ee78a12f69`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:55:49 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:55:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:55:50 GMT
ENV container oci
# Thu, 29 Oct 2026 05:55:51 GMT
COPY dir:c2f7b4c82de3b29a784fee39f42a89d24dcfb89cdf321a56be39c3db78376c0a in /      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:55:52 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:55:52 GMT
COPY dir:d5c8eb0f62c97002675f9b845c311f4fc41098098fd604bd72c8226e9fea1734 in /root/buildinfo/      
# Thu, 29 Oct 2026 05:55:53 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:55:19Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:55:19Z" "architecture"="aarch64" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:55:19Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:55:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:55:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:55:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:55:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:55:49 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 29 Oct 2026 18:55:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:55:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:55:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:55:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d1fd8731fe293042fa0b8c35e7a013605e676c89fdf9067f0f919ee6053921e5`  
		Last Modified: Thu, 29 Oct 2026 06:37:51 GMT  
		Size: 38.7 MB (38719163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b694b5a2e04fb4557a93644ca4a9d7feb7a864dbeb0d49da1dfae0e742f5d6`  
		Last Modified: Thu, 29 Oct 2026 18:56:04 GMT  
		Size: 28.1 MB (28069350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7c511f6610e1ac9fd65c3345b86896caab159377cda11ce48a56aa13af5a69`  
		Last Modified: Thu, 29 Oct 2026 18:56:05 GMT  
		Size: 41.3 MB (41293012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b5386227c8202800b8b11f4bea794bfa93c55cbc23364a2b42e5a8741bdce7`  
		Last Modified: Thu, 29 Oct 2026 18:56:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537be61850a485245ff655242d7ab25f9ee1b7c9eadc8432eeb003db8350b154`  
		Last Modified: Thu, 29 Oct 2026 18:56:04 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:80deb53896a316d34e0efa81d0b35511c748f1d9e0cfc3ffa7c6aa270d77e109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2439336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e43e0ff4c0675cee662814626fdb10d28c2489e3e8560883e6c3fab2c0a3bd`

```dockerfile
```

-	Layers:
	-	`sha256:1ee06dad5d070adbd0c8f1d340f9a62ddde5e8b64fec20a06be502584e496ffc`  
		Last Modified: Thu, 29 Oct 2026 18:56:04 GMT  
		Size: 2.4 MB (2419885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75df666c816f068470889f564271cea22b63ca771ff709585c7bcfb201347cd5`  
		Last Modified: Thu, 29 Oct 2026 18:56:03 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:a941834866cb7888e02f488f07b16fe4aad9907bd8b1e6b53766ef57beabb08b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116872253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef08e932312a7c21ebe696759e62f6cee76ff2321334bfe6b727c1ec9ab45c11`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 05:58:25 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 05:58:25 GMT
ENV container oci
# Thu, 29 Oct 2026 05:58:26 GMT
COPY dir:0026950a9b8b7c1c27d592a235541afe594d9de67eefba2fbb763cdbf2d5f8d7 in /      
# Thu, 29 Oct 2026 05:58:27 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 05:58:27 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 05:58:27 GMT
COPY dir:34a5453c79547edb954a2ea82e6026030ab59ad39fdb79e99ec07f7d651d754f in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 05:58:27 GMT
COPY dir:34a5453c79547edb954a2ea82e6026030ab59ad39fdb79e99ec07f7d651d754f in /root/buildinfo/      
# Thu, 29 Oct 2026 05:58:28 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T05:57:58Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T05:57:58Z" "architecture"="ppc64le" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T05:57:58Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:54:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:54:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:54:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:54:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:54:41 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 29 Oct 2026 18:54:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 29 Oct 2026 18:54:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:54:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:54:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:de78ad82fc5d05f77be9c1b61185ba38225ae24b7df59ad9836c14d79e190d33`  
		Last Modified: Thu, 29 Oct 2026 12:14:34 GMT  
		Size: 45.1 MB (45074730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31689038f0fb703560ee2eaa847681a4060eda3eedc5b286c043a5c089cf824d`  
		Last Modified: Thu, 29 Oct 2026 18:55:14 GMT  
		Size: 30.1 MB (30057324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04f63e2f0bd36919b4cd0d33cf259bc1ce51c16b02ffb49102b140d40e9f6ab`  
		Last Modified: Thu, 29 Oct 2026 18:55:14 GMT  
		Size: 41.7 MB (41737603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9bd414286487fd6e8af12f8e1e9d4467ce3fd5bbd8b38d30715d5b0e988277`  
		Last Modified: Thu, 29 Oct 2026 18:55:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe5d822c14eb3315f79d44a81be2b83d6ea5c13ee23e38306e2d690a88ccf37`  
		Last Modified: Thu, 29 Oct 2026 18:55:13 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:847f1a163d6816df528d660effed96065dd33e3cb8da51517706c7269dafdfe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2439947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a0b14d0295869b820a0ef7640c81c15939bd538e2f88d7982f3c71694db5e9`

```dockerfile
```

-	Layers:
	-	`sha256:2ede7c988a5d6fd46ce20f53c7d0bf1365e1bfd4ef2a55312fcbde149e652f3b`  
		Last Modified: Thu, 29 Oct 2026 18:55:12 GMT  
		Size: 2.4 MB (2420570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25cae641b72ddbbfbd9d72974cc110bd79d03f9d16bbad3d2c06868a6808c8ad`  
		Last Modified: Thu, 29 Oct 2026 18:55:12 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
