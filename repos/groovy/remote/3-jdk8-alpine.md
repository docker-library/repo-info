## `groovy:3-jdk8-alpine`

```console
$ docker pull groovy@sha256:145d44d7ee933e0c1bde9251e9b908369a687ac84df03960d670e8282c4c2286
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:3-jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:e1d60468020cf852821bdff9e500ae4ed52f9ffd0ba94660904ed4f7476a0255
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152654079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc15f6ad1d509cfb53ce284742cc1092846ca1760be134b87b138c7d2151f878`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:08 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:36:08 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:36:08 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:36:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:36:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 05 Oct 2026 21:52:40 GMT
CMD ["groovysh"]
# Mon, 05 Oct 2026 21:52:40 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 05 Oct 2026 21:52:40 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Mon, 05 Oct 2026 21:52:40 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 05 Oct 2026 21:52:40 GMT
WORKDIR /home/groovy
# Mon, 05 Oct 2026 21:52:40 GMT
ENV GROOVY_VERSION=3.0.25
# Mon, 05 Oct 2026 21:52:49 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Mon, 05 Oct 2026 21:52:49 GMT
USER 1000:1000
# Mon, 05 Oct 2026 21:52:49 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abffc358004c17d8e0806b789d7defd02afb87015c3b3dfb34121e2b085d127`  
		Last Modified: Mon, 05 Oct 2026 21:36:21 GMT  
		Size: 100.8 MB (100827101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf34c70df85385d0bcc5103652f787c4090c69f213786c9e1f026d627575c98`  
		Last Modified: Mon, 05 Oct 2026 21:52:57 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c3bec5fdf61490fa38216e09dc001c524e82e6b24223ca12f6b1858572c82e4`  
		Last Modified: Mon, 05 Oct 2026 21:52:58 GMT  
		Size: 48.0 MB (47977271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244f427db56ff9ae9e307df525e88766d4d289f6e9385c0c68b219b30d443311`  
		Last Modified: Mon, 05 Oct 2026 21:52:57 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:8b128e03b07dd4d7e295e8b8797b38954eb630c41f8dc196105d2701b9039e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 KB (392125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f58bdeaf73c2b4bf119eeb84e1b2a2bd7097a5e7da027d46785c32b207c1b96`

```dockerfile
```

-	Layers:
	-	`sha256:4c8a944dde5cdd04839954a32c8b99559a5a16fa50042b8054624069d071685b`  
		Last Modified: Mon, 05 Oct 2026 21:52:57 GMT  
		Size: 373.1 KB (373091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a826fa648e78e469abdcb00bf12a11c49f2456426e1a743a552294bb880a96e9`  
		Last Modified: Mon, 05 Oct 2026 21:52:57 GMT  
		Size: 19.0 KB (19034 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:3-jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:56158dd8ef8398562e81aac22a89e0d6b1ff4acec02ba6682cc92f27b56efb00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152804606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7957846747c2d75fd543e8b668be3eccce7115d574e9843b9b18a2369d65656a`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:51 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:51 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:51 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:41:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 05 Oct 2026 21:51:37 GMT
CMD ["groovysh"]
# Mon, 05 Oct 2026 21:51:37 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 05 Oct 2026 21:51:37 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Mon, 05 Oct 2026 21:51:37 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 05 Oct 2026 21:51:37 GMT
WORKDIR /home/groovy
# Mon, 05 Oct 2026 21:51:37 GMT
ENV GROOVY_VERSION=3.0.25
# Mon, 05 Oct 2026 21:51:47 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Mon, 05 Oct 2026 21:51:47 GMT
USER 1000:1000
# Mon, 05 Oct 2026 21:51:47 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762b762ecdceab29c214740106f1993abe0037630afbe6fcc1b2df53a5b2c538`  
		Last Modified: Mon, 05 Oct 2026 21:42:05 GMT  
		Size: 100.7 MB (100662832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76ba78c2c1dfaa59a2685ce18d6921359350fceca6adebd1ac34c38135452bc`  
		Last Modified: Mon, 05 Oct 2026 21:51:57 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff23a00b9c6409e1873ada769f883fe96bc8d643df06a7a8ed7eb3739a7efca`  
		Last Modified: Mon, 05 Oct 2026 21:51:59 GMT  
		Size: 48.0 MB (47954516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c45d38500deb9d7180222d2b653901bd2170e6b5e5b5ea20039541caab37ded`  
		Last Modified: Mon, 05 Oct 2026 21:51:57 GMT  
		Size: 136.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:29cae161e6e3898770d885c1855023f7cb720cbc2e59b8ee324716c7c2721772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.7 KB (391717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce5a135fd6d43229997b7f1549154dba5db7a0895518df406ee05a79ee24980`

```dockerfile
```

-	Layers:
	-	`sha256:2d0c7c4be9c45e9f571b141a9a1ae700c1893f79b06362e3b8905123fa0e58ec`  
		Last Modified: Mon, 05 Oct 2026 21:51:57 GMT  
		Size: 372.6 KB (372561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:feb1b4fd7022ca469b12c46592945ee1e0e7e3700e3e0ac840578a97a80a3a4c`  
		Last Modified: Mon, 05 Oct 2026 21:51:57 GMT  
		Size: 19.2 KB (19156 bytes)  
		MIME: application/vnd.in-toto+json
