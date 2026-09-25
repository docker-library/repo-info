## `eclipse-temurin:21-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:e72986b564ed8b7482d941703fd067ae601075ec484328cbf80e80a835104af6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eclipse-temurin:21-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:32e8ee27486f58fad48a857c302021a22e9d7606b7c93b7afbdd508827c13daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183307703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db503774e3269a2f6c7b7daf15e576ee25c06161dd5656878aab175c77579a8b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:37:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:29 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:37:29 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:37:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048d6b2264113d39ac4705dba1d86b2d18e82cec14c8d89da8a3d9238daefc5f`  
		Last Modified: Fri, 25 Sep 2026 22:37:52 GMT  
		Size: 21.2 MB (21183611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5424a34ea2a727a00ed26134de218061792f1272d9538843235c8cd74665855`  
		Last Modified: Fri, 25 Sep 2026 22:37:55 GMT  
		Size: 158.3 MB (158329424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c90cddb485ccc8bc75aaceda6caac9435ab88d5b43cd7f8b53d9f7e1282fef4`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd807765fba80c0ad3d1a47829a0c09da22b0334b2e7f367e9759c0afdbeb62`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2db6383366b8908823a470e6614f07bfe54de8542ee9d1c85bf1cb50fd398cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1110685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a122e2887edb4b4105b3aec5d46df1a02cf9e0f85b9be55cc83086fe8041e5f3`

```dockerfile
```

-	Layers:
	-	`sha256:de49a5df6f63bc5a1cc5ffb2f21b64a715372c3ca06a427c2cbd63883942f474`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 1.1 MB (1090235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a2ccff51fcc8064dbc839fc132ce7e3f50942b0adb7f70d9305ec03abbaf379`  
		Last Modified: Fri, 25 Sep 2026 22:37:51 GMT  
		Size: 20.4 KB (20450 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-alpine-3.22` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1662540548a56176cd697c1df26c75c14ee3de3fa2192272a546d37f22819d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181689769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7975063c8a20ce06d657e0f48cb907dfb221d5b7588e93977415a2c78ab33222`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:37 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:36:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af6075b1aafd728b107135604357313abe629422d60e08e5b17a954c2ffced4d`  
		Last Modified: Fri, 25 Sep 2026 22:37:02 GMT  
		Size: 21.2 MB (21228898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66b706fa8fe44b4bebdd52f424127ae065ee81bcd8d6e295f45b905073fd3e7`  
		Last Modified: Fri, 25 Sep 2026 22:37:05 GMT  
		Size: 156.3 MB (156335196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3285598ce7b115b17b2307be6475b4f1d521891bcc82a96254a694a18fa6b997`  
		Last Modified: Fri, 25 Sep 2026 22:37:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24989316721136cffcfcb695d0d865800d42e80eb88ffd2aaabbf0d3d8ec7d50`  
		Last Modified: Fri, 25 Sep 2026 22:37:02 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c751530c5db7ee04af101ab7da35280918713a345a5ffb5103544fe274e77305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1260809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae86ea60ff42193f8482408392a73fff94ad4059818a9dc8694535ea3e75be71`

```dockerfile
```

-	Layers:
	-	`sha256:1c8410845c1065572c88921cccd38811a11d68cf242e262424de735e9fe61b29`  
		Last Modified: Fri, 25 Sep 2026 22:37:02 GMT  
		Size: 1.2 MB (1240237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e6e9c1e7e7656284d634a89f0a9cb4eff561fa6af7e5008f8357601ba9e3990`  
		Last Modified: Fri, 25 Sep 2026 22:37:01 GMT  
		Size: 20.6 KB (20572 bytes)  
		MIME: application/vnd.in-toto+json
