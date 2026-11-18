## `jetty:12-jdk21-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:3e084f9478864f8b650d7a5bfd359d6da059e0c4369fce6f992bfdbc8b043602
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:24f542bdc638f4c8e8db836a50eec80dd8cc28d8d469aadf27cd898cb1c43c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (211953291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3946b51c5d83b4734e6ba1d0e30ded80d38c5da64728e753041a840caaeb40`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:28 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:28 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:28 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:10:22 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 22:10:22 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 22:10:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 22:10:22 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 22:10:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:10:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 22:10:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 22:10:22 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 22:10:22 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 22:10:22 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 22:10:22 GMT
USER jetty
# Tue, 17 Nov 2026 22:10:22 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 22:10:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 22:10:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10506b98573fc52f312327af66070fe317acddc57241cf0c7ed418a2d8b1c6d`  
		Last Modified: Tue, 17 Nov 2026 21:34:46 GMT  
		Size: 162.5 MB (162504606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99473c7396025350c85a1d2e2eb824a05553e39c303ce053a6c94c83795f9d5a`  
		Last Modified: Tue, 17 Nov 2026 22:10:33 GMT  
		Size: 45.6 MB (45593136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b956a2a5e723dc1ab07ecab6e3d2d7c7f1d97698d4c82bd1ae3d7529ff489b1`  
		Last Modified: Tue, 17 Nov 2026 22:10:32 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:468e84104a1ea0e3e3e1824934af70e614979f8eda5edfec24d38f0d1a9b7887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1015498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1db5880cb13ecb883a44ed3dbb872205dc0ac2de98ede1086f7e5bf593b40a8`

```dockerfile
```

-	Layers:
	-	`sha256:aa324c94af4c978f981b693cda4532821360ac0f987ec0a5d6eccb37775e8b91`  
		Last Modified: Tue, 17 Nov 2026 22:10:32 GMT  
		Size: 998.1 KB (998144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:650c7a97a32d500bb4552078afe4e329bc43d74ab22a792a7343439194585ee7`  
		Last Modified: Tue, 17 Nov 2026 22:10:32 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:d81e49096462e5553da0512d2dcf012449796e12ea68f9ad23ffc649fd6fec76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.2 MB (210174936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79cd6e8af2660a6414b4295ffd8325a5572b301f23ead37895824bee6eac7dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:34:26 GMT
ARG version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:26 GMT
# ARGS: version=21.0.13.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:34:26 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:34:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:10:11 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 22:10:11 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 22:10:11 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 22:10:11 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 22:10:11 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 17 Nov 2026 22:10:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 22:10:11 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 22:10:11 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 22:10:11 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 22:10:12 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 22:10:12 GMT
USER jetty
# Tue, 17 Nov 2026 22:10:12 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 22:10:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 22:10:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c97a46e32e1c4e68ad47f0561940c920a9112057806fc50e25c72f904c3dce`  
		Last Modified: Tue, 17 Nov 2026 21:34:45 GMT  
		Size: 160.5 MB (160506789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e7865546c6d64810494cbc2c5d1212afb142337c16558f388e9ea2426fe3fd`  
		Last Modified: Tue, 17 Nov 2026 22:10:22 GMT  
		Size: 45.5 MB (45475676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d776831761e28443aa148bd468de75dba18f90469239d1dc709eb3e5882e2f`  
		Last Modified: Tue, 17 Nov 2026 22:10:21 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:238b01c96d3c3a28f42332daa71e4ce6047626d52a40e59e3f87e532f1487e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1014346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b860c02d55bf727a8472a498996c1057d8b4ec3b4bedaaa7a443bc950030aa`

```dockerfile
```

-	Layers:
	-	`sha256:97f67d22ef94e3f62ef83fe98a26e17284a0620f22a405070fc4371d618e7f8a`  
		Last Modified: Tue, 17 Nov 2026 22:10:21 GMT  
		Size: 996.9 KB (996901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d8c47502436363d97f191e10b72b75d6d22228de1482cc0f4a60078e28c5bb4`  
		Last Modified: Tue, 17 Nov 2026 22:10:21 GMT  
		Size: 17.4 KB (17445 bytes)  
		MIME: application/vnd.in-toto+json
