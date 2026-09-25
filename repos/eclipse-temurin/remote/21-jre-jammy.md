## `eclipse-temurin:21-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:e9aaf73145bbd1f9f6ec7f6867dd75a44f34b1a6c32a813504bf4129be2d09d7
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

### `eclipse-temurin:21-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:14731f0ec76c841877c8858e1a29413d7acacda5c5ce567eaf6e5f19913b7cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (98964240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f60ac89e58910e103bf03ecb0ae65f2dafca99d1e612b7d75db5d23848c7432`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283c139709fe7bcd89a1cc7c302b901b0d9729aaa0536d1eaa8d46d48c8e9cd6`  
		Last Modified: Fri, 25 Sep 2026 22:37:46 GMT  
		Size: 16.1 MB (16114061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b841c180a91f75f5d01a2aed904d56f2c6a0808b2346236f853ab6a26841b07`  
		Last Modified: Fri, 25 Sep 2026 22:38:29 GMT  
		Size: 53.1 MB (53097305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63613abe73dc47abe044fc4ab923aeaf0ea86c58ced1fe5e23e632f9176a93ea`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce110be0146dbad245d038711c5d2bb77782715c20216ddd46bde4b6ebf07a22`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f453b9f2e0d9908f73db19d38378de54eb43a06779315aa2d609821c3eea10af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3889653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f4d9e45521eba7e492efd0205a2b095105bf99418e9febf3400184543f02e86`

```dockerfile
```

-	Layers:
	-	`sha256:bae4e911441dd79525e0bf0223a8ea70e62db307f7bfdaf769ac177d4b8e9532`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 3.9 MB (3867901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fdcfb06811b06b5b2e56c443e82df029144f9625fa6b2987bb40c5ed6494a7e`  
		Last Modified: Fri, 25 Sep 2026 22:38:27 GMT  
		Size: 21.8 KB (21752 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fd69a5dc9f703f6d530a52609cdcd9dc86bcc36713c4cb9d801c0baeeec9f47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (96007263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00df9f27a2e08e62fded28d4ad5d67de96d1af6152a7dc4451e69a805973a5b1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:35:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:12 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed38533225ab96284d0a7bda3e8b9e3b639358f247e1171c8730331834d0a85`  
		Last Modified: Fri, 25 Sep 2026 22:35:29 GMT  
		Size: 16.0 MB (16048264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabaa82ef032dc31156ff734a522a97ab0ba09c4773cb3374a5bb1e4c9d551a1`  
		Last Modified: Fri, 25 Sep 2026 22:35:30 GMT  
		Size: 52.3 MB (52273629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fd64a46cc5957d6a6565949ad86d420d365b0ff7947ce02eaa405af8f1cf01`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68382b26852af621b179e9c17bc9394838df450be8a15eb81512097d192f082`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5e4e49a6b377fa6c72b4164dab470451808f4b3de6e39236f5b7a7bb97d392ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3889420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d46d8a38bd734c9f7b59bdcfd50ec88262d338cba8a52e328464e475d181a98`

```dockerfile
```

-	Layers:
	-	`sha256:53f4110364e1de27b36a738b9f041b0d24072d6ac31f0a338a06a070bb4f869f`  
		Last Modified: Fri, 25 Sep 2026 22:35:29 GMT  
		Size: 3.9 MB (3867557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82589f8352c226feaffc140c779a4a8b7d94518e49b644dd2e1b3d0d4f483907`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 21.9 KB (21863 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:4ffcef000b3bfc9ddccf313ff254a8e3d551076993105a12d675066415c4e265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105401490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d552ae4e8d1c6cf703056869837eeea974c6389f50eb681a78c7ed3f16f0b6b1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:40:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:40:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:40:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:23 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:58:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:58:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:58:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:58:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06953810da290342e65fe66b92b4b60b2418772162a6703338733f254fafcb3`  
		Last Modified: Wed, 09 Sep 2026 01:42:21 GMT  
		Size: 17.6 MB (17582288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779e55ab6b49264629aa173ee953fa07e92a9368c7fbea220884d994d5615805`  
		Last Modified: Fri, 25 Sep 2026 22:59:20 GMT  
		Size: 53.1 MB (53113902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd758f0e5810ade3c36846d1d28ec4f9b9a2e866026274406743c0ff42600b6`  
		Last Modified: Fri, 25 Sep 2026 22:59:18 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf07cdfba2bcf7feab1ede5e2e4b87cc2d7219c0e88ce97a75c3d0cdf2a2897e`  
		Last Modified: Fri, 25 Sep 2026 22:59:18 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:aa565690a370980aca4aa1494e58e19e64f9c1f6adec35f73b8115eb0de4689c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3893763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68083e56bcf519c3e8109b1cd833f123139cd9c09f505f9f394a46d767aca85`

```dockerfile
```

-	Layers:
	-	`sha256:be741fc8ed9e378dabef4a4dadf40e849b0c3d03bcd246fe2f563233fe4d7452`  
		Last Modified: Fri, 25 Sep 2026 22:59:18 GMT  
		Size: 3.9 MB (3871974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd4bea4bb47fc6cf22f28261c70a858467582e158ab5f236cc444a4ebfd58829`  
		Last Modified: Fri, 25 Sep 2026 22:59:18 GMT  
		Size: 21.8 KB (21789 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:6188a5ddf9b6d679cc4e860c6d85f4732e4b5c0c3c7038a7532738acaac19eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93980293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69820735cc1d45c3b1c976b3d9d036f33c087b7a652eda9f3bec543a2884c337`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076e9b7028c66e0b5883b145582203f26a6897a49114075e582b35489581ba3c`  
		Last Modified: Fri, 25 Sep 2026 22:34:59 GMT  
		Size: 16.1 MB (16115608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167aa354fc3d604ad53cac1510786aca7887b3655d60e297f669840a8b3c7e32`  
		Last Modified: Fri, 25 Sep 2026 22:38:47 GMT  
		Size: 49.6 MB (49638030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f871a90eee6112df0f95141c4ecfc54c87ae4fea0603c8bf0c6beef3b4177f3`  
		Last Modified: Fri, 25 Sep 2026 22:38:46 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16033ad42be20a3cd8d916e37ddb2bb432bde5fa875a4ef375cf0229348180e1`  
		Last Modified: Fri, 25 Sep 2026 22:38:46 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9ada20efeaeca5e11f241744ca9a0c9e21977d6ef0676c4564a3f3503c1c8454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3891246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4fa1fa8501cf06721edd9bdae4db30883fafa45eef49cbf05ddb855b10b6b9`

```dockerfile
```

-	Layers:
	-	`sha256:47e03cdcd9fe076b52c24eba6798da656feaacb5207a0ab2d1e890d502278882`  
		Last Modified: Fri, 25 Sep 2026 22:38:46 GMT  
		Size: 3.9 MB (3869493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6292b1d8b416ca7eb5746ca1a2d42a8e340a64bee00fb1e3c4c9febeda04cd`  
		Last Modified: Fri, 25 Sep 2026 22:38:46 GMT  
		Size: 21.8 KB (21753 bytes)  
		MIME: application/vnd.in-toto+json
