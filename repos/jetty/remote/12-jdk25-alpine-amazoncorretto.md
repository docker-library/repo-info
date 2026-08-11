## `jetty:12-jdk25-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:325a84d5aa7ef858deef0161a4cf694b9de2a24fe5c5e9dfa754944d2bd455b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk25-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:109891dec0de27b267d8a1fdf74f8c4513bc0557b7e9af193bafe88b4426c075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240587202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757209bad1c13e95102e3eed9be244cc525de7a8ba6b79ed336d5ec41dd88a7c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:10 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:13:10 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:10 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 10 Aug 2026 23:37:27 GMT
ENV JETTY_VERSION=12.1.12
# Mon, 10 Aug 2026 23:37:27 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 10 Aug 2026 23:37:27 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 10 Aug 2026 23:37:27 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 10 Aug 2026 23:37:27 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 10 Aug 2026 23:37:27 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Mon, 10 Aug 2026 23:37:27 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 10 Aug 2026 23:37:27 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 10 Aug 2026 23:37:27 GMT
WORKDIR /var/lib/jetty
# Mon, 10 Aug 2026 23:37:27 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 10 Aug 2026 23:37:27 GMT
USER jetty
# Mon, 10 Aug 2026 23:37:27 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 10 Aug 2026 23:37:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:37:27 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f382fb17f36d4f967673b95d602fb43b817f015d4fe0ff664e8c64ed20d7a08`  
		Last Modified: Thu, 23 Jul 2026 23:13:31 GMT  
		Size: 181.5 MB (181509343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87335bf33f7217d18c8967adc8ad811f400d514509e29d7ba9be2f9a1951530a`  
		Last Modified: Mon, 10 Aug 2026 23:37:38 GMT  
		Size: 55.2 MB (55229591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ad30dcde9e2da85901d7cf6b10b9a7f19411b155ce0faa8aaaef61cde53b83`  
		Last Modified: Mon, 10 Aug 2026 23:37:37 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:a8aea2fe2c1e8de27e3a20c928cf27c9f4579d9484c4edaad660ad3c7f7334fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1039515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0abc4cfbfa196bbc73404f2fb7da2efd7888de4fc4f611ac2088dd266ba1efff`

```dockerfile
```

-	Layers:
	-	`sha256:46844df929cb93c075a971d696c8feb7679b0f3c03361108774311e57cdf2870`  
		Last Modified: Mon, 10 Aug 2026 23:37:37 GMT  
		Size: 1.0 MB (1022161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed74c171975dc7c29300021ec1e27285ba2ee293e9dc17d3953c834b28a11ec7`  
		Last Modified: Mon, 10 Aug 2026 23:37:36 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk25-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:bda07975b0760d06bf6433517cfc97f5d49ec98bca4c81a7efe9c010b1d76295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238375359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0d031cd05f01960e573e7d56e79acf32c9355ba2d8b8df3690ee697ace3b60`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:56 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:14:56 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 10 Aug 2026 23:36:46 GMT
ENV JETTY_VERSION=12.1.12
# Mon, 10 Aug 2026 23:36:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 10 Aug 2026 23:36:46 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 10 Aug 2026 23:36:46 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 10 Aug 2026 23:36:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Mon, 10 Aug 2026 23:36:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Mon, 10 Aug 2026 23:36:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 10 Aug 2026 23:36:46 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 10 Aug 2026 23:36:46 GMT
WORKDIR /var/lib/jetty
# Mon, 10 Aug 2026 23:36:46 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 10 Aug 2026 23:36:46 GMT
USER jetty
# Mon, 10 Aug 2026 23:36:46 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 10 Aug 2026 23:36:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:36:46 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571917d07401fcfe1b538b9f36096638bcc49838511649757ffe415db2d4485a`  
		Last Modified: Thu, 23 Jul 2026 23:15:17 GMT  
		Size: 179.1 MB (179081410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e527cbfd03c1c46fb06269e64b702c2fe86bcf0e9aaa5700228d9ce65d57861f`  
		Last Modified: Mon, 10 Aug 2026 23:36:58 GMT  
		Size: 55.1 MB (55109036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1fd986062ba7a3469990cbc483ab6620e388552def8ede0526db595e3e5200`  
		Last Modified: Mon, 10 Aug 2026 23:36:56 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:db65524b345d76b70060fe935520913d0e24429c41ea996fa00f79498b63817e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1038361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88067f1082bca3aa0642dc18530c42e355a3297e96dc257c1df78776a25a291b`

```dockerfile
```

-	Layers:
	-	`sha256:cf8c6e1193fdc8960588102908edb3331a6c3a255cee9e1df37ed8f692889ce3`  
		Last Modified: Mon, 10 Aug 2026 23:36:56 GMT  
		Size: 1.0 MB (1020915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9860003ad98b1398808130ba4b050401b7fe8c51fedb775963a940d06e008f5`  
		Last Modified: Mon, 10 Aug 2026 23:36:56 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
