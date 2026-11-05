## `eclipse-temurin:27_35-jre-alpine-3.24`

```console
$ docker pull eclipse-temurin@sha256:3689ae1ed2051837cfd9ad0977446a60ca799d95cbb8f8e64a42e72ecaad6b35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:27_35-jre-alpine-3.24` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:354462d5949f94a999ba355eb0e33ac32ca5bd5c3c53bed2411fa5c5d152525d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76172760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a0a963328cb0a613da992a51e5b3a669979daec9d792864dd455461ad19ae8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:19:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:19:12 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:19:12 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:19:18 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='65177a444f1a8201ef6e557c6f24c1dded80ae2e4dc33987fb31173f6c06cd74';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='09323dd71131eb7f30a98cd4a6e050fe10135a23ab5e7ad01b0e097e533ce7c3';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:19:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:19:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:19:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9a7476fe6e19511cb0487d1597f3192d4b12f8917f9840bae47805faf892dc`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 9.5 MB (9511785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2faaab76ac96b07346bb784453dee04fd01afab1bf89c9378302fb9fd546ad1`  
		Last Modified: Thu, 05 Nov 2026 19:19:31 GMT  
		Size: 62.8 MB (62804712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c5cc3687652043d573f226b999980c4af121b06353fc541f63887cf1813539`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7263295670e0bec5ec834b545dfe10a1bb361bcbdbd5325f4a2bb356f475c640`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:980ccb856073ac8a49223f0f5732013d2b7148c3e90e9e423b38525264d0ea5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **801.4 KB (801370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b5cb402a8cd4ae42460b435b70b4e63edf9780259ec72bab3b96a6be7a8929`

```dockerfile
```

-	Layers:
	-	`sha256:8190e6089189f721755bebb472eb671576679f0ed090be4ef70f607b1a3559c7`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 781.6 KB (781628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf7b81a3cebf19bc21f8bbee8c37b645c3e20e1ac5bac50c3dcca91b8ce77569`  
		Last Modified: Thu, 05 Nov 2026 19:19:29 GMT  
		Size: 19.7 KB (19742 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:27_35-jre-alpine-3.24` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:6fbf5315733a0070c42340dbf1d02960f9c026751bfca30b79f05d52e18d5c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75382805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34abdfa8b721bae8efc14c55d668553c64d70fea18bf83c58b34f249136f8c7e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:14:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:14:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:14:12 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:14:12 GMT
ENV JAVA_VERSION=jdk-27+35
# Thu, 05 Nov 2026 19:14:18 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='65177a444f1a8201ef6e557c6f24c1dded80ae2e4dc33987fb31173f6c06cd74';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_aarch64_alpine-linux_hotspot_27_35.tar.gz';          ;;        x86_64)          ESUM='09323dd71131eb7f30a98cd4a6e050fe10135a23ab5e7ad01b0e097e533ce7c3';          BINARY_URL='https://github.com/adoptium/temurin27-binaries/releases/download/jdk-27%2B35/OpenJDK27U-jre_x64_alpine-linux_hotspot_27_35.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:14:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:14:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:14:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51752673f2bc8c9f31d0027e6661bf18aebe0e24c764f5393f2d09ee34848be8`  
		Last Modified: Thu, 05 Nov 2026 19:14:30 GMT  
		Size: 9.5 MB (9516033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26a2256ff0bc7e7acb412f4fda568dc9ced909b1592b87dd5805398d6c88ff1`  
		Last Modified: Thu, 05 Nov 2026 19:14:31 GMT  
		Size: 61.7 MB (61673588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f613ad15791ecc648d223d71b930e3baf36603c8525860b7efb07ab7a7907a7`  
		Last Modified: Thu, 05 Nov 2026 19:14:30 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4803de908adf0431156531e2dd4f1da5233df3b513013a1605306da5ab58b1a9`  
		Last Modified: Thu, 05 Nov 2026 19:14:30 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:27_35-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:11b71ab6d06ee2780ba54e858c90cf1eb941b789e7d1a4ad00ebb3065d40cc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **800.3 KB (800290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7b7d81eb427d579f25dfaff68e548eb34d538aa035cd7dc6f1240ba3205887`

```dockerfile
```

-	Layers:
	-	`sha256:b0849004c520d5f587c08c0e5229e9093b312a3b759fe017ddcc9832f38f1132`  
		Last Modified: Thu, 05 Nov 2026 19:14:30 GMT  
		Size: 780.4 KB (780413 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03d0b5f03e57958994bb08c2823932c50dffe7501a8afd0d322e93544d2bcc2e`  
		Last Modified: Thu, 05 Nov 2026 19:14:30 GMT  
		Size: 19.9 KB (19877 bytes)  
		MIME: application/vnd.in-toto+json
