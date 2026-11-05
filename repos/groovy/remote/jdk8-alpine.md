## `groovy:jdk8-alpine`

```console
$ docker pull groovy@sha256:6e305e19733edc41dd302070580372c97b6aa5cf5613993b2624f0eb70dd4dc1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:6dcdf99d813ba860ae1d77c61b6b9adb7854b3a64a01ebeaac63169cec9f1d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137991808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a61d4b9a59bb02532cab265f07482255e56d3061d16cc82a3f01e423a19c35`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:09 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:12:09 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:12:09 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:12:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:12:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 20:21:41 GMT
CMD ["groovysh"]
# Thu, 05 Nov 2026 20:21:41 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 05 Nov 2026 20:21:41 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 05 Nov 2026 20:21:41 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 05 Nov 2026 20:21:41 GMT
WORKDIR /home/groovy
# Thu, 05 Nov 2026 20:21:41 GMT
ENV GROOVY_VERSION=4.0.33
# Thu, 05 Nov 2026 20:22:08 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 05 Nov 2026 20:22:08 GMT
USER 1000:1000
# Thu, 05 Nov 2026 20:22:09 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db97089e58e8f5aa1cd0b3ca9a89ff575788aad1b75ad21555146e288c856ed0`  
		Last Modified: Thu, 05 Nov 2026 19:12:24 GMT  
		Size: 100.9 MB (100865783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54150c0668676c1a0ae93ad639d2187582d94a8ff0032c3707bab9ef47162b1e`  
		Last Modified: Thu, 05 Nov 2026 20:22:17 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9e6a46ab750de7f61c2efc88f2af0a1036d35f16c935a1866774a73cd919a5`  
		Last Modified: Thu, 05 Nov 2026 20:22:19 GMT  
		Size: 33.3 MB (33272234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a427e2ae28f1ab4e54950ce8d6c031d686fae174ce31d6804876f68864b5846c`  
		Last Modified: Thu, 05 Nov 2026 20:22:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:f7390b4cdce20fe080be5eac01bca5c361d67faf22f26ce7d2d1a3eb16d3c986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 KB (350663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891e2e6601af99f597e3c8e32ffea2383e0dd04f70eb3673dd21ae99afc79493`

```dockerfile
```

-	Layers:
	-	`sha256:dc47ea98c6e7be2b2f32d7c16ff076e74fb8987fa126cc15efbdcf96aea79188`  
		Last Modified: Thu, 05 Nov 2026 20:22:18 GMT  
		Size: 331.3 KB (331322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d048cabe22b2fa29e750974a84e92a623d32aa5b294e4f5c9e0cc7b92637c7ee`  
		Last Modified: Thu, 05 Nov 2026 20:22:17 GMT  
		Size: 19.3 KB (19341 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:86f763437e4b0a2d7e96c0df1914fd7a3875863e167cf26c9f6189052679f020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138135528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0836386df8880e85cc92b727eca38113a2423846a57a22534fef7a2058fd32de`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:08:01 GMT
ARG version=8.512.09.1
# Thu, 05 Nov 2026 19:08:01 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:08:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:08:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:08:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 21:53:14 GMT
CMD ["groovysh"]
# Thu, 05 Nov 2026 21:53:14 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 05 Nov 2026 21:53:14 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 05 Nov 2026 21:53:14 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 05 Nov 2026 21:53:14 GMT
WORKDIR /home/groovy
# Thu, 05 Nov 2026 21:53:14 GMT
ENV GROOVY_VERSION=4.0.33
# Thu, 05 Nov 2026 21:53:40 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 05 Nov 2026 21:53:40 GMT
USER 1000:1000
# Thu, 05 Nov 2026 21:53:40 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df44ce2a2eec203b1bb3b688ab72f19ebef1b2de5036bbd49c070ffc86f3760`  
		Last Modified: Thu, 05 Nov 2026 19:08:15 GMT  
		Size: 100.7 MB (100694533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d6d4794d21e734a641e304cd31164739e69316f7fc71f99482d19994cdef03`  
		Last Modified: Thu, 05 Nov 2026 21:53:49 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bda39f96047c3445e5637b8a580bb3ce8f5a0651e5b8e357be1e5d963760b4`  
		Last Modified: Thu, 05 Nov 2026 21:53:50 GMT  
		Size: 33.2 MB (33249575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd6cc19cb6052ce4285680822fab9512c064b827292e621cc61226cb9d4a975`  
		Last Modified: Thu, 05 Nov 2026 21:53:49 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:b66bf8a355703f69a1cdd3628aa3beee2baf026cb5767389e27ee1b12287d375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.3 KB (350278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9effa291005872dbda10c3716baeeb482edaf896328f4da7f61fd75ae6974f59`

```dockerfile
```

-	Layers:
	-	`sha256:955eb985e9897bab805ede69ca8a8c07846d3a9ea6c425f06c9d5527dfaa3bd6`  
		Last Modified: Thu, 05 Nov 2026 21:53:49 GMT  
		Size: 330.8 KB (330804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfdf29a21067f00c68ad8b645766ec5cf85638b5861da157af0bf29ecc2f946b`  
		Last Modified: Thu, 05 Nov 2026 21:53:49 GMT  
		Size: 19.5 KB (19474 bytes)  
		MIME: application/vnd.in-toto+json
