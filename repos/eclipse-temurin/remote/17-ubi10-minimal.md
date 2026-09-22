## `eclipse-temurin:17-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:9a0bfcc020ab7f194e26c6b23a451ce4cd1a18ac9ce9901a6eb80bfb979942fc
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

### `eclipse-temurin:17-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:f2da37fd3296279b719abe966086ffc3b3b07395a23f080208531317759d2e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218614619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69b5be1064653d65a6cd9818fb44f9850cd824601cf3fc0480ffe00504c2f26`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:16:59 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:16:59 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:17:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:17:00 GMT
ENV container oci
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:69bd69d248b8c7058b85ed6a92d01815998798ce69195b9202e90e0cb3ccbbc2 in /      
# Tue, 22 Sep 2026 11:17:00 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:17:00 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:f77af0b759fc748fb90b4a7a7a507b46ebd8ed6b3427231a07df0a82562ab5b7 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:17:00 GMT
COPY dir:f77af0b759fc748fb90b4a7a7a507b46ebd8ed6b3427231a07df0a82562ab5b7 in /root/buildinfo/      
# Tue, 22 Sep 2026 11:17:01 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:16:40Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:16:40Z" "architecture"="x86_64" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:16:40Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Tue, 22 Sep 2026 18:48:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:48:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:48:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:48:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:48:25 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 22 Sep 2026 18:48:31 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 22 Sep 2026 18:48:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:48:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 22 Sep 2026 18:48:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:01d8a742a2822eedcad9d714a1e8d0f7174ee4f37d8b4fa28531e8c05efbbd7f`  
		Last Modified: Tue, 22 Sep 2026 12:25:46 GMT  
		Size: 34.9 MB (34931822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc08435a524899cce202b13fd258f2da7711be1a2dd6116eba04e5794febdf93`  
		Last Modified: Tue, 22 Sep 2026 18:48:49 GMT  
		Size: 37.9 MB (37851692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83529a71bdc9be6c24fdf7a9bf78039bdd078134ba7be31c1b43a55a3f61a8aa`  
		Last Modified: Tue, 22 Sep 2026 18:48:52 GMT  
		Size: 145.8 MB (145828504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12037ce3b3288b5daffbe04cb8e3a401951560b60e4187069545d0223cea47c`  
		Last Modified: Tue, 22 Sep 2026 18:48:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63374fe5027bd95a61b702911f99aa24774f5661efc0ca01e98d2ba555c7025a`  
		Last Modified: Tue, 22 Sep 2026 18:48:48 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:00b3c600ff4620ef5c287eca10c2d28f2be590f01b0e0432602a04f3f4672c8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bac31dd151e1846a963d31a25e632dbb4a3396bd4291a6725cd1663e62197f6`

```dockerfile
```

-	Layers:
	-	`sha256:a7e8fa6f7b3304a7d8fe1b7e84a689a5c1189094d242e428638d24daca51cc4f`  
		Last Modified: Tue, 22 Sep 2026 18:48:48 GMT  
		Size: 3.8 MB (3792504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:792c5a101bc65d5ed16473e84f4ac2bfcf6d679164ccf3149138ff84e769bc24`  
		Last Modified: Tue, 22 Sep 2026 18:48:48 GMT  
		Size: 21.3 KB (21316 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:a8553b1395b858b532e46619bef2d278fb0115ba853a220bc1d7bdfb57cb9fc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215579534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d011139cff7f9f49fbf43d27f12ef64442b055acfd791072be18c735f817758d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:20:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:20:02 GMT
ENV container oci
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:943b6e34b0263a091be729bb054a96ae31b9973a4e5bdbcadf3e7d646ebafb83 in /      
# Tue, 22 Sep 2026 11:20:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:20:03 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:a40e0488440102eb869bb73d71e58694adcc2a99dfb84f58a84982e79507f212 in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:20:03 GMT
COPY dir:a40e0488440102eb869bb73d71e58694adcc2a99dfb84f58a84982e79507f212 in /root/buildinfo/      
# Tue, 22 Sep 2026 11:20:03 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:19:41Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:19:41Z" "architecture"="aarch64" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:19:41Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Tue, 22 Sep 2026 18:45:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:45:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:45:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:45:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:45:18 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 22 Sep 2026 18:46:58 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 22 Sep 2026 18:46:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:46:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:46:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 22 Sep 2026 18:46:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6054095ef70d48af21070fc65f15c09b2a4dd4d0577e771afe99d5df88e632be`  
		Last Modified: Tue, 22 Sep 2026 12:26:19 GMT  
		Size: 33.1 MB (33137023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b663cd6e8b90bf0d1f948f16673ec55772883ade6aa1dd2d95a7226eb350a7`  
		Last Modified: Tue, 22 Sep 2026 18:45:41 GMT  
		Size: 37.8 MB (37788616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbd15c36ee2e0e1976aced60c565c9c32ae8575bfb6a2f9a44105a9fc5414c7`  
		Last Modified: Tue, 22 Sep 2026 18:47:19 GMT  
		Size: 144.7 MB (144651293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d61c2fecfd4ffe3d3cc25913cf733069b72ca453153863ef7a4fae9bbab27ce6`  
		Last Modified: Tue, 22 Sep 2026 18:47:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5871ee5ecb3c9929aff51a5c121e527f65298c4c9d1792f0cd87b8c35617e8dd`  
		Last Modified: Tue, 22 Sep 2026 18:47:16 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7046ec99700f6e183220fb4030a6a01d9d8cc80e26ca67026c27560aeb611661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b30f3d297463225115c1c53149446c046760b7ce56097938bf7e5036254a295`

```dockerfile
```

-	Layers:
	-	`sha256:0bf642902f3d838adc14e571968c1418dd7f64fb244e274a4c8fb0c13ddfd1be`  
		Last Modified: Tue, 22 Sep 2026 18:47:16 GMT  
		Size: 3.8 MB (3791930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:445d03e8e7610b552a09a983ed74aaade7b54154bb697e34826bbae4744f990d`  
		Last Modified: Tue, 22 Sep 2026 18:47:16 GMT  
		Size: 21.4 KB (21432 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:3130436ef3515a02cd8b675349c56e320999027174797f70f12a677e6a174c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224398205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6156d89013c45f47b23382cbde902725e24106fdb6c8c2c2df4905eaff16f23b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:23:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:23:29 GMT
ENV container oci
# Tue, 22 Sep 2026 11:23:31 GMT
COPY dir:bcbef1ea327c08d43fe5d07e4411cf28f68eaec007603bfc77c4ddae5b7e4a6a in /      
# Tue, 22 Sep 2026 11:23:31 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:23:31 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:23:32 GMT
COPY dir:d134a2581f6a9d019c9284db716254e62476cfecd0b6e0f96306f5f69ccfe9cb in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:23:32 GMT
COPY dir:d134a2581f6a9d019c9284db716254e62476cfecd0b6e0f96306f5f69ccfe9cb in /root/buildinfo/      
# Tue, 22 Sep 2026 11:23:33 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:23:13Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:23:13Z" "architecture"="ppc64le" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:23:13Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:44:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:44:24 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:44:24 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 22 Sep 2026 18:49:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 22 Sep 2026 18:49:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:49:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:49:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 22 Sep 2026 18:49:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:80132afeb18bcab70432eaae28eab8f86e66df015b20334e777c6f7f4f3c1be6`  
		Last Modified: Tue, 22 Sep 2026 12:27:02 GMT  
		Size: 39.1 MB (39091557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e08e157d48c9630b6a358c50f44ec99a975ff76685960247748c6dee396324`  
		Last Modified: Tue, 22 Sep 2026 18:45:13 GMT  
		Size: 39.6 MB (39612171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1718084f1907bba18c81e879fb1993dcae71d5888ee3d7547991e8d4a0dc9a45`  
		Last Modified: Tue, 22 Sep 2026 18:49:49 GMT  
		Size: 145.7 MB (145691876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaef814494354b79f71d24c7a4c7c4ab1ccfe2b962126bb85c96cc4f3d0eee79`  
		Last Modified: Tue, 22 Sep 2026 18:49:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf3ee4fcd85fd074001b28aacb604a59241fbd0d7da3b56699c4cd9d3586300`  
		Last Modified: Tue, 22 Sep 2026 18:49:45 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:36c12d8969fbb940389c33b4f79cff1a772de3b73db8e89eeb92f86b06a2802e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e12f4ec047d2629ef4302b92994f088ee54b680c7a5ea1d3e89032218ed057fa`

```dockerfile
```

-	Layers:
	-	`sha256:0805c6816b1811672e84b4548312188c8dc991e14a550d743f3769f901dc2342`  
		Last Modified: Tue, 22 Sep 2026 18:49:45 GMT  
		Size: 3.8 MB (3779336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cba9a7e95a5ca04bed588891e3d76cf6d3653b3daccb43d07e15098d85ff06e`  
		Last Modified: Tue, 22 Sep 2026 18:49:45 GMT  
		Size: 21.4 KB (21352 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:2d31f314c501ab5e672d2493b5d5bd20bb09b2bca44b777490a664cc6177ab2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208910229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8749f6114f06ee02b887a5affe2c102a03aaab6beb77fa841068f731e097f7ff`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.openshift.expose-services=""
# Tue, 22 Sep 2026 11:42:56 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 22 Sep 2026 11:42:56 GMT
ENV container oci
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:c3af120dfb67976e1c90008bf85e7ba5f67a6339222d18645cc7ddd92789604f in /      
# Tue, 22 Sep 2026 11:42:57 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 22 Sep 2026 11:42:57 GMT
CMD ["/bin/bash"]
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:ab4184071b23b635b2a64ccf95077081297fe83f98609e1ff860f82be9cceb7a in /usr/share/buildinfo/      
# Tue, 22 Sep 2026 11:42:57 GMT
COPY dir:ab4184071b23b635b2a64ccf95077081297fe83f98609e1ff860f82be9cceb7a in /root/buildinfo/      
# Tue, 22 Sep 2026 11:42:57 GMT
LABEL "org.opencontainers.image.created"="2026-09-22T11:41:22Z" "org.opencontainers.image.revision"="496f022c586de3cdc994d6097f91f0776122c30e" "build-date"="2026-09-22T11:41:22Z" "architecture"="s390x" "vcs-ref"="496f022c586de3cdc994d6097f91f0776122c30e" "vcs-type"="git" "release"="1790075626"org.opencontainers.image.created=2026-09-22T11:41:22Z,org.opencontainers.image.revision=496f022c586de3cdc994d6097f91f0776122c30e
# Tue, 22 Sep 2026 18:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 22 Sep 2026 18:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Sep 2026 18:46:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 22 Sep 2026 18:46:00 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 22 Sep 2026 18:46:00 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Tue, 22 Sep 2026 18:47:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d143936f473a4cb24e3b0e247d6d0775769d55ec9775c339540e753059a8d77a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64le)          ESUM='a14127c5577dc12e058459549e5388fd47ebd1b3d8441fbd23c4d931bdcebee9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='d5bbce66faa1482adb6ddcabc51d6c14b7c35cb11174e657d84ecb2177a4f6e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        x86_64)          ESUM='be7668bc030d578b83d6d5ef9221d6d6729bbbca8cf94a7d52e16ac68b5a5a35';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 22 Sep 2026 18:47:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 22 Sep 2026 18:47:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:47:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 22 Sep 2026 18:47:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f2f7507714016123f6a629892c99b0956acac81f1de397395626f22acd3f6b12`  
		Last Modified: Tue, 22 Sep 2026 12:26:46 GMT  
		Size: 34.8 MB (34805444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4cf9c68425e8f1ccd84b1c2c4887b35816ea4e8f7abc45408338e47a8491f5`  
		Last Modified: Tue, 22 Sep 2026 18:47:00 GMT  
		Size: 38.2 MB (38226103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4abb0adb5f6341d484532a0c69e2be68a37697fc014c19c8e8c2ed9fea6d4b6`  
		Last Modified: Tue, 22 Sep 2026 18:48:24 GMT  
		Size: 135.9 MB (135876080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b791f54ca890c675d472c70aba1f99e2c66173423eb2e21e0e270df6fd5dfd8f`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6ce7523c0f7c3ef1fad24aec3122a3438248a383fca6d81bcabc4262e70037`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8226f24bc67de077d30c7770e5f04526aeddb9b527c3741b3fc92e5d211cd9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3799409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea8da13dba1bbe19ee2daa9a99d51c93edc2769365ee4d29554003b67a1f9ec2`

```dockerfile
```

-	Layers:
	-	`sha256:ccba315ea8eb7b1ce8d95d7a3482970076ea5efa27efd8396d5ac6863d6b5e6f`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 3.8 MB (3778094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ef0d479ce868a41cef74825d254c402cabe65167ffd3e70907fa0ac2e8b7ef5`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 21.3 KB (21315 bytes)  
		MIME: application/vnd.in-toto+json
