## `jetty:12-jdk21-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:f84bb532e163d779ea374846ad486595e27c8c60f6e1cc6de166002796f78841
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:c2f3386b0a8e74bcccf6c23aa31c5dba1d2f2d8f38efc3a75fee8bfb7411742d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.7 MB (221740758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51aa3fd80441e9a8ac970fff0fffbe58314884ac905f7e2956f2f25ccf6d96b2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:43 GMT
ARG version=21.0.13.0.11
# Thu, 05 Nov 2026 19:13:43 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:43 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 20:23:10 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 05 Nov 2026 20:23:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 05 Nov 2026 20:23:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 05 Nov 2026 20:23:10 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 05 Nov 2026 20:23:10 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 05 Nov 2026 20:23:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 05 Nov 2026 20:23:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 05 Nov 2026 20:23:10 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 05 Nov 2026 20:23:10 GMT
WORKDIR /var/lib/jetty
# Thu, 05 Nov 2026 20:23:10 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 05 Nov 2026 20:23:10 GMT
USER jetty
# Thu, 05 Nov 2026 20:23:10 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:23:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:23:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfaa716f705e5f81b0f091a1848f6f7455548a6a8c6e49d498f117dc99015e8`  
		Last Modified: Thu, 05 Nov 2026 19:14:02 GMT  
		Size: 162.5 MB (162483433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f79a1e8ed36237886e5927727923f4f613702716aa3be6f5d034e36140020c7`  
		Last Modified: Thu, 05 Nov 2026 20:23:21 GMT  
		Size: 55.4 MB (55401775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12dcaac3f23c8e16318851a701496ccf8171ce549804c2411bf0be598b49508e`  
		Last Modified: Thu, 05 Nov 2026 20:23:20 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:d1b07dc77425eee1ea936e486bf85972491830fe35981e847fbcf63ff0a2cfeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1033083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80acc2c998d212387a47743c9afdfc71eb1bdb07257748be8ba42937299efe6`

```dockerfile
```

-	Layers:
	-	`sha256:cb9ae8e1e98d244b6a2be45d663223d83a27dbb0a54463064e461d45373e8d21`  
		Last Modified: Thu, 05 Nov 2026 20:23:20 GMT  
		Size: 1.0 MB (1015729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86b3ca3353fa0c7e709c6459886f1a98e0be475349c33e8358a7fec0e863abd9`  
		Last Modified: Thu, 05 Nov 2026 20:23:19 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:7ae0b19c75acbabc1391622598331556375a1e772ac106fe5f548eac5769b3e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (219969877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59129c852033f8d40ad221f17088e1983180b3a910400aed7899d70c2753b45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:40:56 GMT
ARG version=21.0.13.0.11
# Tue, 27 Oct 2026 16:40:56 GMT
# ARGS: version=21.0.13.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:40:56 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:40:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:40:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 27 Oct 2026 17:13:14 GMT
ENV JETTY_VERSION=12.1.14
# Tue, 27 Oct 2026 17:13:14 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 27 Oct 2026 17:13:14 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 27 Oct 2026 17:13:14 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 27 Oct 2026 17:13:14 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Tue, 27 Oct 2026 17:13:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Tue, 27 Oct 2026 17:13:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 27 Oct 2026 17:13:14 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 27 Oct 2026 17:13:14 GMT
WORKDIR /var/lib/jetty
# Tue, 27 Oct 2026 17:13:14 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 27 Oct 2026 17:13:14 GMT
USER jetty
# Tue, 27 Oct 2026 17:13:14 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 17:13:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:13:14 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617f2a5265e9d987cab6a522a2223c4472c223a24c4c75dbee1b38f76bc26a86`  
		Last Modified: Tue, 27 Oct 2026 16:41:16 GMT  
		Size: 160.5 MB (160491995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c761181c0f998452887f039dd571d7cc9efc1f3f72c0bcc97d9f2d07b5fdb75f`  
		Last Modified: Tue, 27 Oct 2026 17:13:25 GMT  
		Size: 55.3 MB (55285518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031172ee844c73d00f0914f4e7026bf20d0efb98f7b9415c7904c490cd205d9d`  
		Last Modified: Tue, 27 Oct 2026 17:13:24 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:85af166147ea90695d9e6bc4deb817c7f94ce214e95faacd7e8570825c6d59d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1031931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0950e7b3fe291977e876d34de29793670d84471d725f83e98adabd7ed0b685`

```dockerfile
```

-	Layers:
	-	`sha256:fac1e8273846b77c43cf75511bbe2a1215e9c018f73e2cc20dd74ec383d9ebd0`  
		Last Modified: Tue, 27 Oct 2026 17:13:24 GMT  
		Size: 1.0 MB (1014486 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e66d3442f1039ea82009f4722726ec7b426b6e9d37e050f15e28049f75d70ea`  
		Last Modified: Tue, 27 Oct 2026 17:13:23 GMT  
		Size: 17.4 KB (17445 bytes)  
		MIME: application/vnd.in-toto+json
