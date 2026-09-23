## `groovy:jdk11-alpine`

```console
$ docker pull groovy@sha256:c85de28f409cbc2d41ac9e7d00ac2d4a2657aeaf93f0bdd2276b02dd53a57731
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `groovy:jdk11-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:dd287661f55c55406ea92913b9f69b095f372a1334903b144704edb96693628a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199554050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66235821248935c637fda283f85c640396a62293067d5d5941ebfa95c051a913`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:16 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:16 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Thu, 17 Sep 2026 21:40:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 17 Sep 2026 21:40:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:40:22 GMT
CMD ["jshell"]
# Wed, 23 Sep 2026 18:19:12 GMT
CMD ["groovysh"]
# Wed, 23 Sep 2026 18:19:12 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 23 Sep 2026 18:19:12 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 23 Sep 2026 18:19:12 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 23 Sep 2026 18:19:12 GMT
WORKDIR /home/groovy
# Wed, 23 Sep 2026 18:19:12 GMT
ENV GROOVY_VERSION=5.1.3
# Wed, 23 Sep 2026 18:23:26 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Wed, 23 Sep 2026 18:23:26 GMT
USER 1000:1000
# Wed, 23 Sep 2026 18:23:27 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0b694b2a2ebf2dfd47544ef5254d9c250f3732b818818e9ecf2a7c2e4c153e`  
		Last Modified: Thu, 17 Sep 2026 21:40:36 GMT  
		Size: 16.9 MB (16893859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f31290adadd5a9429b82cfe4e0e242641d856e4ecd09053b4042edc319fdab`  
		Last Modified: Thu, 17 Sep 2026 21:40:38 GMT  
		Size: 141.0 MB (141033934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b824f2da2276e785c46147bed6847dd985ec88bebf7cf7d12fc36f979c5b73`  
		Last Modified: Thu, 17 Sep 2026 21:40:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6283d8667443fd225ec13d463e72cb5bb7c17cbe3335821a736e528aa0866c5`  
		Last Modified: Thu, 17 Sep 2026 21:40:35 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186d712e6a9dda347bd5020f34754ab0bbf9925a01af122bade468fd2c405ed9`  
		Last Modified: Wed, 23 Sep 2026 18:23:36 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae51011559977476f390cbe224af4450302485d8a77c719e6e3a957f1d4c7dc6`  
		Last Modified: Wed, 23 Sep 2026 18:23:37 GMT  
		Size: 37.8 MB (37773955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737429972246a9c4b67526cdc1cc65198dccf16931cd019872e3b5ad2c324bfb`  
		Last Modified: Wed, 23 Sep 2026 18:23:36 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk11-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:8e6cac8962a6821c12eef6e48a0948fd07ccadf942c20a4566ad810ccf74073e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1113501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46381ddf1729a81fc3072b9694ee931872f1e3f3e3df2cc2f4feafb41f0ca26`

```dockerfile
```

-	Layers:
	-	`sha256:792e7e1af003f7778e02b451b3e77c79c15e65bfc00629d940c2979ba04ac3fa`  
		Last Modified: Wed, 23 Sep 2026 18:23:36 GMT  
		Size: 1.1 MB (1091175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac0a22b65c5a8a873d3ee7b574866bec7decde0fd37e72cdde2bcb20f3bc5be9`  
		Last Modified: Wed, 23 Sep 2026 18:23:36 GMT  
		Size: 22.3 KB (22326 bytes)  
		MIME: application/vnd.in-toto+json
