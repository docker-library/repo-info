## `eclipse-temurin:25-alpine`

```console
$ docker pull eclipse-temurin@sha256:22edbb1021420ae6e248519d1af07577742314d67d4c60fcbb2e285b7e47fa78
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:25-alpine` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:4fd06d9bd7733ab761b6d84e7423ed78b22b84bf6574d423be6cbdcffba6b17a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.4 MB (112386719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3bce3263c11ed462b73fec607adb1100f54e7413d43c9c71eaffe219806e806`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:52 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:39:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:39:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30918d682cf0c10504ef0f5606c9b1b42d83c0405c5a28904592b4d09b7dfdfd`  
		Last Modified: Fri, 20 Nov 2026 17:40:14 GMT  
		Size: 16.8 MB (16849365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb679e69b68daea08e52fdb38a131144a2baf615a75287e4d992189d3139170`  
		Last Modified: Fri, 20 Nov 2026 17:40:16 GMT  
		Size: 91.7 MB (91681090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f577ef1593f1935f76416e7596f00093b7c2172d424a7d684346585989387ff3`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04a540de790f34940a32c248ce1094ce407a54943df8a8aad72e787b2e62057`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f14032ea13cfcbf3324eefbbd6f27f0117e417f1b22a65987e43707beb71aa4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **971.0 KB (970972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da59df031ad4736396a43a4090fd4e5c51f5569eb84566238e17ccaf90fce31`

```dockerfile
```

-	Layers:
	-	`sha256:d76a56006589cdc07a406f61743906608517ce3f3930c7bf0bb4efe88e7d3c31`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 949.4 KB (949427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f981af4b0bce8c697aa2f933511e713bac4f3a2d4749d8f5dba6061bf41e0870`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 21.5 KB (21545 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-alpine` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:292d8403307df6a8a32df83b3a10aa9312edfa55c151c61524beae92b2d44478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111970871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52b717d0fc7f19f260cbc2490c5bb4fb6787839f18fd2c39364d67cd66b03e5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:54 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:54 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:40:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:40:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487a64cbb3fbfe7cba72e5ed235a24dbaaec5e13814e4c8f4cefb12810568180`  
		Last Modified: Fri, 20 Nov 2026 17:40:18 GMT  
		Size: 17.2 MB (17204343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc4ccb772395b1288f8493668870b37b7fcf6f51768ce8f476628696a4f7799`  
		Last Modified: Fri, 20 Nov 2026 17:40:19 GMT  
		Size: 90.6 MB (90573341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12413d418d48fb1f36d40adf9960a08a6433553870d93a7c0fa4761640e77191`  
		Last Modified: Fri, 20 Nov 2026 17:40:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3e8556fe1865e4a299e4b903c8f3f15d32531fd8224cfc9f7843adbed97406`  
		Last Modified: Fri, 20 Nov 2026 17:40:17 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-alpine` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bc2267d120484a739b04f64f6a44bbb0c389b0000f345392e5ffa2820c5673c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1120515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e31c37d8c0b3a88839ed47c6b9801673fcf6b432b0b3c224ef10aac3c0dea1e`

```dockerfile
```

-	Layers:
	-	`sha256:3f2c5c918cec46c8b041dbc113aa61b0a7771cf3a266700262f57e72b669a416`  
		Last Modified: Fri, 20 Nov 2026 17:40:17 GMT  
		Size: 1.1 MB (1098812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9d51952efddc6dfb2ef62907d448d43b917bf149a117603195b757010d03986`  
		Last Modified: Fri, 20 Nov 2026 17:40:17 GMT  
		Size: 21.7 KB (21703 bytes)  
		MIME: application/vnd.in-toto+json
