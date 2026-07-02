## `eclipse-temurin:26-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:3e83fe06950ab45b8fee3c8fccdbb3dc0cc203c4518babdd9e8957c31284c9d5
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

### `eclipse-temurin:26-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a47eee2cae0971ec7f7b1795f99c36139fc2a58267de3c062cfed09718389637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105636348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:161859678c31e8c9ae4d2621da2b40b7e4d8e7e6dfb11f16d0a31c1cf90f1423`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:22:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:22:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:22:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:22:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:22:41 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:22:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:204919dc55ab847a072f38873a4a3567d548b2a79f1146852eae4e692584a181`  
		Last Modified: Thu, 02 Jul 2026 02:23:13 GMT  
		Size: 11.4 MB (11368660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae49a6758f89a7262fa4cd7315ed368d0c54ffa84f19925b23104f1c63a7e058`  
		Last Modified: Thu, 02 Jul 2026 02:23:15 GMT  
		Size: 64.5 MB (64526311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cea9e319a8bfedb73dcd917c20614fb775dba17bf49ec5ddc25d2d55f7e0f9`  
		Last Modified: Thu, 02 Jul 2026 02:23:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b616ff533ee76d10bff47e1a01fece03755830e47f479b16f5d212d74241781a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4684fffe33852e224f5f7440811c42067b80a6ece76072ccf481647deb308cae`

```dockerfile
```

-	Layers:
	-	`sha256:3013069bc4e4f45422ad60e5c480db49bc3ebbd261e2987986b815164beb8aac`  
		Last Modified: Thu, 02 Jul 2026 02:23:13 GMT  
		Size: 3.6 MB (3629574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75f8c50e6a9b58f4ec83f7e1e6b371c7ed30329487f2f28bea45ea33ec972830`  
		Last Modified: Thu, 02 Jul 2026 02:23:12 GMT  
		Size: 22.2 KB (22236 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c71208e6915b35e4771c3ce97519441c09ada95505cd74d3a091a03b7ef0094b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102368892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c6dbfb1104d175f405c050e3956bb6854a923d61d088d4b182ee7ee47117a1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:39 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:39 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:21:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc58fd4f1d6303b3a9a471db553f017966c16d0654b7109140cd8e7e6009551e`  
		Last Modified: Thu, 02 Jul 2026 02:22:12 GMT  
		Size: 11.3 MB (11312823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27dd9b672c48209988177ae7ef5ac486d99b538594455091864d55e0f9987cd`  
		Last Modified: Thu, 02 Jul 2026 02:22:13 GMT  
		Size: 63.4 MB (63440389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0baf060772d729fe2b083dffc02f0c4181e4924e7a09e0d35586c9ff269d74f6`  
		Last Modified: Thu, 02 Jul 2026 02:22:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:13ad5e8c9968e5cbe18e7ba5c9288ae341e9f964e935213741038092011c8c48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c292fb7cbf22bb729b35c0b4a7ec5328e0d58dad4fe478bde9f3c20f1b6122bf`

```dockerfile
```

-	Layers:
	-	`sha256:b0eae738da476200ae5bd46fcc186c158a8a52d769b68f4b29eb2f9e4093115e`  
		Last Modified: Thu, 02 Jul 2026 02:22:12 GMT  
		Size: 3.6 MB (3629212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa6e80cb369f53e6360b71a9309ebf2c1b2718fdfbd61349bf4f16db5fc1c83`  
		Last Modified: Thu, 02 Jul 2026 02:22:11 GMT  
		Size: 22.3 KB (22346 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:788be462fe8c41b3f841ef6e8087d7ab47e947df84f42d8226a5d8de0d68f79f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110438339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffce35051c48fe57f43fac0fcc53055177e1b9822e8a24878548e2bb1a7d37db`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:28:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:28:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:28:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:28:19 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:32:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:32:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:32:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:32:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58f435ace747ffc0429cde4e7ad00c811ee8de2e6402f4a5968cf72c6e99893`  
		Last Modified: Thu, 02 Jul 2026 02:29:13 GMT  
		Size: 11.9 MB (11850909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137af7a4756fa4c64512c8747630175ebc85a3545539045c6b9bacf28a7e447f`  
		Last Modified: Thu, 02 Jul 2026 02:33:06 GMT  
		Size: 63.9 MB (63943065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753d73dc0e72a7036cb206f0d8956a28c24486b0b41b939fd47183a448cdfad9`  
		Last Modified: Thu, 02 Jul 2026 02:33:03 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d3ec9845483d6f27a18bb8aa781de6fe12a1b28458d0363bfaad211e602d56e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3655172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e48a14277bbd0443f871fa8b739f3898edef2cb696c39ccdad39512258b915`

```dockerfile
```

-	Layers:
	-	`sha256:4ec8599201b2a66e2f7b353f427459aafc99fa86af883546a3ca2b889e583008`  
		Last Modified: Thu, 02 Jul 2026 02:33:04 GMT  
		Size: 3.6 MB (3632899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1339dcf6e9af83c7a4dc29b0d07cbf00aaa380f79e27dab1dfc1d0a3eeecba05`  
		Last Modified: Thu, 02 Jul 2026 02:33:03 GMT  
		Size: 22.3 KB (22273 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:1acafa0bc3f09ee88c496df27abe2f66f10783c28998ea8bc18f7e52a0a4a944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101810390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4adcafaf26ce09978ce0200b848aa881990b01ee77a37976633f163234ec92fc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:41:48 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:41:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:41:48 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:41:49 GMT
ADD file:a7caac22d71edeca734e094edaefd29ba696f6b6850656befefab899becd4181 in / 
# Mon, 29 Jun 2026 10:41:49 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:15:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:15:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:15:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:15:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:15:37 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Thu, 02 Jul 2026 02:17:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:17:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:17:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:17:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58828f9d6aec81425e03f067daaa1b112818978faaaa8aef2a6a1cf132f2782c`  
		Last Modified: Thu, 02 Jul 2026 02:16:07 GMT  
		Size: 11.5 MB (11456062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da3dd06aa9f00516bc0a448d60148707fb4319d2289d19141dd513a88e29b3b`  
		Last Modified: Thu, 02 Jul 2026 02:17:30 GMT  
		Size: 62.1 MB (62147702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee60c9cd880d1648aa5a92be337f00836db2765a5b61a2fea75875822c893b75`  
		Last Modified: Thu, 02 Jul 2026 02:17:29 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:726f802f80626dd9dffdb437a8c4cb26b003d708e8977d6655375d5176d3404b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3652797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1fcb44b4b88b577d59f0d4e9c917f6d2915ac96b682965ebbeeb3ce9e82785`

```dockerfile
```

-	Layers:
	-	`sha256:17d7d392d6ce6d76af67bfca4a053f7ffe5d2dbfba37ebcbaf34b02aa6006e39`  
		Last Modified: Thu, 02 Jul 2026 02:17:29 GMT  
		Size: 3.6 MB (3630560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db7cc85cb2bb50e382a0d546385c4ad798742a199fb27e0b46ab8c27b23892cb`  
		Last Modified: Thu, 02 Jul 2026 02:17:29 GMT  
		Size: 22.2 KB (22237 bytes)  
		MIME: application/vnd.in-toto+json
