## `jetty:12-jdk21-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:4645f1b179b33c8f41fd28ff025d0563014c4bd73183005a94fae2d9c381dd2d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:fa2d9363f5b847bc5b87addacfddacd823ce1b67726dd35e0ce2b231b7091a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221377471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400ff6af2368fb9cd8f2242f6aa5a540b33ad3c62510e9bcd85ab066b44d4d47`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:58 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:20:58 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:58 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 14 Sep 2026 22:07:37 GMT
ENV JETTY_VERSION=12.1.13
# Mon, 14 Sep 2026 22:07:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 14 Sep 2026 22:07:37 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 14 Sep 2026 22:07:37 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 14 Sep 2026 22:07:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 14 Sep 2026 22:07:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Mon, 14 Sep 2026 22:07:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 14 Sep 2026 22:07:37 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 14 Sep 2026 22:07:37 GMT
WORKDIR /var/lib/jetty
# Mon, 14 Sep 2026 22:07:37 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 14 Sep 2026 22:07:37 GMT
USER jetty
# Mon, 14 Sep 2026 22:07:37 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 14 Sep 2026 22:07:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Sep 2026 22:07:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1651595685cc0eac88660f9ca02456ac3b15e74180cd422f506f1015521664e5`  
		Last Modified: Thu, 20 Aug 2026 17:21:16 GMT  
		Size: 162.2 MB (162203825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf7068865d73f25836628c5659e524b49931d146d2ec886de311d743d62dd6b`  
		Last Modified: Mon, 14 Sep 2026 22:07:49 GMT  
		Size: 55.3 MB (55325379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2071d9760747fb6a03a18343324b6e8a8ee8102bed3b90f62b275ff345cf732a`  
		Last Modified: Mon, 14 Sep 2026 22:07:48 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:a7680876feee5d25943b3f4bf4082b8ed0c90b1795f52095b7c9a28d5e7a5120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1033073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36678cbdeb3456dc3940b23e26623b6c97672be3668983c6f1fc2f77d6b0e25`

```dockerfile
```

-	Layers:
	-	`sha256:bc3ec7042557c1ae7f8435fd0eb372b997f11d8be265c461781cc34cce37a381`  
		Last Modified: Mon, 14 Sep 2026 22:07:48 GMT  
		Size: 1.0 MB (1015719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:158b2f9a2950c752fc3f95568ec5e3940e799a41a02601916f6d19e6bf78daf0`  
		Last Modified: Mon, 14 Sep 2026 22:07:48 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:0ce10fe389ea2299a6cf51704409d6cf6f2c7b62f8ae3c02a4b57a99681cfad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219590914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e75729e6c94d7b9209e6df691c06c18aa0575dbc98001daa84542b95678e01b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:17:36 GMT
ARG version=21.0.12.9.1
# Thu, 20 Aug 2026 17:17:36 GMT
# ARGS: version=21.0.12.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:17:36 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:17:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 14 Sep 2026 22:06:44 GMT
ENV JETTY_VERSION=12.1.13
# Mon, 14 Sep 2026 22:06:44 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 14 Sep 2026 22:06:44 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 14 Sep 2026 22:06:44 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 14 Sep 2026 22:06:44 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 14 Sep 2026 22:06:44 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Mon, 14 Sep 2026 22:06:44 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 14 Sep 2026 22:06:44 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 14 Sep 2026 22:06:44 GMT
WORKDIR /var/lib/jetty
# Mon, 14 Sep 2026 22:06:44 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 14 Sep 2026 22:06:44 GMT
USER jetty
# Mon, 14 Sep 2026 22:06:44 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 14 Sep 2026 22:06:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Sep 2026 22:06:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe7fe6061c759d1f1ca63fba415c2d644a2548f5b2cda2089ada77257dc6282`  
		Last Modified: Thu, 20 Aug 2026 17:17:55 GMT  
		Size: 160.2 MB (160194659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c771b484f5bbacafe2cea1fa273077ba6f9be5eb70ca832e9e26939c9549303`  
		Last Modified: Mon, 14 Sep 2026 22:06:56 GMT  
		Size: 55.2 MB (55211342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e7381df6414998fed5c50488c70bc6374b9f311f1027b46d25ae68c005244a`  
		Last Modified: Mon, 14 Sep 2026 22:06:54 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:ea8368d4cf83c5ab6fa0d7fea966c825e625b37f75ee9e40888aca0b325e8d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1031922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c736821ff33caceccb4ea067f571bee632790dca55501d8b1dedb879db3817fc`

```dockerfile
```

-	Layers:
	-	`sha256:344792fe5f9973432bacf2044e9fcd454491cea8865f2ab24d92216d43a53413`  
		Last Modified: Mon, 14 Sep 2026 22:06:54 GMT  
		Size: 1.0 MB (1014476 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1fc01c2c24d4b5ac645a0afd3d6bd94cf2bc73c53b18accc18fcc6e9d8c3e34`  
		Last Modified: Mon, 14 Sep 2026 22:06:54 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
