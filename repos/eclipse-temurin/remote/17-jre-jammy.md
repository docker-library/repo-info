## `eclipse-temurin:17-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:b3054a20e1a851574cdb1692dd0db5310c647e62214a2a7abecbec1b9e3ae8f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:17-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:30a8176ab22afd141ad9cd1948ad23bdb9fb7ddae666bad4a1d188d9f479d585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.4 MB (93392905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92dcf304e14bd6d156e68c5f8870ac66e0357fe57b42cfe8074e58bcfa24328b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:18:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:21 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:19:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a4f7eba73233d5ba1baafddf18465aa328e18aa90e8721ef04d67b84ea93491`  
		Last Modified: Sat, 17 Oct 2026 00:18:50 GMT  
		Size: 16.1 MB (16117811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117f5130def90c702e6020bcdd18169d0079869eef7b464ed77f67ffc5ff6a39`  
		Last Modified: Sat, 17 Oct 2026 00:19:15 GMT  
		Size: 47.5 MB (47519993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb6682d6eab61fcfcca9d5913838e56ce9d0f2c693c9aa606b84a5c244f08c8`  
		Last Modified: Sat, 17 Oct 2026 00:19:13 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aad88431ede92a4ff837026eb456183ae491e2df4384e14d5c23f64a8ae463b`  
		Last Modified: Sat, 17 Oct 2026 00:19:13 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e59e2d8499252e03e4dd6bbd5e36b747415fc968e53e27d7cb8abeea8fd78254
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3887626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad04cc884cd526ab3edb562f71b6252458df9a241b369d3e1d02dfc6943ec2e`

```dockerfile
```

-	Layers:
	-	`sha256:fc098b1d6b8b47c251b3b8a7cc246c387bee4b9aa8b395ddd52be48da3dcf122`  
		Last Modified: Sat, 17 Oct 2026 00:19:14 GMT  
		Size: 3.9 MB (3865075 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f13276c1252e2b687965c0f935eac802c2203b402928959ffbb4012e4a29dc19`  
		Last Modified: Sat, 17 Oct 2026 00:19:13 GMT  
		Size: 22.6 KB (22551 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-jammy` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:d2af3f120e4742e971e68afd27477afdd4feffecc6ebbeee1721e5ef4dc0d2f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87817378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d5501d4a27d04f4beda9f826f642fd0989d127bb9af7c1eaa7b1d939f3e9a0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:21 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:21 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:24 GMT
ADD file:50a860bb86a61a938205aa42540aa15297b2f6be7f485db52a6f525e3208ef3f in / 
# Fri, 02 Oct 2026 10:27:24 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:13:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:13:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:13:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:13:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:13:45 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:13:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:13:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:13:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9787843ba490cff9717a8f5c2f4e7feb6766cda214d74e674690b1d2f5c17e79`  
		Last Modified: Fri, 02 Oct 2026 11:08:39 GMT  
		Size: 26.9 MB (26856530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276205339394566a6ea6ac41e5287266f2061959e5d1f74f2d79a44d3acd7998`  
		Last Modified: Sat, 17 Oct 2026 00:14:03 GMT  
		Size: 15.9 MB (15855489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c77009eedd6599057877fd45d0243706ec9a48ebc2dfe8498458ec45426c15`  
		Last Modified: Sat, 17 Oct 2026 00:14:04 GMT  
		Size: 45.1 MB (45102735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d81bcebcc20544df86220ce8270c2b42b15dd42dc63afd8842a0962ce8f9c326`  
		Last Modified: Sat, 17 Oct 2026 00:14:02 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f428ffcd0f0ea1251fb802d8c50b1b4ea815742bff8e81338a022a6fac15dc7`  
		Last Modified: Sat, 17 Oct 2026 00:14:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c711e7e35f73f53ebde6499c5d4118d42e54deedc5071f292864065862212e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3890042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e262511c4a1271d18044b20490a3a3be62957d7b240c8aa01e503cc4c315587a`

```dockerfile
```

-	Layers:
	-	`sha256:1b9e21079197cf0e5d03378c3586470af60d36135afdd85ce8c7f975a214646a`  
		Last Modified: Sat, 17 Oct 2026 00:14:02 GMT  
		Size: 3.9 MB (3867399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c179a0c5dcfdd91d3d07aa4d108f0d212edd8f5d1ae12f23f3e6cc1a0176ce1`  
		Last Modified: Sat, 17 Oct 2026 00:14:02 GMT  
		Size: 22.6 KB (22643 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2b7abd9a571c7ffc981914a91139946bd856ee57d2912d5cb339731e6009db6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90744681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3144202e2ee0dd8e012e65c00df8fba71a0e71d0d8ee4d536c6ebe906656bdd2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:19:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:20 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:20 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:19:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399909ad21c8100ebbdb73189c08d7a80051067672c8882d48c4ea1e6b31e30f`  
		Last Modified: Sat, 17 Oct 2026 00:19:37 GMT  
		Size: 16.1 MB (16054840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdacadca59bc563c3602573e29898e943cb2e7ec8660f11bc230ad7026ffa75d`  
		Last Modified: Sat, 17 Oct 2026 00:19:38 GMT  
		Size: 47.0 MB (47002493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c7a7d9169817508ba35058417efd37011a45443cc97a7a0d6ac2e9c2b74d20`  
		Last Modified: Sat, 17 Oct 2026 00:19:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c40349b448a68c04cf01f4ecf1a2bef05b922f39c01cb0c9d257827f91d7c5a`  
		Last Modified: Sat, 17 Oct 2026 00:19:36 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6b4631a779b534a2a9469b64f608644c0a94d955f2c6d84734e1dd0823eb29e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3887394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b39b5b9936f915ff479d6e829c040a0f54067d85babd20d5d15d457ab75957`

```dockerfile
```

-	Layers:
	-	`sha256:21f4325ff963f62e222169c9cb641bae80c52cd80e54f694930cdc2c6faf7b8b`  
		Last Modified: Sat, 17 Oct 2026 00:19:36 GMT  
		Size: 3.9 MB (3864731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d01cb5ad4dd1b4b1cf48a9fd5fd3f09a69c797fa2bd804767a15169b42d328c7`  
		Last Modified: Sat, 17 Oct 2026 00:19:36 GMT  
		Size: 22.7 KB (22663 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:39e7c48053783ba9e2a7c897a021cd049d4b01b2eccf58b877642f4cda361f68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99731107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bc286c775d78a4e278934b20212ffcc34647263f61d74ad97010574ce551c8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:20:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:20:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:20:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:20:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:20:03 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:30:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:30:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:30:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:30:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e3558c4f6c1091f241bd9ad640816cc4633252705f4d740aff7b96ec07bfab`  
		Last Modified: Sat, 17 Oct 2026 00:20:54 GMT  
		Size: 17.6 MB (17596929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8ef8c62e569a66ba21c2b797c09cfd179a5ec67c75a1a2d44d56f619be2684`  
		Last Modified: Sat, 17 Oct 2026 00:31:30 GMT  
		Size: 47.4 MB (47427916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c65b1426e5364c08e367263a9bf788efbe51ab470f3e977de2b5914781444a`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d15514fa0bf8ece41d149ffcbdea70800199feea0b619f1d49495d468bc5030`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dd275843c589616d21970acfb7dfe6647bfeb901e26d06bb254411ea6705c170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3891737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d71dd4b7bd4ef2862038cf0be563d738fb586900bc5f906afe4cbbd18f18b0`

```dockerfile
```

-	Layers:
	-	`sha256:9dce786e1ef1f2459d8b2b142d1d91fb62e97b6993a41eb03726909cdeb08344`  
		Last Modified: Sat, 17 Oct 2026 00:31:29 GMT  
		Size: 3.9 MB (3869148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd0dd237bdf63a5c891c4d9f0ed5418600a6af4accaaf3c2631abd4c7b928094`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 22.6 KB (22589 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:6afd72edfbe30f964afce7fc57c39536b9c2ba3be7c74879cde6f56dbf933af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88856128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e68edda95b12fb56c89d8064e9872c1e612a75e98eabb4554830a4d178a705`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:47 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:47 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:47 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:49 GMT
ADD file:37d95fb30f79d123e31757f3914721d25b7e55b974a72d49a4ef18cbdd2c5044 in / 
# Fri, 02 Oct 2026 10:22:49 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:12:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:12:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:12:12 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:14:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:14:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:14:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:14:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:1cc3b16ef800fa37e67e957552c6fceece7de8c1f49769006e2e5ee5704c33e0`  
		Last Modified: Fri, 02 Oct 2026 11:09:00 GMT  
		Size: 28.2 MB (28222770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77951a94b7e207ea4a105f656d28778afd22d5d4bc9a9bdb7b6c18d0c2611706`  
		Last Modified: Sat, 17 Oct 2026 00:12:46 GMT  
		Size: 16.1 MB (16115873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e51444c8b22bc423803a4945873fcd3393db3f41ae0a88b0f4b437f219a5e69`  
		Last Modified: Sat, 17 Oct 2026 00:14:54 GMT  
		Size: 44.5 MB (44514861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b574b230e5914f46c81b35eca83f36a305ffbd4bcde56673200aae45cfc426f8`  
		Last Modified: Sat, 17 Oct 2026 00:14:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb063a1c4ad655c393209b11372cfc37cc7815936c8d5ea726d633946c6122e`  
		Last Modified: Sat, 17 Oct 2026 00:14:52 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:85a34800fe9f04ab50d8c865935199d7470c78370f735ed8cfd2cfcd2341999c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3889220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa32bb5e308cd4afd5bda8af5a031e4aac06aacecf0cf16cd0f9553bd679051`

```dockerfile
```

-	Layers:
	-	`sha256:19629aad619fbc3e79cf0ca376cd482668e7829d6b4300915075531946f1ca11`  
		Last Modified: Sat, 17 Oct 2026 00:14:53 GMT  
		Size: 3.9 MB (3866667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e655332a29c57da7dba3cf4097ee11af38b363c84f6584b4e67059f1c2790bb2`  
		Last Modified: Sat, 17 Oct 2026 00:14:52 GMT  
		Size: 22.6 KB (22553 bytes)  
		MIME: application/vnd.in-toto+json
