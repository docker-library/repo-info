## `jetty:12-jdk17-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:85562c53e69d7025027be804ac64ea28bcf8ff8c2b495aec96b8503d07f9f83d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:10329eef94babd3d1e55206f465957f494245f81ee0b326d78e190c6de2eba75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208136711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47816f9b72118435a615e5e3dd329e0dca4b6c891521e7fbdc9b599d83aa1371`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:44 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:35:44 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:44 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 17 Sep 2026 22:27:09 GMT
ENV JETTY_VERSION=12.1.13
# Thu, 17 Sep 2026 22:27:09 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 17 Sep 2026 22:27:09 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 17 Sep 2026 22:27:09 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 17 Sep 2026 22:27:09 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 17 Sep 2026 22:27:09 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Thu, 17 Sep 2026 22:27:09 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 17 Sep 2026 22:27:09 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 17 Sep 2026 22:27:09 GMT
WORKDIR /var/lib/jetty
# Thu, 17 Sep 2026 22:27:09 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 17 Sep 2026 22:27:09 GMT
USER jetty
# Thu, 17 Sep 2026 22:27:09 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 17 Sep 2026 22:27:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:27:09 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993bbac578af36f89b7a6850df27273b17d0dbc87debf7b215d0b02f607ccf05`  
		Last Modified: Thu, 17 Sep 2026 21:36:02 GMT  
		Size: 149.0 MB (148959818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:687cb1fafdc018c362401ccb8d95244799f80ef4c745d651eb5556d047141097`  
		Last Modified: Thu, 17 Sep 2026 22:27:21 GMT  
		Size: 55.3 MB (55325281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11ba73f6a9c38d6df9bc31bbd81c92e722511afb6dc7f1a3b179d906a5bd90`  
		Last Modified: Thu, 17 Sep 2026 22:27:20 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:05bbbc5fe5a6a5939a9da3f1cdd15d0dfcc1d92a0ea29aded61f203710163320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1033172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6298b58a88290b632067a1cbb632fa25c76ca55ef749351622629d7b57dda71`

```dockerfile
```

-	Layers:
	-	`sha256:b3581669bf46ce5ec3511242b3c1b172e04069eba502c485d86961f60e689d12`  
		Last Modified: Thu, 17 Sep 2026 22:27:20 GMT  
		Size: 1.0 MB (1015818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:267b078e92c9b7629f04b1380aeb83c5d1a1cbf90700ea3ce77f20b3feaf5596`  
		Last Modified: Thu, 17 Sep 2026 22:27:20 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:2511a07ece39b7478216b607572e2d342814e2646e21032c0c82ec16be847421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.8 MB (206776781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cddde421b2d0b6e45df6a4abefc56dfa5ac23259db34d716478098cae9cd772`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:50 GMT
ARG version=17.0.20.10.1
# Thu, 17 Sep 2026 21:36:50 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:50 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 17 Sep 2026 22:50:30 GMT
ENV JETTY_VERSION=12.1.13
# Thu, 17 Sep 2026 22:50:30 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 17 Sep 2026 22:50:30 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 17 Sep 2026 22:50:30 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 17 Sep 2026 22:50:30 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 17 Sep 2026 22:50:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Thu, 17 Sep 2026 22:50:30 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 17 Sep 2026 22:50:30 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 17 Sep 2026 22:50:31 GMT
WORKDIR /var/lib/jetty
# Thu, 17 Sep 2026 22:50:31 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 17 Sep 2026 22:50:31 GMT
USER jetty
# Thu, 17 Sep 2026 22:50:31 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 17 Sep 2026 22:50:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:50:31 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b0194bddf375d28cb541b24721d1010fa1fe910eefee3a10926cbfd3d6e3e1`  
		Last Modified: Thu, 17 Sep 2026 21:37:08 GMT  
		Size: 147.4 MB (147375958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84d9b9fbb64accf13ef31961f94362f997ce836824d667ecfe06eedc270a2dc`  
		Last Modified: Thu, 17 Sep 2026 22:50:42 GMT  
		Size: 55.2 MB (55211287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36057b7547db7e54d216cd048f5645ae77ec09f98bedaa0456fabb77635b2636`  
		Last Modified: Thu, 17 Sep 2026 22:50:40 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:223fae166a304f96dfc958761eb7f7ece4eb23588b259fc97bf11f96e5d5677d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1032021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c4ecc5b894f7ea9db7d98cf39211bfb5e753127be65a9fab9c9e61a54f3155a`

```dockerfile
```

-	Layers:
	-	`sha256:22bfc52077cf0463f9959b464814eb2180bfdcb31d0d0dfe904f09f5c405045c`  
		Last Modified: Thu, 17 Sep 2026 22:50:40 GMT  
		Size: 1.0 MB (1014575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4848f28eff0e546b29a3a5704b943f201cf8fe1c293b73de5468e6fbba4b1dcf`  
		Last Modified: Thu, 17 Sep 2026 22:50:41 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
