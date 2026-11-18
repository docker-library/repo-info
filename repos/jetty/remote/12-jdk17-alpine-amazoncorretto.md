## `jetty:12-jdk17-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:135df7f3926fe313dfe6cd93c2cdb572ff93c57b136607dded1ce6559c1f195e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:86ef95be1c64d080afe8b0e3bdef789ecc5741042b5fb45b27bce754db43267d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198678414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e836e40ce19d9430f83b29aac7519e2086e0351c84531c1c210612634eda84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:44 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:44 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:44 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:10:39 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 22:10:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 22:10:39 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 22:10:39 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 22:10:39 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:10:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 22:10:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 22:10:39 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 22:10:39 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 22:10:39 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 22:10:39 GMT
USER jetty
# Tue, 17 Nov 2026 22:10:39 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 22:10:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 22:10:39 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95797276e73e66fcdff0ab1985c8374722b08b89a5100061ceacca9ac117467`  
		Last Modified: Tue, 17 Nov 2026 21:34:00 GMT  
		Size: 149.2 MB (149229779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1681d8dcbf2069ca7d8a8db7ae7dc0620f3f3eba57476027039510b89a138666`  
		Last Modified: Tue, 17 Nov 2026 22:10:50 GMT  
		Size: 45.6 MB (45593086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b15e85943c64dec58748880cd8e9c4f3ceaa61d3f3d3ad69f1feed24654955f`  
		Last Modified: Tue, 17 Nov 2026 22:10:48 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:f26763e8bca42afd6be4a0f71cee58aad6c30f4d128661f7a7db47c76b960e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1015595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d0cf0a6d4a8ca28b2bca8e6c6080c000632b0220ebaecf6c62ec2d04673201`

```dockerfile
```

-	Layers:
	-	`sha256:d9e3eb3a1937744f83eee385da5ae03561f57f2db639ee816f619747f9f1408d`  
		Last Modified: Tue, 17 Nov 2026 22:10:49 GMT  
		Size: 998.2 KB (998241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d8515cef34146398bb1128b5244690a4cc3b7009c04b9c5ef30d997f7d8619`  
		Last Modified: Tue, 17 Nov 2026 22:10:48 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:320fab06eb7e00944e9631dccb561ffc68a1c17383fec5ae103d9bbcfb753386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197383279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3ed3ccdec1b14de68a0c9205854c134861b6f9252f57f00dfb07db135a815d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:45 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:45 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:45 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:10:25 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 22:10:25 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 22:10:25 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 22:10:25 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 22:10:25 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:10:25 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 22:10:25 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 22:10:25 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 22:10:25 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 22:10:25 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 22:10:25 GMT
USER jetty
# Tue, 17 Nov 2026 22:10:25 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 22:10:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 22:10:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7442f375da949080f7de01e62281119d6d722d528c0874e3815bdbf11cc206f`  
		Last Modified: Tue, 17 Nov 2026 21:34:03 GMT  
		Size: 147.7 MB (147715739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da2eda8b8459110918210d62de853cd1f93ad024e0ca83b72d410b4b8288cf3`  
		Last Modified: Tue, 17 Nov 2026 22:10:36 GMT  
		Size: 45.5 MB (45475071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc9ff7c85775af864ab2c9f0d3095ff443e16892d6d58fe184f94f0fdfcf947`  
		Last Modified: Tue, 17 Nov 2026 22:10:34 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:cb34d5a908eacd5c109623a214cd2a4dbfc36a94d8a21e63d3e4b18dcc984388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1014444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb88ec1d9c68a0e0f5bfeab3996d94ae6bb8674c041e1af1dd1fc42a55fe40d`

```dockerfile
```

-	Layers:
	-	`sha256:aed1c9104eb1e39d3cd4812b89c0162a5d8cc997f9d5ec0543af2901e799261f`  
		Last Modified: Tue, 17 Nov 2026 22:10:34 GMT  
		Size: 997.0 KB (996998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d6e0794f4fcf175092f4b2ae7356b79941b36279d7a0800975dc7ee599847a4`  
		Last Modified: Tue, 17 Nov 2026 22:10:34 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
