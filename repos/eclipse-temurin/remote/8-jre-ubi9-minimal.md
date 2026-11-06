## `eclipse-temurin:8-jre-ubi9-minimal`

```console
$ docker pull eclipse-temurin@sha256:d855c0d5de25a30792ba29d14d74f5b99fdcb5a8582c340baedfe5e6fd927002
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
$ docker pull eclipse-temurin@sha256:2d86edaf6c6a83526b55e290a20ea18bf2140ded816bce8e9cada11b65d72a99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110621519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baed31fd3456cae41a591301c8e72104387d25467d6723c6977477f6d7aa5852`
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
# Thu, 05 Nov 2026 22:50:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:50:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:50:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:50:50 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:50:50 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 22:50:53 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 22:50:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:50:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:50:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe9c1b348edcaf58ed51f408f2c42c1cd12e7a588399edd83f222bb142074ed`  
		Last Modified: Thu, 05 Nov 2026 22:51:05 GMT  
		Size: 27.6 MB (27633680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b68c3cc7f2316157a987206646e11d2915a4c48efd1bb22d9a8a8aa806319f`  
		Last Modified: Thu, 05 Nov 2026 22:51:05 GMT  
		Size: 42.3 MB (42328468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc51149802ce5aacd74715619caccc025747c3cf3de73e8c3d391066e95ef32`  
		Last Modified: Thu, 05 Nov 2026 22:51:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52087b1e715f2debacd0601056703d399405f6bb34a232f1e7d41a49a3d1874`  
		Last Modified: Thu, 05 Nov 2026 22:51:03 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a06355a9cf4421944d2f0a4c72d0db66c3e89b0dc02729e45f6bfba666d9faa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2440963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00614fd2c18e2d2f5cfc703d8da26239e72328f3113c31de04c385039107e9e8`

```dockerfile
```

-	Layers:
	-	`sha256:d395935986005cc8d8d35fd267550d2a3ab8556b8ea59a01e8e6c1766d987b36`  
		Last Modified: Thu, 05 Nov 2026 22:51:03 GMT  
		Size: 2.4 MB (2421617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:206aecc121b34ffe208f82f1fcc194b4d9dc27502334faa93c79bb148b606ed3`  
		Last Modified: Thu, 05 Nov 2026 22:51:03 GMT  
		Size: 19.3 KB (19346 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c7fd61385fd0bdf78555b70921d56ac930f4c346d020c3b17b77fe6f236d7415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108129774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b509345b343d63ba70398865722a5d08228cd1b205d878ce0faeb070f13d83`
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
# Thu, 05 Nov 2026 23:27:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 23:27:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:27:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 23:27:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:27:18 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Thu, 05 Nov 2026 23:28:08 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 23:28:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 23:28:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 23:28:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9f9a14895de9c30c7ee6336a5ea720dc2fe575b0809b678170d0b1484cbdcc6c`  
		Last Modified: Thu, 05 Nov 2026 08:00:30 GMT  
		Size: 38.8 MB (38764456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b822d1e1c258264f919fc47b1d58fff8649ab11a3d8263fdc595b995f37b283`  
		Last Modified: Thu, 05 Nov 2026 23:27:37 GMT  
		Size: 28.1 MB (28069714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69e5ad732dad58e7214b516ba1b19ed10c07a63d548172b94792879b29c9974b`  
		Last Modified: Thu, 05 Nov 2026 23:28:19 GMT  
		Size: 41.3 MB (41293006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc34cd268e241ad6b319fe0a7bd0cb389040ea97044393a218eadc07f8d867e`  
		Last Modified: Thu, 05 Nov 2026 23:28:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3d5f14e42f699580ef926e9471aaa674a2725c12cfea7201ed9373d5550b51`  
		Last Modified: Thu, 05 Nov 2026 23:28:18 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:962bf01926b6cfc726bc995b8793acba50aa9b8a22657fa76cd3f517d98c6e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2439336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117f47e6f95678c21e3d160192560eec9070226122dc12abc1a77a8320767f27`

```dockerfile
```

-	Layers:
	-	`sha256:f7c24b14a33b58a1ec9e683f35abc29e5e82fcaf0b3ffe045b585e5f993c139c`  
		Last Modified: Thu, 05 Nov 2026 23:28:18 GMT  
		Size: 2.4 MB (2419885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84d9bd13321ebcc50385e7db53707cb5b6068e19a8228cbe19a3131a1a2a1ded`  
		Last Modified: Thu, 05 Nov 2026 23:28:18 GMT  
		Size: 19.5 KB (19451 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre-ubi9-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:50e262892b568cb857bc7b448949fccbbdf031a7436cb871da15ccdf83a9cbc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.8 MB (121801739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55ab74e9db310a6e1f3704f026c60cae36589f09aaeef5c34c56f1387cdf9e6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:03:45 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:03:45 GMT
ENV container oci
# Thu, 05 Nov 2026 07:03:46 GMT
COPY dir:b76ead96c70180f1f2d071e1355406876fcb36f06981e87bd2d05fe0df6b611e in /      
# Thu, 05 Nov 2026 07:03:46 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:03:46 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:03:47 GMT
COPY dir:aa53506b0400c2d2ba15b7c78ad8bd0f47b481c428a31ab31e656161c35d0cdc in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:03:47 GMT
COPY dir:aa53506b0400c2d2ba15b7c78ad8bd0f47b481c428a31ab31e656161c35d0cdc in /root/buildinfo/      
# Thu, 05 Nov 2026 07:03:47 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:03:23Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:03:23Z" "architecture"="ppc64le" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:03:23Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Fri, 06 Nov 2026 10:15:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 06 Nov 2026 10:15:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:15:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 06 Nov 2026 10:15:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 06 Nov 2026 10:15:49 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 06 Nov 2026 10:17:16 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        ppc64le)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        x86_64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 06 Nov 2026 10:17:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 06 Nov 2026 10:17:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 06 Nov 2026 10:17:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a48405a8d267513afa9b17e089ee20675eade474e12cff7bee721b49c02ac214`  
		Last Modified: Thu, 05 Nov 2026 12:16:19 GMT  
		Size: 45.1 MB (45065754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054535af9b36b813a3cb2757df013f984cc626cb45730997ecfb8e6e7f100ebf`  
		Last Modified: Fri, 06 Nov 2026 10:16:35 GMT  
		Size: 35.0 MB (34995781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32316e93b0324fdecfdf6503f7e67a62b3c702c810dcd652fd900fbe4a2677`  
		Last Modified: Fri, 06 Nov 2026 10:17:53 GMT  
		Size: 41.7 MB (41737605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58f387cbbbb7f5fce9d6aeb3a46e0a9828731de41e2f816e444d802f44b073d`  
		Last Modified: Fri, 06 Nov 2026 10:17:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b860848a5affaa3c1f3a91df3afca8701d2ac26fcb4f24b640c61b1a7db17500`  
		Last Modified: Fri, 06 Nov 2026 10:17:52 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-ubi9-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:31a8dc3c4a5e37b030a7e93b31e150debbd30d859facbf8c3e530cc1d9fff236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2439963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abeee020ce474ff6dc36ffeb886361d9586eecb5be58279d237557f7d5b79166`

```dockerfile
```

-	Layers:
	-	`sha256:67aaca85bc3d5a11e54c7725f67a1463f82deef60f1fe02b0a24cc42b216dd24`  
		Last Modified: Fri, 06 Nov 2026 10:17:52 GMT  
		Size: 2.4 MB (2420586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1674014b4d421285d8e9b658e41684573dab61086d834fc83e35a123871932a`  
		Last Modified: Fri, 06 Nov 2026 10:17:52 GMT  
		Size: 19.4 KB (19377 bytes)  
		MIME: application/vnd.in-toto+json
