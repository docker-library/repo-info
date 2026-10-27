## `eclipse-temurin:21-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:bf0eeeae7fc3a43580c6cdc755b343529d47f6e3c445f712c40d89fbf4a0c883
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
$ docker pull eclipse-temurin@sha256:8ed277f7e3f513b3f7fe9be8e22bbd2a5f9ccd9a8f87dcfa49fbbb2c6a82690f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (98968150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe08f592c073c6c70c4e4869ad03a32605519c21349f4f9f4b060b68e980fe1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:11:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:11:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:11:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:11:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:11:14 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:13:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f262eb0d42c498d032f728e087e799e95798a78931fddbc98b6b69d668349d`  
		Last Modified: Mon, 26 Oct 2026 23:11:29 GMT  
		Size: 16.1 MB (16115733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3bb02c49f401a8ddf62a7ae37df8b0514000ae75277a0dc0bdb63621b65f60`  
		Last Modified: Mon, 26 Oct 2026 23:13:16 GMT  
		Size: 53.1 MB (53097304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc1f497653d53af829e46e91dcaf6c29c6f7948e62f269f702d6cd3bdcff3420`  
		Last Modified: Mon, 26 Oct 2026 23:13:15 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7feed84bdb0ba0f09af1bb44b94d20d3baa0269870533da51898bd7d0233c6f5`  
		Last Modified: Mon, 26 Oct 2026 23:13:15 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5c2ae6fccdb49668aff21ce27d34f0df89f32ff7b9b0cdaee71d092c6d6b9655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3887444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ede46630e3272335d8e52e98939883bdc93ed5a697e761493c976d14fb2676`

```dockerfile
```

-	Layers:
	-	`sha256:ca8815752c42ccc35f59f53908ecdfa6571bcb41d0dbef6385092e6b0399b5c7`  
		Last Modified: Mon, 26 Oct 2026 23:13:15 GMT  
		Size: 3.9 MB (3865691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af5db31127fc11eaa9d6af24783be903c03d1335be8635aa3001df30f8869b2f`  
		Last Modified: Mon, 26 Oct 2026 23:13:15 GMT  
		Size: 21.8 KB (21753 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e21f631566288e148c6ddf05489cc27729a8a82788556321b85072e4b84d6c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (96011167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:867efa2b5a49b97a5f2ee0eecf1588366b064c0f29ee41a9faa132348f4a1b39`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:49 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:17:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:17:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:17:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:17:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b60a6cf1b6029d9c2c0195fe2a7ad306ab1e5da04bd0a79db09b1d7ffdbceb5`  
		Last Modified: Mon, 26 Oct 2026 23:18:06 GMT  
		Size: 16.1 MB (16050241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c0e0cd11b49578a9a279ee7215b73c8c442898b2851ee7944dc55ede043cf1`  
		Last Modified: Mon, 26 Oct 2026 23:18:07 GMT  
		Size: 52.3 MB (52273698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6604c5861235a116fa1bd382ba50b39481090e4757fab8a5d89f14030b335a`  
		Last Modified: Mon, 26 Oct 2026 23:18:05 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f73408ff81cdac5af02103a741dcb5182bdd46f39af270d9f1772f13690df35`  
		Last Modified: Mon, 26 Oct 2026 23:18:05 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ad8c5bfa5474209f5ee45d6cb6123d8f6507faf98f4e34fe2ad3004f1154c161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3887209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c196a23d4bcaa0bfda3601d1041a41df8216cd13ba7ddc05711ce26e2c70b36b`

```dockerfile
```

-	Layers:
	-	`sha256:1cf76841c26ee0293edb261ef63c2ae826cc1b8d3b4666d5082341d2fd9278a3`  
		Last Modified: Mon, 26 Oct 2026 23:18:06 GMT  
		Size: 3.9 MB (3865347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46825f99e4869adc8ca2f64c648c047902eeadd84b21acfaf8f90e20892936d5`  
		Last Modified: Mon, 26 Oct 2026 23:18:05 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:e431cb3a3d841e8b598d96f4e3bb34d5225a3ef498232f7c22484f89fcb1d201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.4 MB (105417165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030a7b1b474c6704d24563f31e58a6cfc5e5a9b03734cb95f61892d1ae79d096`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:34:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:34:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:34:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:34:45 GMT
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
	-	`sha256:c6ab06044cb17e2f5205c90219b71754ee6f8af2a2cdd07d843b7206f47f13b3`  
		Last Modified: Sat, 17 Oct 2026 00:35:41 GMT  
		Size: 53.1 MB (53113977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd433ad9a3a3a81d5f115c6d3bf8e50e413677f8d6c536fb7480a9b3ff08b80`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68548e9e3c2ee2399ca4054b3bbb51e26ecf344ae74ae66565baceee86fd326d`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:446792e84044d38120b1d5c5bff00deb421430ee28f37ff48df34dd646e50904
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3892185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd57ec10afcc2d578930553a0c3fc3027931cfa2893a891e0df4e35c77f3947`

```dockerfile
```

-	Layers:
	-	`sha256:968adcba77f08425ed04d1f19dcccf8cabedb983d289e4b579cefb6c79e3e49c`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 3.9 MB (3870396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbb734b188f8596c25e67f0962b9959d14c3b96d30afff656af1b2ea0fe4081b`  
		Last Modified: Sat, 17 Oct 2026 00:35:39 GMT  
		Size: 21.8 KB (21789 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-jre-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:78001a86705e2d6a391c660a302a4cfcbbb01e267126aeaf51a0ca2a047e0f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93977326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9393d6792cb68f51021004f1e9c6a099e3758c5f0d3a8bd6047daf7ea913d35`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:36:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:36:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:36:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:36:39 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:36:39 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:41:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:41:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:41:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:41:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d169779a67e66e8e202d483a5f005a4608161d30bb29a274e18478277af2146`  
		Last Modified: Mon, 26 Oct 2026 23:37:20 GMT  
		Size: 16.1 MB (16113828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf87c6533af67077e2330752b107d9e920d7c195fabc34c479e63408f9825e6`  
		Last Modified: Mon, 26 Oct 2026 23:41:43 GMT  
		Size: 49.6 MB (49638069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11da29e5fd14a203e893cdd5a2a2d6b42d66449c2198245e66d6ff3bba6bfb89`  
		Last Modified: Mon, 26 Oct 2026 23:41:41 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95050997f4d6df67aa12c94bf71defa16907606e282932a78478ccfaf17f633e`  
		Last Modified: Mon, 26 Oct 2026 23:41:41 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:cef9582f6cdd9faec57b680b0be1cec6a85653bd490b2b5c64b7bc4abc948642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3889036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b75d5c4561345715c0d389911901073fe890cde79ea66c380c7df8f3907bcb2`

```dockerfile
```

-	Layers:
	-	`sha256:b11cad18bd49cd20b664f7fe2c8f48d9dfcc5592fa1e9553c1892997582669ee`  
		Last Modified: Mon, 26 Oct 2026 23:41:42 GMT  
		Size: 3.9 MB (3867283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac403ef21478739c4eb467f5200c43d488116122e0c7d0821af303f95759b33b`  
		Last Modified: Mon, 26 Oct 2026 23:41:41 GMT  
		Size: 21.8 KB (21753 bytes)  
		MIME: application/vnd.in-toto+json
