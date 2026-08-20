## `groovy:jdk8-alpine`

```console
$ docker pull groovy@sha256:e6c52f74ff33e8a423b554040b63bc1b0bd1bf08d042667a8a1dc69f978e8c74
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `groovy:jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:f6f9e25e18b9d464476d9eb6265de2804d00dd2fcba807c171594abc6dd02724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 MB (135015434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe47abc1d15634bf8f8146bc83b90f265dc9d208cf07026b4b1fe42a84d4a1c`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:46 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:18:46 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:46 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 20 Aug 2026 18:03:05 GMT
CMD ["groovysh"]
# Thu, 20 Aug 2026 18:03:05 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 20 Aug 2026 18:03:05 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 20 Aug 2026 18:03:05 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 20 Aug 2026 18:03:05 GMT
WORKDIR /home/groovy
# Thu, 20 Aug 2026 18:03:05 GMT
ENV GROOVY_VERSION=4.0.33
# Thu, 20 Aug 2026 18:09:56 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 20 Aug 2026 18:09:56 GMT
USER 1000:1000
# Thu, 20 Aug 2026 18:09:56 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963b697af2e55cca7ef321ed87c61228b875527d34133d3061a874b6a607d95e`  
		Last Modified: Thu, 20 Aug 2026 17:19:00 GMT  
		Size: 100.8 MB (100817953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208eebf2508dc14bab02d3eb873ec84b4318aca95853a0a748cedd8fddfd3dc3`  
		Last Modified: Thu, 20 Aug 2026 18:10:04 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcb9dc8caee725dcca5f636c853da139a1c08d5f2e2cf5e9e80620d0c476cdf`  
		Last Modified: Thu, 20 Aug 2026 18:10:05 GMT  
		Size: 30.4 MB (30351859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdb7d160f3397f2ab514964958ed51d19aa70b0c863789194c93c1dca137a29`  
		Last Modified: Thu, 20 Aug 2026 18:10:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:83f9cd2464c6fcdf1df24b5f8fe4f34bbaf8d6c4461b3d0a94e6e39ab49d8e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.7 KB (350664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2516ccb32ff6d6e32a75bdf8ca479f8782548f941734417ab14746957074dfa3`

```dockerfile
```

-	Layers:
	-	`sha256:3800d7495d7663f52afea411bff643fe3ae313da381fc6718cf29750b59480d6`  
		Last Modified: Thu, 20 Aug 2026 18:10:04 GMT  
		Size: 331.3 KB (331322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9c45458012e5983e7af9cdb1d8c5cf2090a4899d97a44ea03831bef74f33590`  
		Last Modified: Thu, 20 Aug 2026 18:10:04 GMT  
		Size: 19.3 KB (19342 bytes)  
		MIME: application/vnd.in-toto+json

### `groovy:jdk8-alpine` - linux; arm64 variant v8

```console
$ docker pull groovy@sha256:d2838a7cf886efb53892c1967490d9f1e9dc46664b2f2ae40350cb5d046d47e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135185691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:857e7f1b3f96d9eca8796ca7a502a2a6aea146ee408517a1d08d9fb9f93d5b2c`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:39 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:39 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:39 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:15:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 20 Aug 2026 17:21:03 GMT
CMD ["groovysh"]
# Thu, 20 Aug 2026 17:21:03 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 20 Aug 2026 17:21:03 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Thu, 20 Aug 2026 17:21:03 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 20 Aug 2026 17:21:03 GMT
WORKDIR /home/groovy
# Thu, 20 Aug 2026 17:21:03 GMT
ENV GROOVY_VERSION=4.0.33
# Thu, 20 Aug 2026 17:28:00 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy # buildkit
# Thu, 20 Aug 2026 17:28:00 GMT
USER 1000:1000
# Thu, 20 Aug 2026 17:28:00 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357b7e78384d3f52fe5912d547084cc7b54b1db1826917305888ed5a4931352b`  
		Last Modified: Thu, 20 Aug 2026 17:15:53 GMT  
		Size: 100.7 MB (100650777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecfd692cc0de14156ccbc4cfa78bf920889886bbf722d66c20f086a0b74a00e`  
		Last Modified: Thu, 20 Aug 2026 17:28:09 GMT  
		Size: 1.0 KB (1031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53404432027a3bbc8b748be8ed7e8f56906f8ada80208f22fb5b84d45cef4c33`  
		Last Modified: Thu, 20 Aug 2026 17:28:10 GMT  
		Size: 30.4 MB (30351854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef45aa68933e55b2107235265a6d0369f7f2bf0075883f75cb2ba316e6244324`  
		Last Modified: Thu, 20 Aug 2026 17:28:09 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk8-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:03919edcc189f97f9571a82f81991ed660a89bea8a06942a3037ae9686323e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.3 KB (350280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3591ee394286637f16068f8f78c47228fda9e5f908e19a26f8dadd77f93027`

```dockerfile
```

-	Layers:
	-	`sha256:3c9d7af5a49a12312415f5964c2c1d8bd8fd25ef59e6bb823fc1f854e2b65aa6`  
		Last Modified: Thu, 20 Aug 2026 17:28:09 GMT  
		Size: 330.8 KB (330804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3012e83b35405f88b2bc4fdee87356699b793753b331e02818b6aea3bce7ab3`  
		Last Modified: Thu, 20 Aug 2026 17:28:09 GMT  
		Size: 19.5 KB (19476 bytes)  
		MIME: application/vnd.in-toto+json
