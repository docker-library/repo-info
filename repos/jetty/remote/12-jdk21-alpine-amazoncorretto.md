## `jetty:12-jdk21-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:9cab204eb162ba145cc9d70789f2bc90bc0a28d50c2fce7576171090efc8af96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:6cb703eca352515803322262d88cbbd65fc563f9515cdfa5b6eb2689a186024e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221440433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d9689d25b1f9e1f02a81a2b24e7545e31ada544a835657f60eae6bcf44edd2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:04:22 GMT
ARG version=21.0.12.12.1
# Mon, 28 Sep 2026 18:04:22 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:04:22 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:04:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:04:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 07 Oct 2026 19:13:44 GMT
ENV JETTY_VERSION=12.1.14
# Wed, 07 Oct 2026 19:13:44 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 07 Oct 2026 19:13:44 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 07 Oct 2026 19:13:44 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 07 Oct 2026 19:13:44 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 07 Oct 2026 19:13:44 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Wed, 07 Oct 2026 19:13:44 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 07 Oct 2026 19:13:44 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 07 Oct 2026 19:13:44 GMT
WORKDIR /var/lib/jetty
# Wed, 07 Oct 2026 19:13:44 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 07 Oct 2026 19:13:44 GMT
USER jetty
# Wed, 07 Oct 2026 19:13:44 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 07 Oct 2026 19:13:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Oct 2026 19:13:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d781ee64e4e37cbd7e17b1fbd2abe312c76056972c450befcd138ec81aaf579`  
		Last Modified: Mon, 28 Sep 2026 18:04:41 GMT  
		Size: 162.2 MB (162198681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3040767f6b935c4cfaf429c543a185c6d6bf529bc144df391b45e5a396c98117`  
		Last Modified: Wed, 07 Oct 2026 19:13:56 GMT  
		Size: 55.4 MB (55390137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620d8290bdbbbb30a29dc74ae36d20d0266fc76dc7015590d2eaf511373b8fa7`  
		Last Modified: Wed, 07 Oct 2026 19:13:54 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:0dab8d93e41c1b0979ac5c2c7fc8de06f29e88bfcc4cc71ddadef71506c907fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1033087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4962ecc83f3373862825073786d67a924810a15a4c414716038491d4201c37d3`

```dockerfile
```

-	Layers:
	-	`sha256:9ba597068c187846f056600d4bb8e2d24c8f72486001271cd392edb24010591e`  
		Last Modified: Wed, 07 Oct 2026 19:13:54 GMT  
		Size: 1.0 MB (1015733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2606f56740edd4c16927cc9e7825f31eaa733328f36a4a2d2e84090c41af9c38`  
		Last Modified: Wed, 07 Oct 2026 19:13:54 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:04224909f2b8aaa3a80913afec13761995644d363b8e33592a2a7096ca14cf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.7 MB (219668893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8bf40908ce03dc02bff7a97628eecc2f94773ff1ab4022d70c1e771b74be63`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:04:10 GMT
ARG version=21.0.12.12.1
# Mon, 28 Sep 2026 18:04:10 GMT
# ARGS: version=21.0.12.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-21=$version-r0 &&     rm -rf /usr/lib/jvm/java-21-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:04:10 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:04:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:04:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 07 Oct 2026 19:12:28 GMT
ENV JETTY_VERSION=12.1.14
# Wed, 07 Oct 2026 19:12:28 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 07 Oct 2026 19:12:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 07 Oct 2026 19:12:28 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 07 Oct 2026 19:12:28 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Wed, 07 Oct 2026 19:12:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Wed, 07 Oct 2026 19:12:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 07 Oct 2026 19:12:28 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 07 Oct 2026 19:12:28 GMT
WORKDIR /var/lib/jetty
# Wed, 07 Oct 2026 19:12:28 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 07 Oct 2026 19:12:28 GMT
USER jetty
# Wed, 07 Oct 2026 19:12:28 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 07 Oct 2026 19:12:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Oct 2026 19:12:28 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f36b47c418118fc77b81a192eaef2c0ffc98cddb4396f0a502240598153735b`  
		Last Modified: Mon, 28 Sep 2026 18:04:28 GMT  
		Size: 160.2 MB (160202971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b076ded4e06a4d591280dd0d175fa51ee6dbba1e71c9e0ff460d565d90b6e44`  
		Last Modified: Wed, 07 Oct 2026 19:12:39 GMT  
		Size: 55.3 MB (55276387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da19cdd0b8d583063a404e0a1497fdd8e3632d95a57aaa86086c7340e5a4534`  
		Last Modified: Wed, 07 Oct 2026 19:12:38 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:0680d7a7804fe6db32354a4a36ed5d353975fd9fbd4e4f92d3a7b1f79725a07a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1031936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ae8dd3472ac80a4591bb6c0b6d489836da23f7a60d29fe17ba1710fee09cee`

```dockerfile
```

-	Layers:
	-	`sha256:489c611483ca05230766815db899f797744b96eeb0dff41961e9d7b7a2f44355`  
		Last Modified: Wed, 07 Oct 2026 19:12:38 GMT  
		Size: 1.0 MB (1014490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0cfc51549194e5c364bef358b1e6353e007c4ef112d6e226492d1b1d3be0417`  
		Last Modified: Wed, 07 Oct 2026 19:12:38 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
