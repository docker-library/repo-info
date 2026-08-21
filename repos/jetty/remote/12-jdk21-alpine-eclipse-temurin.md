## `jetty:12-jdk21-alpine-eclipse-temurin`

```console
$ docker pull jetty@sha256:751ca630f741c7f4b93e51d77a4e98b75ce6db96aa1f2334aeed7eaaa2d31a36
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `jetty:12-jdk21-alpine-eclipse-temurin` - linux; amd64

```console
$ docker pull jetty@sha256:66bb59833b009fc774e6616cfe12b324e2ccc5484026c9abb4a64ae7a667b305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230454600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70abe63bb90dbc6c47943bad918a76c94273d90ca9d954fca1434c0ec1aaa9df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:34 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:34 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:24:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a32f7655011640ed8fb4347fffa2588cb7538de2f2e82027845816740560e2b1';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='073a48cb87f788a0cb283d81cc6d96cbc9d671d6a60a3ba6de62e66f0ea9dd47';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:24:42 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:49:25 GMT
ENV JETTY_VERSION=12.1.12
# Fri, 21 Aug 2026 18:49:25 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 21 Aug 2026 18:49:25 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 21 Aug 2026 18:49:25 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 21 Aug 2026 18:49:25 GMT
ENV PATH=/usr/local/jetty/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:49:25 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Fri, 21 Aug 2026 18:49:25 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 21 Aug 2026 18:49:25 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 21 Aug 2026 18:49:25 GMT
WORKDIR /var/lib/jetty
# Fri, 21 Aug 2026 18:49:25 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 21 Aug 2026 18:49:25 GMT
USER jetty
# Fri, 21 Aug 2026 18:49:25 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:49:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:49:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c624ebf42c48614632c25eda29ff963d8bff68cf72141f38572ff353df4118`  
		Last Modified: Fri, 21 Aug 2026 18:24:57 GMT  
		Size: 21.4 MB (21434191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcf1f5eca60c3a20398445d682d111c67441c56056e59a0a3a16183f9da46f6`  
		Last Modified: Fri, 21 Aug 2026 18:25:00 GMT  
		Size: 158.3 MB (158332700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04839fa2debe7ec750a1b3926314c52ec376eb0d5ed81310e907af857ed918f`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ef08a27864ae3d6ee3399a0909e667d6fb889dd93bc8d8fa25cbde844a15e3`  
		Last Modified: Fri, 21 Aug 2026 18:24:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e332a5fba18e0fe7d55286419c57caf390e86bd96f694023ef58dee85b59185`  
		Last Modified: Fri, 21 Aug 2026 18:49:37 GMT  
		Size: 46.8 MB (46836851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6893adec66c25b5933384e096811d24abefd2df713a14916253b56678a59a716`  
		Last Modified: Fri, 21 Aug 2026 18:49:35 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-alpine-eclipse-temurin` - unknown; unknown

```console
$ docker pull jetty@sha256:0d896939b5baec5723aa01357395f0342c8a6fedc064b8afb7b692eceaec02df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1418416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa58b91656a296cb9abb45a9eb2bb987730cf83c95f680385d637b31021bfa93`

```dockerfile
```

-	Layers:
	-	`sha256:4f2bf6ebcc44ac941701b3f88465bf60057efc216b4ba7aa90063f669385f647`  
		Last Modified: Fri, 21 Aug 2026 18:49:35 GMT  
		Size: 1.4 MB (1398152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3edf3a22124239005b5237d0877e50ae859404c230d77fd02f06ae488c76095c`  
		Last Modified: Fri, 21 Aug 2026 18:49:35 GMT  
		Size: 20.3 KB (20264 bytes)  
		MIME: application/vnd.in-toto+json
