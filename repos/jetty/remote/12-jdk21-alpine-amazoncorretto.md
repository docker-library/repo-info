## `jetty:12-jdk21-alpine-amazoncorretto`

```console
$ docker pull jetty@sha256:b0cde94f829767a220636ba090026830581fa308253ea32f4aded966d38ce51d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:d70e69c740688a30035ce73009b11c23d62a69eb7f6d62a166e4f2f9e4eb71c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221280421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c836ecaa65f43579cbc0cefbd4db3e924da1bc0de95776c0f16b231369ef2d`
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
# Thu, 20 Aug 2026 18:03:21 GMT
ENV JETTY_VERSION=12.1.12
# Thu, 20 Aug 2026 18:03:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 20 Aug 2026 18:03:21 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 20 Aug 2026 18:03:21 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 20 Aug 2026 18:03:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 20 Aug 2026 18:03:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Thu, 20 Aug 2026 18:03:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 20 Aug 2026 18:03:21 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 20 Aug 2026 18:03:21 GMT
WORKDIR /var/lib/jetty
# Thu, 20 Aug 2026 18:03:21 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 20 Aug 2026 18:03:21 GMT
USER jetty
# Thu, 20 Aug 2026 18:03:21 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 20 Aug 2026 18:03:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Aug 2026 18:03:21 GMT
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
	-	`sha256:56aff8726d78fce373a0653e753999864f46abb9340525bf8b38b377119fd7a1`  
		Last Modified: Thu, 20 Aug 2026 18:03:32 GMT  
		Size: 55.2 MB (55228328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583cc2d78f7b6fae24067d98ba9175373a585ad32ece52bf7d4b6c10e6cdcd50`  
		Last Modified: Thu, 20 Aug 2026 18:03:31 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:67dceda0980b70d2fdc7bf5a54ea47537f82d6c09b9a2e9cdd0b6ed2f8108f28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1030421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a01c21b20c3534b8be69b02692c97e4a7e941d9113029e12d9b085738878e7`

```dockerfile
```

-	Layers:
	-	`sha256:cf93ed3be503df6745dfd4dbbdff57aa1d167caebc76c32496c178f085d776c3`  
		Last Modified: Thu, 20 Aug 2026 18:03:31 GMT  
		Size: 1.0 MB (1013067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eaf69b85f321b04a078fecd29685926eab999108090eda186fc0a1d255e5d8e`  
		Last Modified: Thu, 20 Aug 2026 18:03:31 GMT  
		Size: 17.4 KB (17354 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-alpine-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:b74f00c8ce6352110b8ea23e3ca6176367b905f465fb928048a0d866ca4bd517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.5 MB (219488133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5899bc56d8471408c7aa6bdd9a23f3ff0a811d196cc0e20d63f12ecfbcbe6b5`
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
# Thu, 20 Aug 2026 17:59:28 GMT
ENV JETTY_VERSION=12.1.12
# Thu, 20 Aug 2026 17:59:28 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 20 Aug 2026 17:59:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 20 Aug 2026 17:59:28 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 20 Aug 2026 17:59:28 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
# Thu, 20 Aug 2026 17:59:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Thu, 20 Aug 2026 17:59:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 20 Aug 2026 17:59:28 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 20 Aug 2026 17:59:28 GMT
WORKDIR /var/lib/jetty
# Thu, 20 Aug 2026 17:59:28 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 20 Aug 2026 17:59:28 GMT
USER jetty
# Thu, 20 Aug 2026 17:59:28 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 20 Aug 2026 17:59:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Aug 2026 17:59:28 GMT
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
	-	`sha256:5b781d985b5d18e56806d64ae3ef2c57b8bc1ff8e823f1c91687428403aee849`  
		Last Modified: Thu, 20 Aug 2026 17:59:40 GMT  
		Size: 55.1 MB (55108561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0c750078018fc25dcfbdf5286d4a3d7e37f49b85a8bd5f9c096e75c32c43ae`  
		Last Modified: Thu, 20 Aug 2026 17:59:38 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:a0c666fd7947d8497e1ad943361fef5a1ec512539f48f8f022a7e19c680f9342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1029270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee36438b622a7a920ad7e4e93770990e63afcf1c7732b6d06e70ea69371af790`

```dockerfile
```

-	Layers:
	-	`sha256:77175878fd3454d3d5ea68fd5adcbcd89763d5cc993eb601dd5e18afed7521f3`  
		Last Modified: Thu, 20 Aug 2026 17:59:38 GMT  
		Size: 1.0 MB (1011824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:916fc180815f0a94744d2464268089f8a7af0758bb52a40b6f104a0834ca6a11`  
		Last Modified: Thu, 20 Aug 2026 17:59:38 GMT  
		Size: 17.4 KB (17446 bytes)  
		MIME: application/vnd.in-toto+json
