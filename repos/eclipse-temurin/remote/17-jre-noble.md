## `eclipse-temurin:17-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:bb8d601e02cec0e22f49b6f5d803dadc7db58ab692fa77909fb604d58187c7ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:17-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:af3852c35f8339ab7beba6f17b7fc15c4aca4d72979c5f09776c9ff74385058f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96662597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b65da7b2a66cb9cddacdb02dc26b21881a353fa2aa29a7f578ac9eb5df89893`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:16:48 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7cd1dbf8a5842bdc2ec8501846e481be1791777b37ee2797f064a34f84e0c8`  
		Last Modified: Fri, 02 Oct 2026 01:17:04 GMT  
		Size: 19.4 MB (19375560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6faef3e1394c0f4293fb3f5453a75712753474fd5d088c33cac4c2f7c9ce867b`  
		Last Modified: Fri, 02 Oct 2026 01:18:41 GMT  
		Size: 47.5 MB (47519992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5cba248f55d290d0f462eeb9ecdba60cd77b785bbef076ba945658182e9326d`  
		Last Modified: Fri, 02 Oct 2026 01:18:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb11638b54f26e2fbf495f39d027c93258563585fc72ae72b8e3512aa5bf1d7c`  
		Last Modified: Fri, 02 Oct 2026 01:18:39 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b7b3671a9312b3ffebc48637f33f2a3acf205de9d10a0537b94da38193d5e735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3293823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124b9ea8cb67b75ced80651ed8b03398cc7e79818fb279f71c08bbad83a7881e`

```dockerfile
```

-	Layers:
	-	`sha256:706bb12f8b55315d0d322efafeb15374ca501d7a1b91c421c153aa4f075f4d95`  
		Last Modified: Fri, 02 Oct 2026 01:18:39 GMT  
		Size: 3.3 MB (3270458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2c894429071b8ea470ceb24d79ddb4bb32e797191ba13615bd1334bbc04a1dd`  
		Last Modified: Fri, 02 Oct 2026 01:18:39 GMT  
		Size: 23.4 KB (23365 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:b5f93440c6a1c8d9eeb3b956211c0dfe99234bc2dc575e8605286ac594b668ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90080679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e481f05c9e45edbac470bd268bda06dfca6322d3c786fd3413741b5bdeca2a3f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:04 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:04 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:07 GMT
ADD file:6a6fc23d8622292f593d77713efad1a8007c6c40500c31d016c65acd4c58e812 in / 
# Fri, 18 Sep 2026 21:23:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:12:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:12:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:12:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:12:30 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:12:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:07637771fb245c4f2be7dab6c9c8a012b4b667b827aa566885f001a405a147d5`  
		Last Modified: Fri, 18 Sep 2026 22:30:04 GMT  
		Size: 26.9 MB (26895617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7039d0b153702a9c5aaaeefddfd1cd16c20d632edc9891db8ad3c883e54ac1`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 18.1 MB (18079589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d348a1254ddebec02785ca23b7305f53c99f20956442b05e7deac2d40d80a7`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 45.1 MB (45102849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b636e0852a9b41d2bd334d7ce45e9f425af43ff5cf80fc19794bbe1d9ecad41f`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed2035ba41ec2526f21172d2c5187262ecb72f5bec96c31ebfc705a81bae7d9`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ef45f6e91148b5e597f1a2d335baaf071a3bf86428c67b58bb5a6cf4dc9be9a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3296234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:442280cd38345e31a891e02ef1dd378977a6507aa3c0be9cdb9ca16b75f344e3`

```dockerfile
```

-	Layers:
	-	`sha256:81605f659ee7aa62c34e050a181c513d75f3116ea9e12781f978ec1bac210879`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 3.3 MB (3272779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54aea4707e9d0b83197774ed3686a47e923453c42d0d576407dccd180a20cd88`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 23.5 KB (23455 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:8db3be29199466e2a3b6c862643bd336240d179c9cf7bd846a92b86eaa47bb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95186674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7881b889d701b4dd1f1b59ca0a8be24db87e3b266b825c189bf5b52e51efec`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:41 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e719170bea597650f1176bbe6e7e3de1aa31243ed5e9c508aad9c51f26d81d`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 19.2 MB (19241374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c393116919f1cdcda52b99ef896a762bef53477066bad2f28bdde9d09828af`  
		Last Modified: Fri, 02 Oct 2026 01:18:58 GMT  
		Size: 47.0 MB (47002589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f7c76c27c5977342679f3e0cc04037c793dd2a57fc42802e7710d5f1abb8fd`  
		Last Modified: Fri, 02 Oct 2026 01:18:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe6620d7c431f04b7fd37769d558280d6feb1ca2a69e4df061244c49f80bf65`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:22a277dab6cfe223ea5b969ec7f53e37a132f9dc25fd783135516d79243d60cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72602aec6403ea21969cb5dcf3ed3301b3dafce663cea3fd1fe7550f379ea733`

```dockerfile
```

-	Layers:
	-	`sha256:164f8f7bde67a8bf6fac0d5c6de791782425824b7f35c098c910cf6444311bf9`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 3.3 MB (3270905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a296fded9ce3232b4e794942719970b8e7d639ab77e9a09b8c1f2a89287bfd5`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 23.5 KB (23475 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d109284552b5e78df022ef5cae02fafc1aa46afb6487ab7d08c84cfeeabab867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103289057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:728addc27dc4992ef7151d3a74ee35456aec862dbe5f79248c9f617346e67439`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:33:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:33:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:33:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:33:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:33:55 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 03:45:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:45:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:45:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:45:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d39e87af60228cb033b80692f6b5df7328d5d16695b3012f2de98fbd6154758`  
		Last Modified: Fri, 02 Oct 2026 03:34:30 GMT  
		Size: 21.5 MB (21481666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdafff63ea67d7c7d72abd31730b0a0d97ff0375bbbbbba74a705d27ca2e86e`  
		Last Modified: Fri, 02 Oct 2026 03:46:29 GMT  
		Size: 47.4 MB (47428256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73354443c53c54e1ede2a970ac4c3e44249a4eaae1e265d6cc98352f3c12964`  
		Last Modified: Fri, 02 Oct 2026 03:46:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d40d453e424477c37832ad7503cf977ae10541da08cfff20ea04d4d8c1225c`  
		Last Modified: Fri, 02 Oct 2026 03:46:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8c0089e05ca649c761ef1b65848f9ea7ba40fbaf947b69e43b993a954e48280f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3297915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac6f5a25d06c5738a7f31f5e1ee182e6e758972071a6bb517402a51f6b0a1ed`

```dockerfile
```

-	Layers:
	-	`sha256:1dea9fd9ed8c6b249247f0da62caea1f989f52f6fbd98b837bb0a41945d15c76`  
		Last Modified: Fri, 02 Oct 2026 03:46:28 GMT  
		Size: 3.3 MB (3274514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71fd6be606362a4e7e445895badfbe5560efd939cdd54370774338fec57a071d`  
		Last Modified: Fri, 02 Oct 2026 03:46:27 GMT  
		Size: 23.4 KB (23401 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:db60d60483c5ffec7d6c1403b30b28d785ee40ef77c0ea9d54b423b99919ca85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.0 MB (94952856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d718948f2c76df45fa530bfdba88d6bb0d06de34c753511c5fa1cb12ff3502d2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 13:13:20 GMT
ARG RELEASE
# Fri, 11 Sep 2026 13:13:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 13:13:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 13:14:28 GMT
ADD file:0347a49c8424872a16c193cce85674e478b1e7045067852c419ceffbe1e8faa0 in / 
# Fri, 11 Sep 2026 13:14:33 GMT
CMD ["/bin/bash"]
# Tue, 29 Sep 2026 00:35:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 29 Sep 2026 00:35:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Sep 2026 00:35:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 29 Sep 2026 00:35:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 00:35:28 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 29 Sep 2026 00:35:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 29 Sep 2026 00:35:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 29 Sep 2026 00:35:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 29 Sep 2026 00:35:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c97c7159abe150f67964f30098dbc7d3ebfb35daa130378ea771d7ad36243bc`  
		Last Modified: Tue, 29 Sep 2026 00:38:13 GMT  
		Size: 17.8 MB (17842492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d228abb89e2190e775e05e9c14763252da7fd5cd2dbfb9c1e0bd940f382774`  
		Last Modified: Tue, 29 Sep 2026 00:38:17 GMT  
		Size: 46.1 MB (46055137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c2fc8927c7add3e096c81a80084473e8f0d373d213f934dd25812ab66fdd8d6`  
		Last Modified: Tue, 29 Sep 2026 00:38:07 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db7725baf41b48964f8a4d2dfbe3cd04df0119acc1d91ac4830f62eca969042`  
		Last Modified: Tue, 29 Sep 2026 00:38:08 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5d5680068a70eee57773ef3bf85ba82a2a73eb1b4443e9a6ecf827d02cdf63b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3285921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33130df53998813da1646beac4341fcc24c00eda77a6645a32326639158da259`

```dockerfile
```

-	Layers:
	-	`sha256:b84dc7d08679087998adf9eced3e69f61f527512b10276adffc24f082e11bf6b`  
		Last Modified: Tue, 29 Sep 2026 00:38:09 GMT  
		Size: 3.3 MB (3262520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b99c8576c0360511bd689b62c26f86f6991497e2b6385ea9698f9dc6b60e2522`  
		Last Modified: Tue, 29 Sep 2026 00:38:08 GMT  
		Size: 23.4 KB (23401 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:17e4520bb7cef5e76f0c101ddf928123fc1bcbbcb0fcc24b0bab74b2287a7123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.1 MB (94118831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d105a5a19845bf40a3db7aa3ce5f54e377f2771e3aff9c644ced8979ca6e32`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:15:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:15:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:15:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:15:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:15:46 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:22:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:22:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:22:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:22:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba05513fa6a1c45a894153cbcc879c438e400f18c11daf5ab3cfdb310d81856`  
		Last Modified: Fri, 02 Oct 2026 01:17:00 GMT  
		Size: 19.7 MB (19655653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00adc3ad2e1cd770b170252c14600fd9d9585b126b91b02464c0af74a96710c3`  
		Last Modified: Fri, 02 Oct 2026 01:23:39 GMT  
		Size: 44.5 MB (44515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bca3172166594a4cad703785e975445ec18b54033a317ee02060f924514cbf5`  
		Last Modified: Fri, 02 Oct 2026 01:23:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb93b52f4a47369af0774dfc7004f23bd791687c5417277d6bb2c888b0d36ad`  
		Last Modified: Fri, 02 Oct 2026 01:23:36 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:03dbd99b6959ba3dd6fbe7d055fb3ce15a618e9aa831cf9de1129dce082a579b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3296023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d56d1a1c4b44e16f84a10a45353eb6911ca407bb96d8f0b231921a4a67bddd`

```dockerfile
```

-	Layers:
	-	`sha256:3bee2083eec5fb7bd262fab959820621dd0a7b142fc43c99247601baaa6b1b53`  
		Last Modified: Fri, 02 Oct 2026 01:23:37 GMT  
		Size: 3.3 MB (3272658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6b919decdc76e17f5616d802f3a2719886a0d32b5b036f07652e1969a379e01`  
		Last Modified: Fri, 02 Oct 2026 01:23:36 GMT  
		Size: 23.4 KB (23365 bytes)  
		MIME: application/vnd.in-toto+json
