## `eclipse-temurin:27-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:6042f57754671f358c73193e8152cff6fa62e28ee2b39cc2deea6eefe1c871d0
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

### `eclipse-temurin:27-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:0136a19f3dda1299b3882ebc005418dc443cc32a799cb6678cd6038e48156b1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157342294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a383b08ebd910c8464dfd34fd0356bb2cb8208d9b4efc91fd37407b7d8711437`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:30:29 GMT
ENV container oci
# Wed, 04 Nov 2026 23:30:30 GMT
COPY dir:4d560116149d68c45acaa63b56ff293dcae47fabcda8ad6571764b0825e47e6e in /      
# Wed, 04 Nov 2026 23:30:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:30:30 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:30:31 GMT
COPY dir:bbba34ab9bdf461e4067b9dfcb1aad81c9c3962e23b001e64947a0a66c8f0a05 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:30:31 GMT
COPY dir:bbba34ab9bdf461e4067b9dfcb1aad81c9c3962e23b001e64947a0a66c8f0a05 in /root/buildinfo/      
# Wed, 04 Nov 2026 23:30:31 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:30:06Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:30:06Z" "architecture"="x86_64" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:30:06Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:35:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:35:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:35:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:35:32 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:35:32 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 22:38:55 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:38:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:38:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:38:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:38:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b678bad408ae33518fc2717ea9f3a0b3756774b7413325a1b7450af23c75bef9`  
		Last Modified: Wed, 11 Nov 2026 05:41:47 GMT  
		Size: 35.0 MB (34986613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9ecb2e0780d99ae3790c4fe02af12511d006255d99ccd586e2b4944f17e066`  
		Last Modified: Wed, 11 Nov 2026 22:35:49 GMT  
		Size: 28.7 MB (28704525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be99d23c355f85895e5abdf9fe8004cd86054280c8a20a3daf6dae15e878797`  
		Last Modified: Wed, 11 Nov 2026 22:39:15 GMT  
		Size: 93.6 MB (93648557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5531c125392e4039d90c4fee159fad82d71b229d743c15bfd763ab6f5cd6732`  
		Last Modified: Wed, 11 Nov 2026 22:39:12 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f75de187f59388cdfd4932d5ae983e387101c0c579f84da59d741ba9f22c54`  
		Last Modified: Wed, 11 Nov 2026 22:39:12 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:38ec8af74f997f9f6090410c7a6d3c04eddbe924a633adc8b5a88bd75c4b23d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3020419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90315803202b01d4d1d3c27e474980bd9a083cfcd5a17d2add89229517652549`

```dockerfile
```

-	Layers:
	-	`sha256:8205eafeaf0adf93f4a462a54a85b7965aa06b043b74aa73ef46bd93a51437f4`  
		Last Modified: Wed, 11 Nov 2026 22:39:13 GMT  
		Size: 3.0 MB (2999058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0facf302e18ec89b8058bc4a289089c26904bdddf400daaf2ceb44016185f8e6`  
		Last Modified: Wed, 11 Nov 2026 22:39:12 GMT  
		Size: 21.4 KB (21361 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2431bb4fcf143d3d707e05de4803554d002e74f44d7d96cf12811bf3b2e41e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153834527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ca8739bd3f2a209a135a139770f80e212e8899accac879fe786014f783d4d8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 23:32:59 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:33:00 GMT
ENV container oci
# Wed, 04 Nov 2026 23:33:01 GMT
COPY dir:00dfc6e48ac5d871b75ee77968140e118f5bfdd254e76e400fe5bc8327903cc7 in /      
# Wed, 04 Nov 2026 23:33:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:33:02 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:33:02 GMT
COPY dir:09d1c8b8d9e999b3fc5ed6d1285e597b23e8ff69aefeac9bd5c5c8826b05d8df in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:33:03 GMT
COPY dir:09d1c8b8d9e999b3fc5ed6d1285e597b23e8ff69aefeac9bd5c5c8826b05d8df in /root/buildinfo/      
# Wed, 04 Nov 2026 23:33:03 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:32:32Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:32:32Z" "architecture"="aarch64" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:32:32Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:06:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:06:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:06:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:06:25 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:06:25 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 22:08:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:08:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:08:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:08:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:08:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:be0565b917b07cbdde393c02afeb603fae99c9ecaaabb5caf02a1f90e2f13b13`  
		Last Modified: Wed, 11 Nov 2026 06:31:36 GMT  
		Size: 33.0 MB (33046604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:316d476297148a122b096aba046b29bc50fdd97c855cbba5aa0d9118f703f7c2`  
		Last Modified: Wed, 11 Nov 2026 22:06:44 GMT  
		Size: 28.1 MB (28124346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac28e09bf6d431d0bd2604d4a668406ca4a0b1882578c448152addd181ffd610`  
		Last Modified: Wed, 11 Nov 2026 22:08:48 GMT  
		Size: 92.7 MB (92660975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b5c13c83df5391656611c29b97faaa3180cbf8c219b00a05bdd0a4fd7529d8`  
		Last Modified: Wed, 11 Nov 2026 22:08:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4d1dfe6ab8b15a7d4774bbe2f417864cc0ca16432707de00ab2e049d0f2c8b`  
		Last Modified: Wed, 11 Nov 2026 22:08:46 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:46009d18edb07c2f600e001bba6254c8057277990933e1b4bcfa3f3ad392b996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3019958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c451c42d0a50d2dfdf790339ab43747e53dccc1efb183486fb7e0dc0b469dafb`

```dockerfile
```

-	Layers:
	-	`sha256:9d4bd92c90059fce5d6d12a749edb4ef15835a90165d82d78da2fa0f1214898f`  
		Last Modified: Wed, 11 Nov 2026 22:08:46 GMT  
		Size: 3.0 MB (2998481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fae68e0e7561f0447609d610abd01441927a105326aacdbcd23f470c9fdbd949`  
		Last Modified: Wed, 11 Nov 2026 22:08:46 GMT  
		Size: 21.5 KB (21477 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:b66aa8114d8f113c5cb7d46360c7c3b6f2dade5b1e4cb861bf9e50a4fedba0c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.7 MB (170669705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b928a3c96918823b87210e2935f56b06b98b113b1b7f5037f706b53c198531d0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 12:29:05 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 09 Nov 2026 12:29:05 GMT
ENV container oci
# Mon, 09 Nov 2026 12:29:06 GMT
COPY dir:0142191d7882bfcd1a642f157feb9fe0f606d143d9c1d9a77ef434e357ac4cf5 in /      
# Mon, 09 Nov 2026 12:29:06 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 12:29:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 12:29:06 GMT
COPY dir:eb3e47531baf4fb6578dff0b54a6c80c07b067beb496e68f478fd566ca4500c9 in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 12:29:07 GMT
COPY dir:eb3e47531baf4fb6578dff0b54a6c80c07b067beb496e68f478fd566ca4500c9 in /root/buildinfo/      
# Mon, 09 Nov 2026 12:29:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T12:28:37Z" "org.opencontainers.image.revision"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "build-date"="2026-11-09T12:28:37Z" "architecture"="ppc64le" "vcs-ref"="88e92567961fbb6491348d4f2102cb1ef2f479f2" "vcs-type"="git" "release"="1794227009"org.opencontainers.image.created=2026-11-09T12:28:37Z,org.opencontainers.image.revision=88e92567961fbb6491348d4f2102cb1ef2f479f2
# Tue, 10 Nov 2026 23:52:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 23:52:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 23:52:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 10 Nov 2026 23:52:23 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 10 Nov 2026 23:52:23 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 00:03:31 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 00:03:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 00:03:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 00:03:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 00:03:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed28db74a3ef4dc59de6b526427c8c3a556936eb057f0923cc4be84bca6817bb`  
		Last Modified: Mon, 09 Nov 2026 18:22:05 GMT  
		Size: 39.1 MB (39069438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4082f8f249a65d1ca6e2dff783e599cebda5fb8051de428b448ce5c2cf783a1b`  
		Last Modified: Tue, 10 Nov 2026 23:53:10 GMT  
		Size: 39.7 MB (39671657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e2f27307c663fe4b4c6bd1a4772c5f5b96b5a856b39b295775c1d78e64cf80`  
		Last Modified: Wed, 11 Nov 2026 00:04:16 GMT  
		Size: 91.9 MB (91926008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf713bef10a00b6a8be5f2ba02150e35eeacd7581853419b9513bf357fefecf`  
		Last Modified: Wed, 11 Nov 2026 00:04:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b06b63c9c322cac1db432f2575c18394894986e28e4a22ea062a79c20aa8be`  
		Last Modified: Wed, 11 Nov 2026 00:04:13 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:25543e1e1e87af0570508a0206d2e7fec395b575454402b6c6bcb381d8c31c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3728015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03be68ff96cbc20f7bb089c72239cc92c0b1b43764c36137249025edb5f67ca8`

```dockerfile
```

-	Layers:
	-	`sha256:27c3f9297aa85a153f8b2d57b3da65d58cf4f8b0121f16cb2f5efe9be5d9f2f0`  
		Last Modified: Wed, 11 Nov 2026 00:04:13 GMT  
		Size: 3.7 MB (3706618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1863a7ae92582eb5cbf10c4596df45837405e44e2a2987a5221d3cb9fed7f7e`  
		Last Modified: Wed, 11 Nov 2026 00:04:13 GMT  
		Size: 21.4 KB (21397 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:26bbf377b52b95cd97467935461ffb6bae0c47672fa1d62b07460aaba82b5968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153197766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41c3b20f662096f4b438427013478853bfef58cccb7bf57fe9b12a9bc9cfffb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:49:59 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:50:00 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:50:00 GMT
ENV container oci
# Wed, 04 Nov 2026 23:50:01 GMT
COPY dir:41abef77eb7d97eab361d6702f401bd5cabc610a431fcfa74f91581ed0526b5d in /      
# Wed, 04 Nov 2026 23:50:01 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:50:01 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:50:02 GMT
COPY dir:d343be6a52b8557eb861538e14970a879c5cc4665db0ebe3128e0898b89043c6 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:50:02 GMT
COPY dir:d343be6a52b8557eb861538e14970a879c5cc4665db0ebe3128e0898b89043c6 in /root/buildinfo/      
# Wed, 04 Nov 2026 23:50:02 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:48:44Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:48:44Z" "architecture"="s390x" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:48:44Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:06:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 22:06:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:06:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 22:06:03 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:06:03 GMT
ENV JAVA_VERSION=jdk-27.0.1.0
# Wed, 11 Nov 2026 22:10:03 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='5ddacf925244a00b60cac828b61ff2f67a68cd32b8dfe5cee1405e333b4589e5';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_aarch64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        ppc64le)          ESUM='c0fd2832050eb3320334c8ee0d620ead55651059fd29d41a185d92a459e43fc2';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_ppc64le_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        s390x)          ESUM='6c4e1f13490f1efb38b5f52667f05c433f7c94ae59c7e307a193e94b7b597e26';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_s390x_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        x86_64)          ESUM='30cb129f6cf299c852cec0feca9ea2a596d2ee9f26d8605d3a253951f6c8b20f';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27.0.1.0.2%2B1/OpenJDK27U-jdk_x64_linux_hotspot_27.0.1.0.2_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 11 Nov 2026 22:10:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 22:10:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 22:10:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 22:10:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:64602be39c30ba4b6fc71c0d4cb6a6f38368d784d4735696f044d24b7c2453f8`  
		Last Modified: Wed, 11 Nov 2026 06:31:41 GMT  
		Size: 34.8 MB (34825852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb536e47aad736d85f01132eb667999c9ae3f27a8cd1c9d240907381c266408b`  
		Last Modified: Wed, 11 Nov 2026 22:06:34 GMT  
		Size: 28.3 MB (28292484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16327b6e0b647a00679305770590c4fd462412ace817ac8f1262a7ef67952ba1`  
		Last Modified: Wed, 11 Nov 2026 22:10:51 GMT  
		Size: 90.1 MB (90076828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a86c442b051f25a5028037885d2c639c624e5c46ef81ff98a2ebe6bfe1699a9`  
		Last Modified: Wed, 11 Nov 2026 22:10:47 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7f8b24383a5ab4f8e04057178ec835f5c0437c4accd5df6474dd2731e2d3bb`  
		Last Modified: Wed, 11 Nov 2026 22:10:47 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e6fed6ead2d004ef6f00c7d1a907e6888d54241280def6cb0ca4565008f4a6c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2996257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373c5d0cc30a01b19af14e04dd0d1c75dbfcc6ab0e4e9ddea6f5a9c631cb8142`

```dockerfile
```

-	Layers:
	-	`sha256:8650b920aed63d68491253f9659cc66d82fcfdda07d9cd8c24ba0dd845fc4eae`  
		Last Modified: Wed, 11 Nov 2026 22:10:48 GMT  
		Size: 3.0 MB (2974897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b66688ba7089c8fe3b5134ca4308686562e53b76c3c3512ead5a38934d3ba053`  
		Last Modified: Wed, 11 Nov 2026 22:10:47 GMT  
		Size: 21.4 KB (21360 bytes)  
		MIME: application/vnd.in-toto+json
