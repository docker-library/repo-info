## `groovy:3-jdk8-alpine`

```console
$ docker pull groovy@sha256:bcb6dde9e0c83f34788fb5cd618d0801093b52e94702c4ac50fda3f8a8add0a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:3-jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:c6f3fe0e476e5a2a7a35a7d65c413a549fa2aaa661e9b7b02d4f0d2eedd11153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152699208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd62fb7f0d092e08ed3f2ff504e5395b6b84ace7182191b4ab648c1ad657121f`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:24 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:24 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:24 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 23 Oct 2026 18:20:33 GMT
CMD ["groovysh"]
# Fri, 23 Oct 2026 18:20:33 GMT
ENV GROOVY_HOME=/opt/groovy
# Fri, 23 Oct 2026 18:20:33 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Fri, 23 Oct 2026 18:20:33 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Fri, 23 Oct 2026 18:20:33 GMT
WORKDIR /home/groovy
# Fri, 23 Oct 2026 18:20:33 GMT
ENV GROOVY_VERSION=3.0.25
# Fri, 23 Oct 2026 18:21:58 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Fri, 23 Oct 2026 18:21:58 GMT
USER 1000:1000
# Fri, 23 Oct 2026 18:21:59 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edda6b9e247383b9826ddf5e2e87380a4bb6e2aefec33e36bf9a8083043fe65`  
		Last Modified: Fri, 23 Oct 2026 18:07:38 GMT  
		Size: 100.9 MB (100868204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52587500dd321da6c77a61a8bd5132c9948385a0a0c0dc487bb62c001b636462`  
		Last Modified: Fri, 23 Oct 2026 18:22:07 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ed31f935841ddd429d34ae4c95042154703b1519a1c818e0f1c853c922db41`  
		Last Modified: Fri, 23 Oct 2026 18:22:09 GMT  
		Size: 48.0 MB (47977577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e1d7293d86fcc284482eafe61eda75fa25d214186ced292631842b85919ad9`  
		Last Modified: Fri, 23 Oct 2026 18:22:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:68e2313771a5589d279dd03a2ecbd900f3fab7178ca31b0240586da0b48bb4a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 KB (392125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ca7c1bd16e804faf4a25337012393937434373512b921e69f16a9f3df7b933`

```dockerfile
```

-	Layers:
	-	`sha256:a4f473de03dce9a31a907ceb265375012318ee86b0f78ab740edd4a6cc368b6f`  
		Last Modified: Fri, 23 Oct 2026 18:22:07 GMT  
		Size: 373.1 KB (373091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b79ac36f83ff2615dba6b2993dbba293f00bf2c53b2fbcb71cd167c4950b3a5`  
		Last Modified: Fri, 23 Oct 2026 18:22:07 GMT  
		Size: 19.0 KB (19034 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:3-jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:40a2478045eacf2f29edfcbe707004c98eb53a7dc63fba0515a89cd9faac3d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152843544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241cfe92606fbb0ad6a05d866af52b5bd7cc79fd38959f0fdaf990ef01dc898a`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:03 GMT
ARG version=8.512.08.1
# Fri, 23 Oct 2026 18:07:03 GMT
# ARGS: version=8.512.08.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:03 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 23 Oct 2026 18:20:29 GMT
CMD ["groovysh"]
# Fri, 23 Oct 2026 18:20:29 GMT
ENV GROOVY_HOME=/opt/groovy
# Fri, 23 Oct 2026 18:20:29 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Fri, 23 Oct 2026 18:20:29 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Fri, 23 Oct 2026 18:20:29 GMT
WORKDIR /home/groovy
# Fri, 23 Oct 2026 18:20:29 GMT
ENV GROOVY_VERSION=3.0.25
# Fri, 23 Oct 2026 18:21:40 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Fri, 23 Oct 2026 18:21:40 GMT
USER 1000:1000
# Fri, 23 Oct 2026 18:21:40 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3bfc7115a18f84e87dba14f5eba996f2d6ba367aaf0fa0c74964f5989a0c69`  
		Last Modified: Fri, 23 Oct 2026 18:07:17 GMT  
		Size: 100.7 MB (100697887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4788e314d08818de80a5464afff5d793db2abcc4d8835f4947926a50efe67f0a`  
		Last Modified: Fri, 23 Oct 2026 18:21:49 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e19d05359c7d4ec679069fc448f00bdeae6d1816ed2695341762e13181dee08`  
		Last Modified: Fri, 23 Oct 2026 18:21:51 GMT  
		Size: 48.0 MB (47954963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2b9afab2c157e671f21ac0036c37aec4293c87017987dc10dd0eb7f05f8edb`  
		Last Modified: Fri, 23 Oct 2026 18:21:49 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:86780e7fd1bf17377348c88ef626fe7d65967ea7463ae5ba4f72ea2484c3565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.7 KB (391717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc8525a9ecc0940102e9d9d62642d80deb2bbe81986e5b92acf874dc559061b`

```dockerfile
```

-	Layers:
	-	`sha256:b0e927b9c91e41da2748d3af1e3f9e0d8afa97045707c41b24a8875f772c0847`  
		Last Modified: Fri, 23 Oct 2026 18:21:49 GMT  
		Size: 372.6 KB (372561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eff3a0d29ab9d2a22b7d3ff52c8d6bb45a0627621fce3cad62ff37ad9cd31a08`  
		Last Modified: Fri, 23 Oct 2026 18:21:49 GMT  
		Size: 19.2 KB (19156 bytes)  
		MIME: application/vnd.in-toto+json
