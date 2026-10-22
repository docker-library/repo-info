## `groovy:5-jdk25-alpine`

```console
$ docker pull groovy@sha256:3f4752c19642b6d3a20ad6b75ecac7abad9aab892103e4895591ed88c60e8512
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:5-jdk25-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:87005675794dd4805477f57068940da7297ff0e14ea747e5d98a55e1555cb21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147779006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2995c74245369247a6a0d25190f7dbd137cb97e7b7f943d356ac6be1340ade01`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:30 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 22:57:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:39 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:31:14 GMT
CMD ["groovysh"]
# Wed, 21 Oct 2026 23:31:14 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 21 Oct 2026 23:31:14 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 21 Oct 2026 23:31:14 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 21 Oct 2026 23:31:14 GMT
WORKDIR /home/groovy
# Wed, 21 Oct 2026 23:31:14 GMT
ENV GROOVY_VERSION=5.1.3
# Wed, 21 Oct 2026 23:31:23 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Wed, 21 Oct 2026 23:31:23 GMT
USER 1000:1000
# Wed, 21 Oct 2026 23:31:23 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1001cd8970ca37d8d45405494ebb2c82a0b9720bb2afe468d79f1ac050c8e8`  
		Last Modified: Wed, 21 Oct 2026 22:57:53 GMT  
		Size: 14.4 MB (14372068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25da90bb644bb4f9557cca22620a6ae081516fee8df945f724099696e73632b7`  
		Last Modified: Wed, 21 Oct 2026 22:57:55 GMT  
		Size: 91.6 MB (91636759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f93a261c74f38722efdedd40a3f8025dc001b45a3550f87038f2abd19f1fb1`  
		Last Modified: Wed, 21 Oct 2026 22:57:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27176d601dceac645c62cdace06af5c486f872eb70ce7c5b37f12619a4165647`  
		Last Modified: Wed, 21 Oct 2026 22:57:53 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99320762b5aaa6a12cd82ba9f9529280af7c629d1cd538e7305f835c32858280`  
		Last Modified: Wed, 21 Oct 2026 23:31:33 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a608e0077bb3b2f933c5e5f2804bdefb1adbbef24d320b38bf4ba3640c0cf9`  
		Last Modified: Wed, 21 Oct 2026 23:31:34 GMT  
		Size: 37.9 MB (37913276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1286c3634aef34817090e82514469bc6cfc2487d402c865a1fd9832796fe6aa7`  
		Last Modified: Wed, 21 Oct 2026 23:31:33 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:5-jdk25-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:fe9d8251934171217efdc4b6805e25f2106b2ec64b488e9667f3f65208848bfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1071548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2494e9015da7ca17ec080a689ca699789b71c268c54b0bb5e49de84e0eb80ef`

```dockerfile
```

-	Layers:
	-	`sha256:afe1de0142804183ee5d1c881b7d4523cca8adf08eaa355aef60c6b1e38a783d`  
		Last Modified: Wed, 21 Oct 2026 23:31:33 GMT  
		Size: 1.0 MB (1049546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c8794937a8807a512ecea654e1758225b53d11e0d404b2428f6cb953816309e`  
		Last Modified: Wed, 21 Oct 2026 23:31:32 GMT  
		Size: 22.0 KB (22002 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:5-jdk25-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:d56a3393b9cea8fc0373c8d5cc92842e61d31fa98dd1ebb7a7456f14bb490a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147082593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc369a7755b4fd60fa4541f9b6c889d25a717d5a8ad0c8c3cfc9be67fbf3a90`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 23:20:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:20:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 23:20:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 23:20:13 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8d19373d427017d86ac87cf6a47ba49746be864832f60b52b7e3b1531c6b2cb8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        x86_64)          ESUM='f18648ee5ce45261f50dc9493fdae7ddebaa2a7a857cafda3e2a448a79c03dee';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
CMD ["jshell"]
# Thu, 22 Oct 2026 00:21:52 GMT
CMD ["groovysh"]
# Thu, 22 Oct 2026 00:21:52 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 22 Oct 2026 00:21:52 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 22 Oct 2026 00:21:52 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 22 Oct 2026 00:21:52 GMT
WORKDIR /home/groovy
# Thu, 22 Oct 2026 00:21:52 GMT
ENV GROOVY_VERSION=5.1.3
# Thu, 22 Oct 2026 00:22:02 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Thu, 22 Oct 2026 00:22:02 GMT
USER 1000:1000
# Thu, 22 Oct 2026 00:22:02 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1925f5d03239a36fc9f03b115d2e5b92dc16f876eeb732ed46b48002dcecb5f7`  
		Last Modified: Wed, 21 Oct 2026 23:20:39 GMT  
		Size: 14.4 MB (14426609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562f033fac9bf045bf190e4b2ddc72cbf318dbdd7b25f3bccd29ce25af7422ee`  
		Last Modified: Wed, 21 Oct 2026 23:20:44 GMT  
		Size: 90.6 MB (90558872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e943606091df57124abb9c8d6433a2ce29045e747b95bb2a68961a93e76bee3d`  
		Last Modified: Wed, 21 Oct 2026 23:20:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddcc2580d02d2fbdc4df3760c57b4f1d100d320ac01f05fe05ac8a33a47e34db`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a076f372a291917afa8321b816d47a29f267374eeeefeafa7c76b646137c7ece`  
		Last Modified: Thu, 22 Oct 2026 00:22:10 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675773f4b65796d9688abb00b618e59a2f6f9b1678d57b65a75e851723abc656`  
		Last Modified: Thu, 22 Oct 2026 00:22:11 GMT  
		Size: 37.9 MB (37902830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe50a92193e219e7ce8f244c49358f14571a81086303975decc5ea0ab942bf70`  
		Last Modified: Thu, 22 Oct 2026 00:22:10 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:5-jdk25-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:1dc4df7d7e922bcc2f39ebc19bcad250042d31ee4b05ff3c984bfd5be7730380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1221019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f633ff2457966b31f94b785eabfdb4c982e3e6c06d210c4a1b170b8ee72dbc`

```dockerfile
```

-	Layers:
	-	`sha256:1d0e4346a069bf21807a530e8757cd57e047436832f1475c0440c2c4ac60ca3f`  
		Last Modified: Thu, 22 Oct 2026 00:22:10 GMT  
		Size: 1.2 MB (1198895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae8cbc2ca2591815b471747f3156e8f05bd5af483838cfd8dc532cad4ad430f3`  
		Last Modified: Thu, 22 Oct 2026 00:22:10 GMT  
		Size: 22.1 KB (22124 bytes)  
		MIME: application/vnd.in-toto+json
