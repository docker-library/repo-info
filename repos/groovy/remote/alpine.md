## `groovy:alpine`

```console
$ docker pull groovy@sha256:c481e364be5c12c67e0007cbe21b450e39735a94ae10df75d0fc21191220604f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:alpine` - linux; amd64

```console
$ docker pull groovy@sha256:5fcd7ae0fcc785f72a34f0089cd62bd19297987af2f20b1923ad7f96d8ac1a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235716919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3add2cd7dacd9a7adfc58275ad3a0a9fc2c79a36015a8afe3c6d0447d7e3da2f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:24 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:24 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 21 Oct 2026 22:57:33 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 22:57:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:34 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:30:56 GMT
CMD ["groovysh"]
# Wed, 21 Oct 2026 23:30:56 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 21 Oct 2026 23:30:56 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 21 Oct 2026 23:30:56 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 21 Oct 2026 23:30:56 GMT
WORKDIR /home/groovy
# Wed, 21 Oct 2026 23:30:56 GMT
ENV GROOVY_VERSION=6.0.0
# Wed, 21 Oct 2026 23:31:05 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Wed, 21 Oct 2026 23:31:05 GMT
USER 1000:1000
# Wed, 21 Oct 2026 23:31:06 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdcf99f7c7e2bd578131140af523b0d46da2c695620c36bba3c0d9737531ba6`  
		Last Modified: Wed, 21 Oct 2026 22:57:50 GMT  
		Size: 21.4 MB (21438661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a297d674f277ebdde59d0b52e9b5438cb7a5020a3c89839d07e4138f3e2d7cd8`  
		Last Modified: Wed, 21 Oct 2026 22:57:53 GMT  
		Size: 158.3 MB (158329250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2398acf7291f48aef8d5af8f6053570d03d75bd3aebe9b10da5ae7be2810b65`  
		Last Modified: Wed, 21 Oct 2026 22:57:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab974ffe9d578381c86e2e9c12fcceaf63f377a571321ec592c4eb497c15d20`  
		Last Modified: Wed, 21 Oct 2026 22:57:49 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca113150e74fcd5cfcd617df046aa7afd6242a1a37a491387e6e93fe553b42b9`  
		Last Modified: Wed, 21 Oct 2026 23:31:15 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984e603c626b71bf13308b5629889a2b461a8caa1d79e78f45bcddf9612edc3c`  
		Last Modified: Wed, 21 Oct 2026 23:31:16 GMT  
		Size: 52.1 MB (52092106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3a5abcb86f5ddf187a5e38a6cc2ab2dd476b45de4fc8744a79e44b98fdbf3e`  
		Last Modified: Wed, 21 Oct 2026 23:31:15 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:4f5f6ec4da9ff76c7b7ccfaeda360879708fea260167a17dd97103531dd82e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1289907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d558fa8cde8a04eb69155c54c180c7dae2960c3f458e3a4572890e23abfb3036`

```dockerfile
```

-	Layers:
	-	`sha256:5d36dbcdcadd582906b6c5d75773435e413f852a7f11def505b742a395b3a0bd`  
		Last Modified: Wed, 21 Oct 2026 23:31:15 GMT  
		Size: 1.3 MB (1265123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4185f41b0c2bddf66a7717a94662e061591d5e283728717f6531dbe57af88245`  
		Last Modified: Wed, 21 Oct 2026 23:31:14 GMT  
		Size: 24.8 KB (24784 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:5bab33a8bcd92fd6008c18255936459b7370e7e0f2b36c423996aacabb8a2597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234031794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4446db378695374610d0a99570b81ec554fa4fde878cdd826cba89141a5ed8b9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:11 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:11 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Wed, 21 Oct 2026 23:20:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8242627927adc90ac2561d0812dd39890ebc21ef09b550bc2e8b93640b8af4f8';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='bd8824214e42b33333c7f55a039ea078ad6ea6be20d7c5b011c801fb2bdb44f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:21 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:21:51 GMT
CMD ["groovysh"]
# Thu, 22 Oct 2026 00:21:51 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 22 Oct 2026 00:21:51 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 22 Oct 2026 00:21:51 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 22 Oct 2026 00:21:51 GMT
WORKDIR /home/groovy
# Thu, 22 Oct 2026 00:21:51 GMT
ENV GROOVY_VERSION=6.0.0
# Thu, 22 Oct 2026 00:22:01 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Thu, 22 Oct 2026 00:22:01 GMT
USER 1000:1000
# Thu, 22 Oct 2026 00:22:02 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3b5a797412c3a3c1dd1e385aa2b9e6b27325c614d454d967d5e51b4de8932d`  
		Last Modified: Wed, 21 Oct 2026 23:20:37 GMT  
		Size: 21.4 MB (21418389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f9996066e24b3049ad8773b96b80731d9e3f5e36702170cdd124d712f24877`  
		Last Modified: Wed, 21 Oct 2026 23:20:41 GMT  
		Size: 156.3 MB (156335171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd216a7d6d7d3c11ff338ee3c8d3b36eba45b2029978a24767f46078d9dafb3`  
		Last Modified: Wed, 21 Oct 2026 23:20:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fff22d8ec893d04f1299ff1e47172b82712e530b63e0b5b641e4992d0ddf5fc`  
		Last Modified: Wed, 21 Oct 2026 23:20:37 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eece0b7ef6e372d5b47b9785893d0408c8237e9e5992054f2a58470281e1c0ea`  
		Last Modified: Thu, 22 Oct 2026 00:22:10 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12310d41fe4fc6ea924def7045ad02e6e906ed2b82a0b9ca891c55a1762150a4`  
		Last Modified: Thu, 22 Oct 2026 00:22:13 GMT  
		Size: 52.1 MB (52083954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe50a92193e219e7ce8f244c49358f14571a81086303975decc5ea0ab942bf70`  
		Last Modified: Thu, 22 Oct 2026 00:22:10 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:69ab996e34f55e3251245e7d800491a6e91359b8c378de5a0912d421b085d47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1439597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6c8ef1ed047ded7817c0149e63e03fae972167babae29cf3f581b7bd75a654a`

```dockerfile
```

-	Layers:
	-	`sha256:d54012affa369f43081dab505b0dbc72db45e7fd898e4353e7e999d0ec8948c6`  
		Last Modified: Thu, 22 Oct 2026 00:22:12 GMT  
		Size: 1.4 MB (1414583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a5b5248142a0775bcdc1d46bedfbd9875963d65ea268efc2852427db2a0324b`  
		Last Modified: Thu, 22 Oct 2026 00:22:11 GMT  
		Size: 25.0 KB (25014 bytes)  
		MIME: application/vnd.in-toto+json
