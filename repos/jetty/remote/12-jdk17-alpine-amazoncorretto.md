## `jetty:12-jdk17-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:4b0433e82f0f964843897bc690d402960ddc8b57c3632d5846cbe4cf17905c4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:8fe76ed3bc6b3da6b7d70b0e74f504f114bb45b63bf1daea1c076929a6307a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.2 MB (208210783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa796853d3a21c7d6214a282772991671161d1f3a72fd0cc160543cfbfd9928`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:19 GMT
ARG version=17.0.20.12.1
# Wed, 21 Oct 2026 22:56:19 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:19 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:56:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 21 Oct 2026 23:32:04 GMT
ENV JETTY_VERSION=12.1.14
# Wed, 21 Oct 2026 23:32:04 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 21 Oct 2026 23:32:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 21 Oct 2026 23:32:04 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 21 Oct 2026 23:32:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 21 Oct 2026 23:32:04 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Wed, 21 Oct 2026 23:32:04 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 21 Oct 2026 23:32:04 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 21 Oct 2026 23:32:04 GMT
WORKDIR /var/lib/jetty
# Wed, 21 Oct 2026 23:32:04 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 21 Oct 2026 23:32:04 GMT
USER jetty
# Wed, 21 Oct 2026 23:32:04 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 21 Oct 2026 23:32:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:32:04 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd62eb337d388c4b18b1f14b71ca7b7b6c97c4a1da30cda8bbafa4f4b99423c`  
		Last Modified: Wed, 21 Oct 2026 22:56:36 GMT  
		Size: 149.0 MB (148963631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f1a5f2d7e4bdf23a65c82fa782751c6ccc3f4774749e6c1b40225f2afa7770`  
		Last Modified: Wed, 21 Oct 2026 23:32:14 GMT  
		Size: 55.4 MB (55392166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259ddf7b59f9d1f2a9239e1b5a3aa5e4f210fe2d500137bd0b9989694d298c3d`  
		Last Modified: Wed, 21 Oct 2026 23:32:13 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:4868e79676e96a1bd9b4fe9342f912f858d302d01363b1c34f5af6bbaaa27ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1033184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41206a10825520df03fe00ffe777016735909945da51676d125faad83c197475`

```dockerfile
```

-	Layers:
	-	`sha256:7bb6dfce39da7a359cf1c092a0e8697e9e5c564f32a68bfc967cb30c4ef651ce`  
		Last Modified: Wed, 21 Oct 2026 23:32:13 GMT  
		Size: 1.0 MB (1015830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2e15f2481edbd130e1f9fda85838f0b8c212bb919b90e19cff27376d92febc4`  
		Last Modified: Wed, 21 Oct 2026 23:32:13 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:9cf5d738f4b31a448c1340a78a7634a2ab5d673ee03da0dbaa4c71d2ddb6764a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206852069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d4fa202f6cb1979cac358c32f01fe60dac3146509f1a9fda275600d470b1a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:48 GMT
ARG version=17.0.20.12.1
# Wed, 21 Oct 2026 23:19:48 GMT
# ARGS: version=17.0.20.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 23:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:19:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 23:19:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 22 Oct 2026 00:22:26 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 22 Oct 2026 00:22:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 22 Oct 2026 00:22:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Oct 2026 00:22:26 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Oct 2026 00:22:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 22 Oct 2026 00:22:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 22 Oct 2026 00:22:26 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 22 Oct 2026 00:22:26 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 22 Oct 2026 00:22:26 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Oct 2026 00:22:26 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 22 Oct 2026 00:22:26 GMT
USER jetty
# Thu, 22 Oct 2026 00:22:26 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 22 Oct 2026 00:22:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 00:22:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d511ed3f409074aa7d6c2077c5f80c4e2fef2d45d753ceac40374abf9cf500`  
		Last Modified: Wed, 21 Oct 2026 23:20:06 GMT  
		Size: 147.4 MB (147383327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b63153829f40445fe243a7b8ab7eca274351353bf10b37aaab284636e9d55a`  
		Last Modified: Thu, 22 Oct 2026 00:22:37 GMT  
		Size: 55.3 MB (55276378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77e11149cbfa17852bb1d48c618130b37d28e55bd9f0196da3004ce2ad2cc1a`  
		Last Modified: Thu, 22 Oct 2026 00:22:36 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:2b36775253eff63622f77ce747c1a08ba9872bf3e39da589463e16f11d8e7efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1032030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033ed5cf1e6fa25db4f0e686b72bae1a1430394bf829a87cdd83dac2dd5917f2`

```dockerfile
```

-	Layers:
	-	`sha256:5992d602883d4cdcf67ea767ba617604fc9a8983e47ab7c70555de7a35da9d7c`  
		Last Modified: Thu, 22 Oct 2026 00:22:36 GMT  
		Size: 1.0 MB (1014587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:829730b73920fa8dc1229efb45a97be56457841705fd73a1e18a8aff862da356`  
		Last Modified: Thu, 22 Oct 2026 00:22:36 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json
