## `groovy:3-jdk8-alpine`

```console
$ docker pull groovy@sha256:dc253fee0ffa7437db7186e77a1dde60ae5fb4e2904711c8de3ea26dea379538
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:3-jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:85985bcf41b7fb57b82fbe08729e60ca9512da9d4ad65bd60534db947e41f2b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152697597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3722f4b53286c7315bcc7d61ee50fe40961bc519e65e416216bd6f773b1e100f`
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
# Thu, 05 Nov 2026 20:21:58 GMT
CMD ["groovysh"]
# Thu, 05 Nov 2026 20:21:58 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 05 Nov 2026 20:21:58 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 05 Nov 2026 20:21:58 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 05 Nov 2026 20:21:58 GMT
WORKDIR /home/groovy
# Thu, 05 Nov 2026 20:21:58 GMT
ENV GROOVY_VERSION=3.0.25
# Thu, 05 Nov 2026 20:22:35 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 05 Nov 2026 20:22:35 GMT
USER 1000:1000
# Thu, 05 Nov 2026 20:22:35 GMT
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
	-	`sha256:62abb30a12425359e1aa7c1bb93dde2542de9350644f0e9b1473222fb56905cf`  
		Last Modified: Thu, 05 Nov 2026 20:22:45 GMT  
		Size: 1.0 KB (1030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d40d6b7ef4fe6ee2fbee1a6eade1c7fa1d2ca222a7e4565315b39a8a444853b`  
		Last Modified: Thu, 05 Nov 2026 20:22:46 GMT  
		Size: 48.0 MB (47978026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe91c518a969006674a595e40e5d0dfb779747e78596788f83579ff0e52afe9`  
		Last Modified: Thu, 05 Nov 2026 20:22:45 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:b0f5c4a6bbfb1549f311a5e71c58db741affa594f5a2e720df5a5c9f387658fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 KB (392125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cbf70a5c07bc3e6c9bb75f725fb543ee960ad05882fa903d12e084635b9cec4`

```dockerfile
```

-	Layers:
	-	`sha256:cb952e41c34b9905b187d266d72b1452c80569f65db47f89e5f18607e83df14c`  
		Last Modified: Thu, 05 Nov 2026 20:22:45 GMT  
		Size: 373.1 KB (373091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a67e7de4c9cb90494dfe04d983dde6122369a116c09aaa7be0f6abeb218ff102`  
		Last Modified: Thu, 05 Nov 2026 20:22:45 GMT  
		Size: 19.0 KB (19034 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:3-jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:4f4eee1650ad3c6297caaca27be3b20dbeb683afa0ca92d0c47680f90e2eee5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152840569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf69ee0326d730938e79bb3a715de35c426e808be4a4ecad721cc62686fab4a`
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
ENV GROOVY_VERSION=3.0.25
# Tue, 27 Oct 2026 17:14:37 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Tue, 27 Oct 2026 17:14:37 GMT
USER 1000:1000
# Tue, 27 Oct 2026 17:14:38 GMT
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
	-	`sha256:06a6dd6bbf58df8c2e9333c49bba8b6fc6ffd21ded780d095a28fd9610e187e0`  
		Last Modified: Tue, 27 Oct 2026 17:14:48 GMT  
		Size: 48.0 MB (47955322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c85a08a2b1346d51d92237af5a2023e5f83c39e4efff6ca9c138cf2b692a85`  
		Last Modified: Tue, 27 Oct 2026 17:14:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:8e475b84a19d8ec02f8ca12293f65e2222f3c28971034aa1acd09455d7c631aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.7 KB (391716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb8b37f9632b317b4755812ad2babb7943a6bbb0a5ca5b2f83dd2f516363fc2`

```dockerfile
```

-	Layers:
	-	`sha256:2e3ffb4dfa131ab01f3edc5a26ec7a24baf666de92ba80aea385c54d7f06a4e9`  
		Last Modified: Tue, 27 Oct 2026 17:14:46 GMT  
		Size: 372.6 KB (372561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0926b0b6a77dea6b5a8a7ed90a5ae1f21274c2974011c74e99e619ca929acd8`  
		Last Modified: Tue, 27 Oct 2026 17:14:46 GMT  
		Size: 19.2 KB (19155 bytes)  
		MIME: application/vnd.in-toto+json
