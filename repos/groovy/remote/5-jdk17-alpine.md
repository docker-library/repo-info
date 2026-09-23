## `groovy:5-jdk17-alpine`

```console
$ docker pull groovy@sha256:7db7e1ac50b27494916b1218c974de1e201549dca1d8957f8614b5213978a713
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `groovy:5-jdk17-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:c2fadb45b2417449b113848d43fc03a8e36773f86350387ed3e39fc6e1dd0962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (207976208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fe24abc8a3d91463e1504ed6f09aaddf3cfca6fa4a24404b3f7c61a41d0eaa`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:37 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:37 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Thu, 17 Sep 2026 21:40:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:44 GMT
CMD ["jshell"]
# Wed, 23 Sep 2026 18:16:48 GMT
CMD ["groovysh"]
# Wed, 23 Sep 2026 18:16:48 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 23 Sep 2026 18:16:48 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 23 Sep 2026 18:16:48 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 23 Sep 2026 18:16:49 GMT
WORKDIR /home/groovy
# Wed, 23 Sep 2026 18:16:49 GMT
ENV GROOVY_VERSION=5.1.3
# Wed, 23 Sep 2026 18:18:51 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Wed, 23 Sep 2026 18:18:51 GMT
USER 1000:1000
# Wed, 23 Sep 2026 18:18:52 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bd4801bf7261e80f0180870b9e885b6d19db3f47fef4eba60bc428a957257e`  
		Last Modified: Thu, 17 Sep 2026 21:41:00 GMT  
		Size: 21.4 MB (21377581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d07363cadb87999d19be21e299eb9792e34e43d716e98d3bc1203753605eba`  
		Last Modified: Thu, 17 Sep 2026 21:41:03 GMT  
		Size: 145.0 MB (144970258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec4b024981b9b453497e672de3576bbb2988d977ee68f9e4df0497e4492434e`  
		Last Modified: Thu, 17 Sep 2026 21:40:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cea5f68bb696ae769d3285ee343850f5277c77ed944b729454155b39dfe915`  
		Last Modified: Thu, 17 Sep 2026 21:40:59 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d865e31ce6058dd6879140b7811897a4633b2c69c5917a791af891258b7144d8`  
		Last Modified: Wed, 23 Sep 2026 18:19:01 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8400131cd70cf86923d6f20bfe38648812a25161e2436db937d6a132d716484c`  
		Last Modified: Wed, 23 Sep 2026 18:19:02 GMT  
		Size: 37.8 MB (37776069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4c5ce19bedfb18ba45b55d92acaa2251c6fa5610bf9e09904b574beb32a1cb`  
		Last Modified: Wed, 23 Sep 2026 18:19:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:5-jdk17-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:37fb92bf545b71ede9c1c1d11b5dbcf1f16c1e3f81a49703af084fc11cc027a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1212191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba5ba1ccd264ab78fcb7e6e4eba7f8c4211dcf00cd79c2b3c0dbe073550b981`

```dockerfile
```

-	Layers:
	-	`sha256:1a3be56d8396f5777212fdf9059c017fdbc3c562a8e11cd6d8c1ab896b05f3b3`  
		Last Modified: Wed, 23 Sep 2026 18:19:01 GMT  
		Size: 1.2 MB (1190174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce499581d21ecfa47f28903e63ebf6e02feabb6c88b4a9400b98be180034763b`  
		Last Modified: Wed, 23 Sep 2026 18:19:02 GMT  
		Size: 22.0 KB (22017 bytes)  
		MIME: application/vnd.in-toto+json
