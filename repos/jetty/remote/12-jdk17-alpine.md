## `jetty:12-jdk17-alpine`

```console
$ docker pull jetty@sha256:f1910ee9811f53506acd947cdecb99a6df09989da1a8b0882dde66e2cd58b902
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `jetty:12-jdk17-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:475ec1f936a7f0bc5056ff8aa2ad854df225bdb43a0cb164a1f10bf4a9b4f751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217203718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cc048abe631870825fd2edf1bead3dfee818160b1de04fd85340a1b3ee95a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:22 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:36:22 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:29 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='0c4fcdefa2737ccd66e049245fdb9dc431f91796182141204cd5f8192cb288e6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:36:30 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:03:12 GMT
ENV JETTY_VERSION=12.1.13
# Fri, 25 Sep 2026 23:03:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 25 Sep 2026 23:03:12 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 25 Sep 2026 23:03:12 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 25 Sep 2026 23:03:12 GMT
ENV PATH=/usr/local/jetty/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:03:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Fri, 25 Sep 2026 23:03:12 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 25 Sep 2026 23:03:12 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 25 Sep 2026 23:03:12 GMT
WORKDIR /var/lib/jetty
# Fri, 25 Sep 2026 23:03:12 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 25 Sep 2026 23:03:12 GMT
USER jetty
# Fri, 25 Sep 2026 23:03:12 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 25 Sep 2026 23:03:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:03:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03e63f99bb217b1f7ee413f177f42ba8fe72c8aff59fe998b0112c9e23649a2`  
		Last Modified: Fri, 25 Sep 2026 22:36:44 GMT  
		Size: 21.4 MB (21442498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:271b0c979ba5426534d499a4752db1936fee768304d2ed1a152b5e9b1da7d607`  
		Last Modified: Fri, 25 Sep 2026 22:36:47 GMT  
		Size: 145.0 MB (144973019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aaaca2d8bd94e9347308b5e6a8928f795d6a3c376d73e73210662d948346504`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb0ff8d01777a4fc494bddb9df1f3d50d8ea89fbdd2f4d95b7c4e25672e9617`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e276d8fe7c4bbbb60a510bed1bf9a0075f4bd2d9b35bd9ae55463d21c2e82f`  
		Last Modified: Fri, 25 Sep 2026 23:03:23 GMT  
		Size: 46.9 MB (46933996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f09f61b684e87e205eb3a6f7b62aa543970c687cc23a1dfddb15c6a8ee3b397`  
		Last Modified: Fri, 25 Sep 2026 23:03:22 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine` - unknown; unknown

```console
$ docker pull jetty@sha256:dbfc01b790fb8de91b416a1ac1e9e94d4a040734acbc52db22423807f834ba1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1420519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbaf5d59acb6b093c23524660cbb1dec3180b21bfa43af70923dc9395710ac43`

```dockerfile
```

-	Layers:
	-	`sha256:fd8b985c4c0de583db020e8556d77e216f8970a781caddda2cf074a7401caf44`  
		Last Modified: Fri, 25 Sep 2026 23:03:22 GMT  
		Size: 1.4 MB (1400253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4d598a358dfc5784430afba5859b6f0ff702f076d4387a0d8ea5466958fc1e7`  
		Last Modified: Fri, 25 Sep 2026 23:03:22 GMT  
		Size: 20.3 KB (20266 bytes)  
		MIME: application/vnd.in-toto+json
