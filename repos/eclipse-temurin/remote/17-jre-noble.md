## `eclipse-temurin:17-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:f7537fa73fa7c5bc4e51ea11a611c1d0d8bbf4e9f22de93b666072de98e752e2
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
$ docker pull eclipse-temurin@sha256:ea52a68439df9d5bddba0277db470f4811b330568077dc7fe244c386d368a66e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94253725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f363f53183aba214323b1b45a70a1f053fc24672bb76df24d87cf8e77cf9d843`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:37:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:27 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:37:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:37:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428d4e36ee14f326259c87d5f9dd39c565be37523ba2199b2125e5b7b52fd36b`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 17.0 MB (16966987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7324736cfd0c86945ac012a464542f34906a3b68b70f0c4c834ac927d68127e3`  
		Last Modified: Fri, 25 Sep 2026 22:37:42 GMT  
		Size: 47.5 MB (47520000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d274e8d0d3af41c75fce8c4031e42d088de0e07132458220202d83a2883e71d`  
		Last Modified: Fri, 25 Sep 2026 22:37:40 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ee33564d2e23f0a65bb41e24cbf54ae3929d64cc5d05cac0a8eb4f69809c46`  
		Last Modified: Fri, 25 Sep 2026 22:37:40 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a99e802537db1fbefa59ab1935d03b9c73b0ab3183d724e6d7e5e2eef55edb9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3293823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39c9069b9fdca502d3b92665ad920d5c3442d18aee93a7569f43ca17b9b90fe`

```dockerfile
```

-	Layers:
	-	`sha256:e58ffe9f2c8e1ba2badfe059ea3ddc53d2d5ea28e52118461a194ab8eee0a0aa`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 3.3 MB (3270458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcfb9bf9d7913988acee818aa426d516ae8242a66f9dda884730ff2d501f0663`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 23.4 KB (23365 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:84dd1d2544d0c51d7955944e7ac62e582cf45d32a01023d0e4b2dda844f2eef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88284277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e46c96dfec7af24189723863682f1b7dfafae9920afdb78d22374d4857518751`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:45:45 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:45:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:45:45 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:45:48 GMT
ADD file:683b4c146da2addbd0ae70d2240b8e3a57dd2f7582c952d416231fdd6496720f in / 
# Fri, 11 Sep 2026 11:45:48 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:33 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:33 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:35:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2feb6f03af922f39b7c9910d0c75c3debbf172653911daac33c24a6d0e0bb8f`  
		Last Modified: Fri, 25 Sep 2026 22:34:59 GMT  
		Size: 16.3 MB (16283839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fc5390229e7184bfaa9da46fa497016f6d1eae1906e3522467e06210c3499b`  
		Last Modified: Fri, 25 Sep 2026 22:35:24 GMT  
		Size: 45.1 MB (45102887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10082102a1d19ebc89707eebae616615e3ca44ae282e30a092cac5287025e383`  
		Last Modified: Fri, 25 Sep 2026 22:35:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44349c55bf6a5bdb35508f5620f91f1dfd8858f31ec2d1e5cb4731dca285a3fd`  
		Last Modified: Fri, 25 Sep 2026 22:35:23 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2bb21f05c790df450e14730c7527474f216e50072c22562cebe4cf20cef0e667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3296234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f074a071c7f6fafa7da6355c1b2c36de73d76bd976a5778c4bc0110b51221fe8`

```dockerfile
```

-	Layers:
	-	`sha256:24708c56094a1d39a5b3a0dfc6987fc171a89fb55f65a2705dfc746bc02694cc`  
		Last Modified: Fri, 25 Sep 2026 22:35:23 GMT  
		Size: 3.3 MB (3272779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b20ed2386d0dc354d9fba993f5486a75c999e786473b6b5f458ea64061125a80`  
		Last Modified: Fri, 25 Sep 2026 22:35:23 GMT  
		Size: 23.5 KB (23455 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:81287ecb479e1e4e93cf95abfa0aba034bc4465399324b646b753615abeffe2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92924300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a4edbbe8b8e09ec9d925e9843bdf99de2f147880852ea64dcf7001877f5258`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:36:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:36:21 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0393abc9fd01059adf87ea50b689e874afe721ee32c79e243c5a3874764981c7`  
		Last Modified: Fri, 25 Sep 2026 22:36:37 GMT  
		Size: 17.0 MB (16977487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0a409680d4612dc3aa879dd9d55ab19050feb1982a7edf875365fa594f0f54`  
		Last Modified: Fri, 25 Sep 2026 22:36:38 GMT  
		Size: 47.0 MB (47002612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c822c03f17157a52ed1dd192681d672f24032d4a3c4608e8b64af129d7ea1e95`  
		Last Modified: Fri, 25 Sep 2026 22:36:36 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebc1cfea865cf2ac2b3e11d6b5957c52861b06cd043b714cfeb9320dd5522c4`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:151111abf3335dea914ac1ec727e9a48b12640c63be47bd06f5908a14cfa27d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3294380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a3a428de8e439dd9a0b80125f64562e4f179d3e2e3cf8b15ff1a13443ac6e7`

```dockerfile
```

-	Layers:
	-	`sha256:7c58cdb5567936a0ecb2983239c05fdcdf965cdd0648bf13f822b1f03faa64a0`  
		Last Modified: Fri, 25 Sep 2026 22:36:37 GMT  
		Size: 3.3 MB (3270905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dba7bba788565ea882851fe36bf7369d377a54793363a61eabdf93a408d53add`  
		Last Modified: Fri, 25 Sep 2026 22:36:36 GMT  
		Size: 23.5 KB (23475 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6e286dc5f080fa766f11b1169ffad1e5d5c9e8b497cd9eeb491dee44586fa59a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100591588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226b4ca9a5918f50b2137a36c1bd5fa5276205a9c60d97da5bac4567d83e8ead`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:03 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:51:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:51:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:51:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:51:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0dc4ca29f5ca7e294a6a894d89e44c4f2de248709545d2a44d42686c9eb9365`  
		Last Modified: Fri, 25 Sep 2026 22:35:05 GMT  
		Size: 18.8 MB (18783708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270c7b1459bd649d18ec2b52657deca51d74ff950700c8cec8948693dba5c0c4`  
		Last Modified: Fri, 25 Sep 2026 22:51:41 GMT  
		Size: 47.4 MB (47428299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd8019a433b77bf840c748b389be15a2f866f9d4940cacc7c5280f620b1fdba`  
		Last Modified: Fri, 25 Sep 2026 22:51:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b80da982562227120c26c7c7346b2fe573a86dc6e64cfa0fe6f67dbf60e96af`  
		Last Modified: Fri, 25 Sep 2026 22:51:39 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:04bf33c8313ccc9309884be6a005780c4807d91fbe47d4f7974d837a8a231f85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3297915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc43acab36201dde96996f119b5c2b72c486eb9f561d7fd52ea7e57236114f61`

```dockerfile
```

-	Layers:
	-	`sha256:8541fa6651605ae651d7ecd49765225099159c8ef61d793c5a5ce3b6b397dbe2`  
		Last Modified: Fri, 25 Sep 2026 22:51:40 GMT  
		Size: 3.3 MB (3274514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23d13f3a0b27177529d6cd1ef3299602483c354df1729edf230238b88c05374f`  
		Last Modified: Fri, 25 Sep 2026 22:51:39 GMT  
		Size: 23.4 KB (23401 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:5b71821d0e74ce8b928594c947373706cdeb87889554114d59f230c2f695f203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94947884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9597ed77a3344a6a0c2dcfddc1771933dede19edf4c02355e3a28ef6912bc34b`
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
# Fri, 18 Sep 2026 18:41:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 18 Sep 2026 18:41:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 18:41:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 18 Sep 2026 18:41:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 18:41:31 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 18 Sep 2026 18:41:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='9c018e609c1f851018f053bb634e14473e8c0b6532aae400a105aa4d52c84d42';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 18 Sep 2026 18:41:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 18 Sep 2026 18:41:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 18 Sep 2026 18:41:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07f98a9ef630aae1969917b15f60fd08bebd6d36bfe3cb0ce0db2c1595e38e6`  
		Last Modified: Fri, 18 Sep 2026 18:44:20 GMT  
		Size: 17.8 MB (17837859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e304eebbbc6ae97179189d57867061f059537ad48103f75ec7f337f7f9bf818d`  
		Last Modified: Fri, 18 Sep 2026 18:44:25 GMT  
		Size: 46.1 MB (46054798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b45c6e4279743799d8deecd3842ca982923bd9bd1c32d66c158ad778f17c9c`  
		Last Modified: Fri, 18 Sep 2026 18:44:15 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3b7f2aca1cf7303fd336f74d299b3882b87a8b8778e44098b706b2a18987a9`  
		Last Modified: Fri, 18 Sep 2026 18:44:15 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a72a0a573622c19a5328815d1dfbab8fc3eebd817bbe57a7e2ef9785fc664d7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3285841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a946c3b83c951fb7a21d2e33491df89801c4da63786b18a553a264b1ea8e08b8`

```dockerfile
```

-	Layers:
	-	`sha256:6c9b0b7388f9dd99e38473c07ac363282ce88801b3bbf5d6b9eb2a98924c4efb`  
		Last Modified: Fri, 18 Sep 2026 18:44:16 GMT  
		Size: 3.3 MB (3262508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c1dec1c8e3b11350397ffb0208c2e8f60372ac37105ed4e9755408cbde88714`  
		Last Modified: Fri, 18 Sep 2026 18:44:15 GMT  
		Size: 23.3 KB (23333 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:565b30ed937cf2abd20ade6430a600ec8c275250a60e0abf22d2936022177b81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92020198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a25306672dd9e36c5fb725cf62526eadb2cf81225a8ffcf186d987c367d3542`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9940722e4aa6a0f59106fc47c1516a9e4898f63e8bc8012c418c802b18224b1c`  
		Last Modified: Fri, 25 Sep 2026 22:33:46 GMT  
		Size: 17.6 MB (17557112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fb232cae9cf64ed1280687cb14ef8bc2287fe37c079532d452a7b28185c0c1`  
		Last Modified: Fri, 25 Sep 2026 22:36:32 GMT  
		Size: 44.5 MB (44515072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b189bd55d35cd3bc8c8933b2cf7e85b92ac45781b69dc9d80fd0fbfffd4019`  
		Last Modified: Fri, 25 Sep 2026 22:36:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4cef15b2ef2932f9240cb8f19b4375e538387b93a0c34ec4a95ab08371f73e`  
		Last Modified: Fri, 25 Sep 2026 22:36:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:00252444b14238911177b35e466ca12b6168c0858d0f1b3ff39b5eb8a6bb571f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3296023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbc7e8b8f18f3d51a7cbacbe0d21a0ab05e50b4ce6bcefbb024ec802f505e3f`

```dockerfile
```

-	Layers:
	-	`sha256:722c82ffe72d3f9fd44590250dfe47235d50071871e86013b9f1a5549c73c77b`  
		Last Modified: Fri, 25 Sep 2026 22:36:31 GMT  
		Size: 3.3 MB (3272658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7f4beb8ccf8d5c3b9a74f8839b4783959fd3d1de0ac3ac44adaace5919ea307`  
		Last Modified: Fri, 25 Sep 2026 22:36:31 GMT  
		Size: 23.4 KB (23365 bytes)  
		MIME: application/vnd.in-toto+json
