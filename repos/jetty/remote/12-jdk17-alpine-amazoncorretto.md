## `jetty:12-jdk17-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:92a7d95ca74136921a330306132efc9a177939d1b7c0ea9795bacb761e202445
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:fd2393e359d5fe8bdfdbf607a9d014eb2236f15731e60c5859f77ff646edebc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208133399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32927bb1ae9469f96a06e05f2524a7277307e396ffaff92720350c93d3de0c9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:24 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:20:24 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:24 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 14 Sep 2026 22:07:45 GMT
ENV JETTY_VERSION=12.1.13
# Mon, 14 Sep 2026 22:07:45 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 14 Sep 2026 22:07:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 14 Sep 2026 22:07:45 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 14 Sep 2026 22:07:45 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 14 Sep 2026 22:07:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Mon, 14 Sep 2026 22:07:45 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 14 Sep 2026 22:07:45 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 14 Sep 2026 22:07:45 GMT
WORKDIR /var/lib/jetty
# Mon, 14 Sep 2026 22:07:45 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 14 Sep 2026 22:07:45 GMT
USER jetty
# Mon, 14 Sep 2026 22:07:45 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 14 Sep 2026 22:07:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Sep 2026 22:07:45 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d2603c23b29228135f0a1665fc72adaf063ab54ef241305d6efae571f13db6`  
		Last Modified: Thu, 20 Aug 2026 17:20:42 GMT  
		Size: 149.0 MB (148959822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747867b9f48ec91eaee3f41e6cafa2477498c6c9e8d53dd4deeacd6a6ed7542d`  
		Last Modified: Mon, 14 Sep 2026 22:07:56 GMT  
		Size: 55.3 MB (55325310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e06615394ad7a9508d10b95beef8e17b934110896744f4706bf48a389b4033`  
		Last Modified: Mon, 14 Sep 2026 22:07:55 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:cc5ed971ed60cd4cba1a3821264231fb1e528c92db4ee3604b02ed1ea6fc8a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1033172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e0af94ab37aab63f951056f4d904dcc96e51c3c9c3ade6a1504c988e5919f7`

```dockerfile
```

-	Layers:
	-	`sha256:b162afd25dcb5c32353a43ef80afe766a824687c8ddfc0cc1257be5dceb5d483`  
		Last Modified: Mon, 14 Sep 2026 22:07:55 GMT  
		Size: 1.0 MB (1015818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6be060257b71f4fadb7d5bba1835d399d69d1c1248a7f30f0fc7c06d91ea9bfe`  
		Last Modified: Mon, 14 Sep 2026 22:07:54 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:af0dcb06ffb3235fb51319d8ed4af0e617a827f0403ec3cdb5e06101dc73cb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206772164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdb52fffbe5a88867f755991826808e08a3890dcf86a826c3cb73c1791a98f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:17:03 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:17:03 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:17:03 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 14 Sep 2026 22:06:51 GMT
ENV JETTY_VERSION=12.1.13
# Mon, 14 Sep 2026 22:06:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 14 Sep 2026 22:06:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 14 Sep 2026 22:06:51 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 14 Sep 2026 22:06:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 14 Sep 2026 22:06:51 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Mon, 14 Sep 2026 22:06:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 14 Sep 2026 22:06:51 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 14 Sep 2026 22:06:51 GMT
WORKDIR /var/lib/jetty
# Mon, 14 Sep 2026 22:06:51 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 14 Sep 2026 22:06:51 GMT
USER jetty
# Mon, 14 Sep 2026 22:06:51 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 14 Sep 2026 22:06:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Sep 2026 22:06:51 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db376e23c2546dfcc058ddef5818920d241637deba612fb24b4fdb4f6514e23`  
		Last Modified: Thu, 20 Aug 2026 17:17:21 GMT  
		Size: 147.4 MB (147376025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2d29fac767b536058cbee7d210e5dc997671e876e77fd07ede79da4374543d`  
		Last Modified: Mon, 14 Sep 2026 22:07:03 GMT  
		Size: 55.2 MB (55211229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b57f390b852df41e5f25a65d521e576dad57ff5539694ce3d507e0b4cf48ff`  
		Last Modified: Mon, 14 Sep 2026 22:07:01 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:19c8bb11d877e474bbf5570b6b895c64ed2a5eb3e320de57e3e0fdfed7435822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1032021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9f12d005d6d7111e9a2632e7c0af0dab8b052514fa6d0af366c286262a6560`

```dockerfile
```

-	Layers:
	-	`sha256:704c814b020a872b9ab5b45cc3d86165521b382d79c9648216ed592321532203`  
		Last Modified: Mon, 14 Sep 2026 22:07:01 GMT  
		Size: 1.0 MB (1014575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77c9cff1dbaf4b05822c29604334e756073eb3c6f919d9f6714746591985fc5d`  
		Last Modified: Mon, 14 Sep 2026 22:07:01 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
