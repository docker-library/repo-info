## `jetty:12-jdk25-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:611e8a06701d49706d56756d095153183b28bd7825ac5c84830f08f9821f85e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk25-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:303b7ccaa5ece8b97597615df6917e356594b4047238b4a21c1d7158b5698775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240776532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f0ceefa64fc23b1c12ea0f18708c922ff77147213accfcdd88ef36b5c1182d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:13 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:14:13 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:14:13 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:14:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:14:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 20:23:09 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 05 Nov 2026 20:23:09 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 05 Nov 2026 20:23:09 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 05 Nov 2026 20:23:09 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 05 Nov 2026 20:23:09 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 20:23:09 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 05 Nov 2026 20:23:09 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 05 Nov 2026 20:23:09 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 05 Nov 2026 20:23:09 GMT
WORKDIR /var/lib/jetty
# Thu, 05 Nov 2026 20:23:09 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 05 Nov 2026 20:23:09 GMT
USER jetty
# Thu, 05 Nov 2026 20:23:09 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:23:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:23:09 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6885d20d310accfe25337a23f30b70168b98a7d67e4540736056ea92f01f85d`  
		Last Modified: Thu, 05 Nov 2026 19:14:34 GMT  
		Size: 181.5 MB (181518287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c1cde035f2c28ab53925051962a8252db90ddd5afb267aeb11e5422c4b1e95`  
		Last Modified: Thu, 05 Nov 2026 20:23:21 GMT  
		Size: 55.4 MB (55402694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5983866aec098aa065d0f73dc5c0372b6ddc8ec588c32b4ac3bf49b4bb18ba1`  
		Last Modified: Thu, 05 Nov 2026 20:23:19 GMT  
		Size: 1.8 KB (1846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:b042018387435cc188d8c8756ef74b96f8e0767f509a7f5f8d09bd31f5bda940
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1042180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5aec3a47357ae489436082ddce57705d8dae2ec4b467a35c9ebf1cec1e4d855`

```dockerfile
```

-	Layers:
	-	`sha256:5d8f1df7914f702a8366d46db1e560a0609396314b129c72f49a5d2a49746937`  
		Last Modified: Thu, 05 Nov 2026 20:23:19 GMT  
		Size: 1.0 MB (1024827 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0188bbe5e312a6d020b9ed9235086c1647e968b5161b9362e2845f6d1f38879b`  
		Last Modified: Thu, 05 Nov 2026 20:23:19 GMT  
		Size: 17.4 KB (17353 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk25-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:82532939159dc96842b25203d5680f5f669fb918476c5d1bee218c9f95606d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238572319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24811ed003165d23986ba4f80bc0da6fb718044662c0a4de169d486d6eee3230`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:14 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:41:14 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:14 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 27 Oct 2026 17:13:15 GMT
ENV JETTY_VERSION=12.1.14
# Tue, 27 Oct 2026 17:13:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Oct 2026 17:13:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Oct 2026 17:13:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Oct 2026 17:13:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 27 Oct 2026 17:13:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Tue, 27 Oct 2026 17:13:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 27 Oct 2026 17:13:15 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 27 Oct 2026 17:13:15 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Oct 2026 17:13:15 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 27 Oct 2026 17:13:15 GMT
USER jetty
# Tue, 27 Oct 2026 17:13:15 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 17:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:13:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9836628083289df154df91e6e5036abc886f826a723f4b41108da095d307980`  
		Last Modified: Tue, 27 Oct 2026 16:41:35 GMT  
		Size: 179.1 MB (179092361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcecc605bd8e3656c03e7cdd6d6c8d3191c05d17527f9dd4cd5815ae57359b38`  
		Last Modified: Tue, 27 Oct 2026 17:13:27 GMT  
		Size: 55.3 MB (55287593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add027e84cfd2afa6c374c976ee513c3301632614f7fa830f2c84fe56f687670`  
		Last Modified: Tue, 27 Oct 2026 17:13:23 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:bc759106ef10edc66a05f44ba1712037ec80848679029b21af000dc97a71206f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1041027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15da575a7b4aca645cff2f8a1b25809f0473b0243449af4b02cd075a8ab993fe`

```dockerfile
```

-	Layers:
	-	`sha256:21d599e3e8bb24f0c00bef4cd94ea4538dd70c384db08527c67a88d620c1b114`  
		Last Modified: Tue, 27 Oct 2026 17:13:26 GMT  
		Size: 1.0 MB (1023581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceae704fadbdf08531f38bbc492bd1190a64f7f38aadaa07762898973bb3afd5`  
		Last Modified: Tue, 27 Oct 2026 17:13:25 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
