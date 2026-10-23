## `jetty:12-jdk17-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:80a49d1cb9b41c6b95b9293e201848c9ee05699d84a885d15ec852e9ba44b85c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:50e372d29f48f9169b25ae8ce70f748cda19cb810af003929d5bc92ed5d3e4e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.5 MB (208457645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a7f9ad1d8e7d3c86eb9ddfa3d45431ff7651b99fd709dd733619f67ce4d097`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:41 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:41 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:41 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 23 Oct 2026 18:21:45 GMT
ENV JETTY_VERSION=12.1.14
# Fri, 23 Oct 2026 18:21:45 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 23 Oct 2026 18:21:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 23 Oct 2026 18:21:45 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 23 Oct 2026 18:21:45 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 23 Oct 2026 18:21:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Fri, 23 Oct 2026 18:21:45 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 23 Oct 2026 18:21:45 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 23 Oct 2026 18:21:45 GMT
WORKDIR /var/lib/jetty
# Fri, 23 Oct 2026 18:21:45 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 23 Oct 2026 18:21:45 GMT
USER jetty
# Fri, 23 Oct 2026 18:21:45 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 23 Oct 2026 18:21:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:21:45 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f660ecf0dea042781344537795bc970ce39dac92056c7b4d6b48b538f234386`  
		Last Modified: Fri, 23 Oct 2026 18:08:58 GMT  
		Size: 149.2 MB (149210830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c41729b4fd051526981f16dda741b06a36976d1c8d39eb483c1d2a1086abe8b`  
		Last Modified: Fri, 23 Oct 2026 18:21:56 GMT  
		Size: 55.4 MB (55391830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4fd81aa75beb35268c4d255ef7b1da28c36612edfa23cd60012e4486ffa8a5`  
		Last Modified: Fri, 23 Oct 2026 18:21:55 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:cbedfa09daa50156e5c05f70ffc6699e46514321fb9f50186255a46223844dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1033180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec40199d485afebfe1a3609f22b5740fa85951344f8fbbdbda271387c2bf5f2`

```dockerfile
```

-	Layers:
	-	`sha256:073189a0f67a96ba0312f53f40d36b087ae725d466c230f6e709111f004ef53b`  
		Last Modified: Fri, 23 Oct 2026 18:21:55 GMT  
		Size: 1.0 MB (1015826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:140a3f32ace9ea6f737f13c0a945d346c23760859d76fea92f30dae908c47b24`  
		Last Modified: Fri, 23 Oct 2026 18:21:54 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:a1258ee503243cbd274f988afb9ec62b39eb1ce536c2aa7da723c5fc628f4a29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207163574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9e2d6a9cf5bd06710e678cce392e552e251d4bce15ac2de91d56a8fa518ade`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:08:39 GMT
ARG version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:39 GMT
# ARGS: version=17.0.21.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:08:39 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:08:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 23 Oct 2026 18:21:37 GMT
ENV JETTY_VERSION=12.1.14
# Fri, 23 Oct 2026 18:21:37 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 23 Oct 2026 18:21:37 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 23 Oct 2026 18:21:37 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 23 Oct 2026 18:21:37 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Fri, 23 Oct 2026 18:21:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Fri, 23 Oct 2026 18:21:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 23 Oct 2026 18:21:37 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 23 Oct 2026 18:21:37 GMT
WORKDIR /var/lib/jetty
# Fri, 23 Oct 2026 18:21:37 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 23 Oct 2026 18:21:37 GMT
USER jetty
# Fri, 23 Oct 2026 18:21:37 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 23 Oct 2026 18:21:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:21:37 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57a867d7dfdc27ae917938764e61d75ae5463723e297ccf285d0cd4d89bc29a`  
		Last Modified: Fri, 23 Oct 2026 18:08:57 GMT  
		Size: 147.7 MB (147694887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b623652f701f3a1fcdd06b114a964474d8d1b17b8acb58c92ff004e101771166`  
		Last Modified: Fri, 23 Oct 2026 18:21:49 GMT  
		Size: 55.3 MB (55276323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7637948fa86647b9fbc935e5655e7c47c26f7bac08e6df2a7139cb43b0d9326`  
		Last Modified: Fri, 23 Oct 2026 18:21:47 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:fa2a426b972c615746ad1662b2abf4611e1db52b62680f50b509fa79c14be6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1032028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c2c6802bba259688322ec881b974db3ffcb84b99fcc9123ae17ad0727d186a`

```dockerfile
```

-	Layers:
	-	`sha256:b5131bb442cc1fa5df0967ebf2aea4151206f18a3c489e255215915b3e95227e`  
		Last Modified: Fri, 23 Oct 2026 18:21:47 GMT  
		Size: 1.0 MB (1014583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6201d2e0f45ab2d799f9fbf59a579d20d5773a8d6507593d1d9ccf8283e4eac2`  
		Last Modified: Fri, 23 Oct 2026 18:21:47 GMT  
		Size: 17.4 KB (17445 bytes)  
		MIME: application/vnd.in-toto+json
