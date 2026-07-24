## `jetty:12-jdk21-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:98783a6d5994dc57a05262fc606f427634f88a4d2325887e5960487abc0fdf39
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:e39910b78ee35f361bddbc5144ecc1ef134be3f81634a8501ed549450f57d9e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221173399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f0492b8234021386fc820d544d0d74c224f07fd4be37f5f45bf1e803cf383c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:40 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:12:40 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:40 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 24 Jul 2026 00:13:26 GMT
ENV JETTY_VERSION=12.1.11
# Fri, 24 Jul 2026 00:13:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 24 Jul 2026 00:13:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 24 Jul 2026 00:13:26 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 24 Jul 2026 00:13:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 24 Jul 2026 00:13:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Fri, 24 Jul 2026 00:13:26 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Fri, 24 Jul 2026 00:13:26 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 24 Jul 2026 00:13:26 GMT
WORKDIR /var/lib/jetty
# Fri, 24 Jul 2026 00:13:26 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 24 Jul 2026 00:13:26 GMT
USER jetty
# Fri, 24 Jul 2026 00:13:26 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 24 Jul 2026 00:13:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Jul 2026 00:13:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006c521f0d50d490016926fc532cd90579c5e825a0288421980d029766d60e9b`  
		Last Modified: Thu, 23 Jul 2026 23:12:59 GMT  
		Size: 162.2 MB (162199278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562abedc00f6153208a8456b3f7a6103bf08f9a3608a7a1e10265b88305e7bfd`  
		Last Modified: Fri, 24 Jul 2026 00:13:38 GMT  
		Size: 55.1 MB (55125854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527fe9998e7e9249e4b65600dff87c0b7f97e748718538df3faf82fd57757632`  
		Last Modified: Fri, 24 Jul 2026 00:13:38 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:cb6100a004300e91fd9392f84760c2dc7ca83ab8e43d59bdab66439ffa393084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1030099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd5cbe1679ea0f9e18fcdd3e2d7fa25e611bd14eded7c76b04211558bdecec6`

```dockerfile
```

-	Layers:
	-	`sha256:54987e4a48a8a0848601502cc7722bdf05f3c6a2e20b3e42f762e5a48b269ca6`  
		Last Modified: Fri, 24 Jul 2026 00:13:37 GMT  
		Size: 1.0 MB (1013023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50b38b8f7fab333555c539a8def6077eecdbd373bbbe84b4878539db5415f0c1`  
		Last Modified: Fri, 24 Jul 2026 00:13:37 GMT  
		Size: 17.1 KB (17076 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:e8d72ecac2d967c9264eb3df58d23e8293960e8f0dff49617bf8548339f07b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.4 MB (219377689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2324bf12d362ee460bfd092827d0919495441e24fe9d66c1f48d591e25fc30c1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:26 GMT
ARG version=21.0.12.8.1
# Thu, 23 Jul 2026 23:14:26 GMT
# ARGS: version=21.0.12.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:26 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 24 Jul 2026 00:13:24 GMT
ENV JETTY_VERSION=12.1.11
# Fri, 24 Jul 2026 00:13:24 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 24 Jul 2026 00:13:24 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 24 Jul 2026 00:13:24 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 24 Jul 2026 00:13:24 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 24 Jul 2026 00:13:24 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Fri, 24 Jul 2026 00:13:24 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Fri, 24 Jul 2026 00:13:24 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 24 Jul 2026 00:13:24 GMT
WORKDIR /var/lib/jetty
# Fri, 24 Jul 2026 00:13:24 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 24 Jul 2026 00:13:24 GMT
USER jetty
# Fri, 24 Jul 2026 00:13:24 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 24 Jul 2026 00:13:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Jul 2026 00:13:24 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969fb27132d828c1fa2a9465bbe0040ab0c45c6dde2ead58da2ebadcc48d1c48`  
		Last Modified: Thu, 23 Jul 2026 23:14:46 GMT  
		Size: 160.2 MB (160188613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73cdacf387d392ddc1359d8f025ef98e135da7d052b9debf50819f3c78ea5201`  
		Last Modified: Fri, 24 Jul 2026 00:13:37 GMT  
		Size: 55.0 MB (55004162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d38cb373201122bb1c8d6f6cd898007686ca2a4023ebbfceec44c88449fd7e9`  
		Last Modified: Fri, 24 Jul 2026 00:13:36 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:b0bc3ae30da8a1c39c8bbb7dafc9b4f1a3607c4acf0ee2fa7e0c78e8fb84a9d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1028948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f21a647a02dfca9104e4722d86b0ee3c57e44f6eab49bea84df6720a2929fc`

```dockerfile
```

-	Layers:
	-	`sha256:2519d1b239946315ca8743c635afee56ea5894120efd47b6f02d789222ef7f1e`  
		Last Modified: Fri, 24 Jul 2026 00:13:35 GMT  
		Size: 1.0 MB (1011780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08a6e9deab180ce1086925864ec540b712565a5ba60897a4b6cefc7b8d0b852a`  
		Last Modified: Fri, 24 Jul 2026 00:13:35 GMT  
		Size: 17.2 KB (17168 bytes)  
		MIME: application/vnd.in-toto+json
