## `groovy:4-jdk8-alpine`

```console
$ docker pull groovy@sha256:5ca8186e799f947e77133c9696962b721ea873009574e867d8e712f39aa85e7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:4-jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:51df7f2229b17f624ea9dcd4b46314f7ed4eb07a751ef3128a3d04b463797f0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137991534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2c52a56a76acd54c2d003e401b6a39ee3b52c9c5f6840995bf98d77ecf4b0b`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:22 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:22 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:22 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 27 Oct 2026 17:09:40 GMT
CMD ["groovysh"]
# Tue, 27 Oct 2026 17:09:40 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 27 Oct 2026 17:09:40 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Tue, 27 Oct 2026 17:09:40 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 27 Oct 2026 17:09:40 GMT
WORKDIR /home/groovy
# Tue, 27 Oct 2026 17:09:40 GMT
ENV GROOVY_VERSION=4.0.33
# Tue, 27 Oct 2026 17:11:36 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Tue, 27 Oct 2026 17:11:36 GMT
USER 1000:1000
# Tue, 27 Oct 2026 17:11:36 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803802772f8cdebf970a8549a5ec78d7a5078763c1862201da5ed0d089b54df9`  
		Last Modified: Tue, 27 Oct 2026 16:39:36 GMT  
		Size: 100.9 MB (100865877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42ab296ab8210105ec59b67e707bbe24e4e6ec248ac4eb61eafbf4e42f2a058`  
		Last Modified: Tue, 27 Oct 2026 17:11:44 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab78778761dcc13ec0deb8a94ebbdb7c96afdae66df2e19c8223be0e06f5642`  
		Last Modified: Tue, 27 Oct 2026 17:11:45 GMT  
		Size: 33.3 MB (33272232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189f4bb8bb8641aec346438c65fc36ac0ccb1bba674df7776fbe1191dc76153`  
		Last Modified: Tue, 27 Oct 2026 17:11:44 GMT  
		Size: 135.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:4-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:d9a6e26e6478417a5cb65cc35ec4eabea3c531e6ed434c4159f6cb2405b33064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 KB (350664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea2da9aa603409690949580be6d5a37f1214936aee5bbc016cdf8d04ed9dcb4`

```dockerfile
```

-	Layers:
	-	`sha256:c5febc3144e72db587fdfc5843d7e323218e47ca09afe34b38ec5b2c77e6ee07`  
		Last Modified: Tue, 27 Oct 2026 17:11:44 GMT  
		Size: 331.3 KB (331322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb380b484023f9e1afb56796509d7120d3124e2c11d6591ebe0baa6fbaa0dded`  
		Last Modified: Tue, 27 Oct 2026 17:11:44 GMT  
		Size: 19.3 KB (19342 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:4-jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:3569b45264ce318c68de5127a06fcc16d37ec581b0a30f5c815897f8d3979c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138134821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46cbc9a46bf3fc9c99fbce6794dd2a9ca83c0064b39c836c559f72c38da66b0`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:39:59 GMT
ARG version=8.512.09.1
# Tue, 27 Oct 2026 16:39:59 GMT
# ARGS: version=8.512.09.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:39:59 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 27 Oct 2026 17:08:05 GMT
CMD ["groovysh"]
# Tue, 27 Oct 2026 17:08:05 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 27 Oct 2026 17:08:05 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Tue, 27 Oct 2026 17:08:05 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 27 Oct 2026 17:08:05 GMT
WORKDIR /home/groovy
# Tue, 27 Oct 2026 17:08:05 GMT
ENV GROOVY_VERSION=4.0.33
# Tue, 27 Oct 2026 17:10:46 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Tue, 27 Oct 2026 17:10:46 GMT
USER 1000:1000
# Tue, 27 Oct 2026 17:10:47 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a1a9981af65a0f460fca6180c4ff82aaa0e895030a5af5e0ac93b1db230e40`  
		Last Modified: Tue, 27 Oct 2026 16:40:13 GMT  
		Size: 100.7 MB (100694550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3582cb76a3ce3dc20baf888f1ff2ea26784d92471720a4be61529312cfc5b6`  
		Last Modified: Tue, 27 Oct 2026 17:10:55 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96dddaf567e30e010476602b948b85c5260492ca3417a6b5ff7c4019e25af965`  
		Last Modified: Tue, 27 Oct 2026 17:10:56 GMT  
		Size: 33.2 MB (33249574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356e5c81dfa6b936cddbbc5c1c5121f397bf01c96e4240058045a47684167cc6`  
		Last Modified: Tue, 27 Oct 2026 17:10:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:4-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:0717e7048b2473725314a5f357b193032d0f53ef123e6c3530eaf2b0d8b9b9b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.3 KB (350280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189e78a2d36a86515379804bc3ca1281f0bcf976ebc4bf25ef319c120ae405a3`

```dockerfile
```

-	Layers:
	-	`sha256:4f3e58b11420af15984497ad6465ecb422a6d5e289c60623ff8060017e4cbca0`  
		Last Modified: Tue, 27 Oct 2026 17:10:55 GMT  
		Size: 330.8 KB (330804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cbace1f32c81c341f0b48c34f86126fda2b2f14cd391816491bcc7d6ca1df98`  
		Last Modified: Tue, 27 Oct 2026 17:10:55 GMT  
		Size: 19.5 KB (19476 bytes)  
		MIME: application/vnd.in-toto+json
