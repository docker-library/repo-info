## `eclipse-temurin:21-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:a2971383c7281a4c00abfe176f5e446e63008447f1f321a25d5fe754c1d0c067
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
$ docker pull eclipse-temurin@sha256:82e1c8ac5fba676ffab4e8a968f348e67820b5197b7e3d86d25c9cf72d646e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121498235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652a6c74bccdfc644a1d66d8d0a36178d30b3458d77b191505656a048aac5f04`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:50:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:50:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:50:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:50:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:50:49 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 22:51:25 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 22:51:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:51:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:51:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cea90c5fb2523ca5fe1b2af1141ae8f72e189e6f54a93b42540238fc0c8f56`  
		Last Modified: Thu, 05 Nov 2026 22:51:14 GMT  
		Size: 27.6 MB (27633673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260fe471fc1fd6acae2fc060306afbe137db5faad605d6fdf989504f5f368283`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 53.2 MB (53205190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9660e597e1d3167a909178a3951ae83438c344f0f620306d85aa0f2fce077a2a`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f101d00e2aabe8c126c28f7564c6be29f139f297a7d6d4a4a9b76ed0003db80`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6ea7f44f8cfe9e8c7e2440840089997499682b931682b0dc6e19dc0b2837ae0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2414192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3579498e833803a599f4981255b7ad446431888a58e8dd6f2c2a48dd57a29a5`

```dockerfile
```

-	Layers:
	-	`sha256:afbd742bd0b02843dd19d059d88c28081d2dfa4f67adcf5dce869f790dc8643c`  
		Last Modified: Thu, 05 Nov 2026 22:51:37 GMT  
		Size: 2.4 MB (2394006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7e9d2cb3d15ed34bac7abf8e488ef89828ec407b8ffb700c049f8a614c49d19`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:00e1fda1cacc629159c1ca02b57954d8b78efd068bf2c0d0d3de67d3629ec42c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119225899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06876cde130265dc90d5bc1b284d5441a1606804115659dba1da61780e42ed75`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:04:01 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:04:02 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:04:02 GMT
ENV container oci
# Thu, 05 Nov 2026 07:04:03 GMT
COPY dir:2bdd2747ab945d7a9d2ac3c44d42257c603213cbc7baa656ccc81a23ba6bf702 in /      
# Thu, 05 Nov 2026 07:04:03 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:04:03 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
COPY dir:0bf6d55dc3f3a1cecfd7536d39dffd0748b22d85e0ea4bba976d70298d6022a0 in /root/buildinfo/      
# Thu, 05 Nov 2026 07:04:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:03:31Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:03:31Z" "architecture"="aarch64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:03:31Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 23:29:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 23:29:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:29:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 23:29:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:29:36 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 23:29:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 23:29:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 23:29:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 23:29:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9f9a14895de9c30c7ee6336a5ea720dc2fe575b0809b678170d0b1484cbdcc6c`  
		Last Modified: Thu, 05 Nov 2026 08:00:30 GMT  
		Size: 38.8 MB (38764456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acfa7c883abc02f36fa0d433fa76b369030ab1249752b61ff377031874f4bf2b`  
		Last Modified: Thu, 05 Nov 2026 23:29:53 GMT  
		Size: 28.1 MB (28069545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4ef616a572b9494c0efeb7d0e9dfc584475e20d2c8c3f5e4ba28b0141c1195`  
		Last Modified: Thu, 05 Nov 2026 23:29:54 GMT  
		Size: 52.4 MB (52389300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45347f17cf8031a58783cb33c4ad59cb69e9e02993f4a44783ff1cbba5a67349`  
		Last Modified: Thu, 05 Nov 2026 23:29:52 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d39f896faf985799c02e1713af514570767eed151332ce2a7a9c4cb7d1024c`  
		Last Modified: Thu, 05 Nov 2026 23:29:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:127d80847d1c69a381983a1c8d686331b35868a6a5d2f396b588e3dfba879990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2411872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5d95857cede835ffc5ffdbc726e0805de5de9b710a4a7a76582be9dfaed0c6`

```dockerfile
```

-	Layers:
	-	`sha256:b2f6c4d2e37f3123cc014b14f9f44e3be320bfbfce4fb001d9a05c5c999215bf`  
		Last Modified: Thu, 05 Nov 2026 23:29:52 GMT  
		Size: 2.4 MB (2391582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2232199fa26aeb8fc4aa19bb7eeb240749079cd6863cc509066fd63817c2f099`  
		Last Modified: Thu, 05 Nov 2026 23:29:52 GMT  
		Size: 20.3 KB (20290 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:8d24719b8feeab64ec7e7be04bcd6d988c9d37fca88259d20793790beb6ff832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127837003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a857fee23c82591645641d99e8524c5245ea4c090b70a2f3711e43dd351afc88`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 00:25:28 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 02 Nov 2026 00:25:28 GMT
ENV container oci
# Mon, 02 Nov 2026 00:25:29 GMT
COPY dir:71d38a1ba2a232bf2a1539156a589171b69c7e13bdcef7890d1e066b1fc4a7ca in /      
# Mon, 02 Nov 2026 00:25:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 00:25:29 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 00:25:29 GMT
COPY dir:0f37da6522cb4da37ab5bb24702dcfbe681f0adba3328e248ab52a9853b76016 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 00:25:30 GMT
COPY dir:0f37da6522cb4da37ab5bb24702dcfbe681f0adba3328e248ab52a9853b76016 in /root/buildinfo/      
# Mon, 02 Nov 2026 00:25:30 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T00:25:00Z" "org.opencontainers.image.revision"="dc4aefa4aecb10996718adb6435f6491abaff715" "build-date"="2026-11-02T00:25:00Z" "architecture"="ppc64le" "vcs-ref"="dc4aefa4aecb10996718adb6435f6491abaff715" "vcs-type"="git" "release"="1793578971"org.opencontainers.image.created=2026-11-02T00:25:00Z,org.opencontainers.image.revision=dc4aefa4aecb10996718adb6435f6491abaff715
# Tue, 03 Nov 2026 01:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 01:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 01:21:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 01:21:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 01:21:36 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Tue, 03 Nov 2026 01:24:35 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Tue, 03 Nov 2026 01:24:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 01:24:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 01:24:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:aa3f596ae7698c21f199c443b9309fb1eafc211ad3ad4ff1a6c5c3ff4b3250fd`  
		Last Modified: Mon, 02 Nov 2026 06:14:43 GMT  
		Size: 45.1 MB (45065542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef25287ca90e37eaf01f14803d76ba77c63e423cab3bf67817cc9f7d5f9f28d`  
		Last Modified: Tue, 03 Nov 2026 01:22:14 GMT  
		Size: 30.1 MB (30056005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd0fa7095f2586e536ec1278c98f8cbb8ec3d20649c4f55ea68a3a051dc47cf`  
		Last Modified: Tue, 03 Nov 2026 01:25:04 GMT  
		Size: 52.7 MB (52712855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc1ac4121927570a90ed16ff2fdd805e216b95515d22b8199b7d5f2232629b6`  
		Last Modified: Tue, 03 Nov 2026 01:25:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f9a9a273997a3732e6ea87a5f0ed347f47bf8bd02d780f7ede4eebdd71c580b`  
		Last Modified: Tue, 03 Nov 2026 01:25:03 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0830d5f1ebf90f688f4e7e748ed8d17038c9be7766247616789e6ce2555b28a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2411237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396bb4d3d92cbd8d87c738b291f4c6cf17d6347dc0bb58997b15ec9ec5278d6c`

```dockerfile
```

-	Layers:
	-	`sha256:0781c41d9770496721261766b4ac881729fde9ed09208556f4ad4edd8bc4bb83`  
		Last Modified: Tue, 03 Nov 2026 01:25:03 GMT  
		Size: 2.4 MB (2391021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b794db7122c9d24a7ed135ae77249fe702d1d506dbf611121d7e78b8c35ee234`  
		Last Modified: Tue, 03 Nov 2026 01:25:03 GMT  
		Size: 20.2 KB (20216 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-ubi9-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:c24c1848c11fcfc635a4e1cdbd146c7ef5994aaa7f8e44e106683c36872bebb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115754895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1281a4136277117f56bbf240604e64f1e184c91722f289d81253922c74d2873`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:09:44 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:09:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:09:47 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:09:47 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:09:47 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:09:47 GMT
ENV container oci
# Thu, 05 Nov 2026 07:09:48 GMT
COPY dir:67c315a75735d4f9dc7f8aea99d867c0e8ef21877c13cdf1068a55af3eb0d639 in /      
# Thu, 05 Nov 2026 07:09:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:09:49 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:09:49 GMT
COPY dir:91859050cf5087661a7030a8896da8e2f77bbc5f378645990124c7dff2babb75 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:09:49 GMT
COPY dir:91859050cf5087661a7030a8896da8e2f77bbc5f378645990124c7dff2babb75 in /root/buildinfo/      
# Thu, 05 Nov 2026 07:09:50 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:08:29Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:08:29Z" "architecture"="s390x" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:08:29Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:56:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:56:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:56:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:56:58 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:56:58 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 22:58:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64le)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 22:58:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:58:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:58:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:fe31620ac2ebf80bdf35145b00c6c2f709f5d497cb68f8414e5f0e6dde5ccf17`  
		Last Modified: Thu, 05 Nov 2026 12:08:24 GMT  
		Size: 38.7 MB (38725243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:329322b1d20e327eb83ba7f415318db19a04c96f9cb3e40b679d4fbd306aabf8`  
		Last Modified: Thu, 05 Nov 2026 22:57:20 GMT  
		Size: 27.7 MB (27666854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9371a29f1060c6c50df06d9c54c2e0881750c0f89b8e32dda73c53ac28810c`  
		Last Modified: Thu, 05 Nov 2026 22:58:48 GMT  
		Size: 49.4 MB (49360201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50465d5cf639b18922616e412cedb5c6afd31e140a2f7dbf3346ae1d215d3a2`  
		Last Modified: Thu, 05 Nov 2026 22:58:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5deade5ff64acc6fe14f62f824e6787ac1676f5937ec42a5f60798fd42e0d3`  
		Last Modified: Thu, 05 Nov 2026 22:58:46 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4fba4d43d0677284461712484a1d7bc0fe5aecb21c4aa234471276a895322fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6d18751b312d8f4272e81e9aaafc1eea69739a252014b148a8648aa7016b9e`

```dockerfile
```

-	Layers:
	-	`sha256:eb25fea74bfe4329939d4d5ecc3f47673c2697a8a43de3f8b2dd0422ea8dd8c1`  
		Last Modified: Thu, 05 Nov 2026 22:58:46 GMT  
		Size: 2.4 MB (2382770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a27f56ebb91fb583a772f43d53f355ebf55469e581917e6968aa72a46ea307b`  
		Last Modified: Thu, 05 Nov 2026 22:58:46 GMT  
		Size: 20.2 KB (20186 bytes)  
		MIME: application/vnd.in-toto+json
