## `groovy:3-jdk8-alpine`

```console
$ docker pull groovy@sha256:8650214ee858ca3c834b674a2170e89c3eeba9ede635caee4bf037043345d3e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:3-jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:cf78249b4331c7cdf871e832ab0cb20c6434a06f3a108b109c549bf0d1327a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152704046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ebd60f789b7851618add18763be0f51ec88847b646161d2129ee4a5ae706d15`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:48 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:48 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:48 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 18 Nov 2026 03:09:57 GMT
CMD ["groovysh"]
# Wed, 18 Nov 2026 03:09:57 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 18 Nov 2026 03:09:57 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 18 Nov 2026 03:09:57 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 18 Nov 2026 03:09:57 GMT
WORKDIR /home/groovy
# Wed, 18 Nov 2026 03:09:57 GMT
ENV GROOVY_VERSION=3.0.25
# Wed, 18 Nov 2026 03:10:08 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Wed, 18 Nov 2026 03:10:08 GMT
USER 1000:1000
# Wed, 18 Nov 2026 03:10:09 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72e224ff45300b762476554e71a75bd0542d669bee3dfa4f82a61015f753f54`  
		Last Modified: Wed, 18 Nov 2026 02:46:02 GMT  
		Size: 100.9 MB (100871962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f9dffaf868e3ae7cc47c4d7af703d4eb810b8e37ad51c42120d140b5826712`  
		Last Modified: Wed, 18 Nov 2026 03:10:18 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbf1c7f9f8f0c83137c868198e227995ab2e5dbe0401ae83affae4cdd86a355`  
		Last Modified: Wed, 18 Nov 2026 03:10:19 GMT  
		Size: 48.0 MB (47978294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d20bee03f846c636a2225547fb95fe665ec7f06d4f1adf12ca2489fb122119`  
		Last Modified: Wed, 18 Nov 2026 03:10:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:02a28fe7e824828e9c1f2a71760d6368f4f1ab56a35467dbf7ee7931526b8359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 KB (392120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaa028d64840dfe9bebc4a9a5309ab3552612d39f967b6e87aa7277a16679c6`

```dockerfile
```

-	Layers:
	-	`sha256:271c106c8714c47081026a213e95640b4729967eb1f0060585b41f6685703cf9`  
		Last Modified: Wed, 18 Nov 2026 03:10:18 GMT  
		Size: 373.1 KB (373087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73cecc832c1bd8fb1228790d8cafc6a67cb243ef2180c7d958b6af2a0182367c`  
		Last Modified: Wed, 18 Nov 2026 03:10:18 GMT  
		Size: 19.0 KB (19033 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:3-jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:40ce06849977b9ceb923bb68e8b06ea6d472d3714bdef7a070a89aa13608a96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152846751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9208068b235f99cf9316b5abb17f52b8042cce25be4f31c169ee1e9865c89a17`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:57 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:57 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:57 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 18 Nov 2026 03:09:54 GMT
CMD ["groovysh"]
# Wed, 18 Nov 2026 03:09:54 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 18 Nov 2026 03:09:54 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 18 Nov 2026 03:09:54 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 18 Nov 2026 03:09:54 GMT
WORKDIR /home/groovy
# Wed, 18 Nov 2026 03:09:54 GMT
ENV GROOVY_VERSION=3.0.25
# Wed, 18 Nov 2026 03:10:11 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Wed, 18 Nov 2026 03:10:11 GMT
USER 1000:1000
# Wed, 18 Nov 2026 03:10:12 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5f8ffd48d96b878c8c325056a09df4a3169f56c3f3b8089d28e4f6ac2f4eb7`  
		Last Modified: Wed, 18 Nov 2026 02:46:12 GMT  
		Size: 100.7 MB (100699695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88aeec73c64be01924b5d325c4fbd15bd4065cb5db7bf9f45979242e11f2cd12`  
		Last Modified: Wed, 18 Nov 2026 03:10:20 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fd80841eff0485cc1312ec7a6596cf4a0fdd78ef74a9d7261cfd12266d049d`  
		Last Modified: Wed, 18 Nov 2026 03:10:22 GMT  
		Size: 48.0 MB (47955633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80d43d36b3f636cbf1742d10b5c5355388db0b915e9ae77a2aedb4c0363c77d`  
		Last Modified: Wed, 18 Nov 2026 03:10:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:1ff7a2a154b80297250b43d4ba3c3c77ee2399dfb6e202816db3f7dba4e386f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.7 KB (391717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed4bf326f827ca7712aa7860c824b2d94aa6530ea14d76a95dfbad80df4ba11`

```dockerfile
```

-	Layers:
	-	`sha256:18d36a5c56e5507bb137fede0459109c706c4f8badf86528d2179f409b4867be`  
		Last Modified: Wed, 18 Nov 2026 03:10:20 GMT  
		Size: 372.6 KB (372561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20d95c54aca397e67cf335dfc579f529f2340c5ccbf9479210eb1f0691b6a55f`  
		Last Modified: Wed, 18 Nov 2026 03:10:20 GMT  
		Size: 19.2 KB (19156 bytes)  
		MIME: application/vnd.in-toto+json
