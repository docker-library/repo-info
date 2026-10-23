## `groovy:4-jdk8-alpine`

```console
$ docker pull groovy@sha256:8335275115b4f1434723f8524ccca44a6e18fd795bfcb3091cab7f1f2371bdf6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:4-jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:8b14b3cdd1049669d71689d1853071879faa482669d5437432f618035bfc3dc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137993550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ded14a79f089a8d3da541e39abcd191b6ebf7eda18b7bc249a1c8a81c7e4fc2`
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
# Fri, 23 Oct 2026 18:20:26 GMT
CMD ["groovysh"]
# Fri, 23 Oct 2026 18:20:26 GMT
ENV GROOVY_HOME=/opt/groovy
# Fri, 23 Oct 2026 18:20:26 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Fri, 23 Oct 2026 18:20:26 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Fri, 23 Oct 2026 18:20:26 GMT
WORKDIR /home/groovy
# Fri, 23 Oct 2026 18:20:26 GMT
ENV GROOVY_VERSION=4.0.33
# Fri, 23 Oct 2026 18:21:15 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Fri, 23 Oct 2026 18:21:15 GMT
USER 1000:1000
# Fri, 23 Oct 2026 18:21:15 GMT
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
	-	`sha256:93279a758fe51e9e1f01b2570c92f2585aca84613f8a87e590586df5d4214665`  
		Last Modified: Fri, 23 Oct 2026 18:21:22 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9505fc461154ff1d9321264e460d5b3186b3468d4147eddff5961029ce6daa6b`  
		Last Modified: Fri, 23 Oct 2026 18:21:24 GMT  
		Size: 33.3 MB (33271921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d124222190062a709174fd72c7c957364b762e1cbeaa19adf2a82bcafcc58457`  
		Last Modified: Fri, 23 Oct 2026 18:21:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:4-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:f4cc899e689fee2f2ea9fa4e08f41fea9e29712b44c93767160c9588f0fd3461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 KB (350664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d009495649f6691eb4b181b5d33c2e7e6a73a0fbba3606172cc28f1c22c1b4a4`

```dockerfile
```

-	Layers:
	-	`sha256:789872c76f37336695dbf9467fe89106d63eb068cbea9b4156101ac3261d6b30`  
		Last Modified: Fri, 23 Oct 2026 18:21:23 GMT  
		Size: 331.3 KB (331322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b07326b0d5b3c34f910c91c4d9116059c3f8791d4b873c742342dcdbbd0e5aa`  
		Last Modified: Fri, 23 Oct 2026 18:21:23 GMT  
		Size: 19.3 KB (19342 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:4-jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:d3498758c5dd6e38e1a77a059704d832f44052157f94f8d12e87e60ddafcd3a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138137806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d698c0a29a6f40ff068af2add7ff862f9f6ca4681315ad28b6de83a24fdcdf`
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
# Fri, 23 Oct 2026 18:20:21 GMT
CMD ["groovysh"]
# Fri, 23 Oct 2026 18:20:21 GMT
ENV GROOVY_HOME=/opt/groovy
# Fri, 23 Oct 2026 18:20:21 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Fri, 23 Oct 2026 18:20:21 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Fri, 23 Oct 2026 18:20:21 GMT
WORKDIR /home/groovy
# Fri, 23 Oct 2026 18:20:21 GMT
ENV GROOVY_VERSION=4.0.33
# Fri, 23 Oct 2026 18:21:24 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Fri, 23 Oct 2026 18:21:24 GMT
USER 1000:1000
# Fri, 23 Oct 2026 18:21:24 GMT
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
	-	`sha256:90c599cf23d7e2e08335b7d58f8b9cde0f62ed0232b57d1c1240fa127d12b3b0`  
		Last Modified: Fri, 23 Oct 2026 18:21:32 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67404865988999880688a1554f3c43d21ccf06094711059df55b3cb4634bc28`  
		Last Modified: Fri, 23 Oct 2026 18:21:33 GMT  
		Size: 33.2 MB (33249226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d6568dc3b16e27cf859cde805154b6544848a86b4d6f30cd55935f8d7135b9`  
		Last Modified: Fri, 23 Oct 2026 18:21:32 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:4-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:df631a42cd5a2123af2a45e103fedbc0068e3a7b39c3dc866648c469ff77dd80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.3 KB (350280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cd19327c32bd331c17e5c4c18634708c1a526143988b465f9b0bdf60d326c02`

```dockerfile
```

-	Layers:
	-	`sha256:326b31cfc32f8e86e4450fa492af21cb405f996863a1feb3a8a372afa0a5ad74`  
		Last Modified: Fri, 23 Oct 2026 18:21:32 GMT  
		Size: 330.8 KB (330804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c67199c6081d7260ac3d096764f9bb58d3a11d5f15e34aa679025febcd39c45b`  
		Last Modified: Fri, 23 Oct 2026 18:21:32 GMT  
		Size: 19.5 KB (19476 bytes)  
		MIME: application/vnd.in-toto+json
