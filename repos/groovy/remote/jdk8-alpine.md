## `groovy:jdk8-alpine`

```console
$ docker pull groovy@sha256:17a8457e73609208d10cf93e2745e7d957e19419226e2b79af154f60828dfb31
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:4d83dfe1f99bce5eed330bef49948e887c4a4f8829017fe9a610e5b0392be29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137951984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7acaaf50b7591ebbab7b33b0fcbd45be36de8985efb84679a28a057bf741230`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:14:38 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 21:14:38 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:14:38 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:14:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:14:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 21 Oct 2026 21:42:16 GMT
CMD ["groovysh"]
# Wed, 21 Oct 2026 21:42:16 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 21 Oct 2026 21:42:16 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 21 Oct 2026 21:42:16 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 21 Oct 2026 21:42:16 GMT
WORKDIR /home/groovy
# Wed, 21 Oct 2026 21:42:16 GMT
ENV GROOVY_VERSION=4.0.33
# Wed, 21 Oct 2026 21:42:24 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Wed, 21 Oct 2026 21:42:24 GMT
USER 1000:1000
# Wed, 21 Oct 2026 21:42:25 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfd9dee668d27e815e13aaffad4585c7f0deb3262a6088a7f357f87cb4ae6b4`  
		Last Modified: Wed, 21 Oct 2026 21:14:51 GMT  
		Size: 100.8 MB (100827039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddbe798525d1f744bc0b806307147931cfc155f0d94acccb1f4b48d8b4c3ae4`  
		Last Modified: Wed, 21 Oct 2026 21:42:32 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4942848924c9f8e4ea9c8ddf5511a54c7937e107bbe73eaac30fdf3440399a7e`  
		Last Modified: Wed, 21 Oct 2026 21:42:35 GMT  
		Size: 33.3 MB (33271518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b055d8f3613378086c5299bc1881eb65637113f22e3df55e5efea7ccb45732a`  
		Last Modified: Wed, 21 Oct 2026 21:42:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:19b0d149d8ba99337405872027b639c2028233a7965ef66e6f66136dfe7f1083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 KB (350664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:001a5587e8509af2588bf7bb1dfe4eae0bfd7f3dcec59613cb331623f6d1e466`

```dockerfile
```

-	Layers:
	-	`sha256:896c5dca82d5579e7def8ce7817eb9f25ee272f3e2c3e524950d2086661121f1`  
		Last Modified: Wed, 21 Oct 2026 21:42:32 GMT  
		Size: 331.3 KB (331322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cc40e623a6e81346db2da92020e6cefb77ab8f2990b1bebac55c3e0c4e74a1a`  
		Last Modified: Wed, 21 Oct 2026 21:42:32 GMT  
		Size: 19.3 KB (19342 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:4ecfcef45d4f54530e81e837b36a7e82d98cc1db3c27a4b6709c90911f0c29bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138102310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8840a6ed22fd66f1e0b694ff7226f68766be4afcdcdb89c5366e0945aa586796`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:15 GMT
ARG version=8.504.04.1
# Wed, 21 Oct 2026 21:15:15 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:15 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 21 Oct 2026 22:24:38 GMT
CMD ["groovysh"]
# Wed, 21 Oct 2026 22:24:38 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 21 Oct 2026 22:24:38 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 21 Oct 2026 22:24:38 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 21 Oct 2026 22:24:38 GMT
WORKDIR /home/groovy
# Wed, 21 Oct 2026 22:24:38 GMT
ENV GROOVY_VERSION=4.0.33
# Wed, 21 Oct 2026 22:24:48 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Wed, 21 Oct 2026 22:24:48 GMT
USER 1000:1000
# Wed, 21 Oct 2026 22:24:48 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a911483ad3082ae0bbb0bf29f235a2d309e81b932423a3c777a5fdfc9b44c1d8`  
		Last Modified: Wed, 21 Oct 2026 21:15:30 GMT  
		Size: 100.7 MB (100662803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f7a5d75f3f81f15805c68561f2cef46c1b414ae1ad914c0c68a99d432919e6`  
		Last Modified: Wed, 21 Oct 2026 22:24:57 GMT  
		Size: 1.0 KB (1029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206ca6b99d4505c255d1f99b542c53c9c51380a6f865ea9a80cda56b4234e0cd`  
		Last Modified: Wed, 21 Oct 2026 22:24:58 GMT  
		Size: 33.2 MB (33248815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a116c9c814d929de492250d9c199828c67f0da38a4eeb3c28b9293d13b1c933`  
		Last Modified: Wed, 21 Oct 2026 22:24:57 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:551692807b39e422dde62805ab880d23709067fd5795f0970e45142d598f3e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.3 KB (350280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac858fc2b57f0fffb296c85849f898527d50990cfacbf28cb73198a56913edc`

```dockerfile
```

-	Layers:
	-	`sha256:ded036d34c5f9e06a7b7e5a5b3219bbff1d28d1f584e1969a600e58c853ccd36`  
		Last Modified: Wed, 21 Oct 2026 22:24:57 GMT  
		Size: 330.8 KB (330804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cac6bfbb0870ec82056e85521615c8bf7498e0774b8ac89703da1bb31e5db17c`  
		Last Modified: Wed, 21 Oct 2026 22:24:57 GMT  
		Size: 19.5 KB (19476 bytes)  
		MIME: application/vnd.in-toto+json
