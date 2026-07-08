## `jetty:12-jdk25-alpine`

```console
$ docker pull jetty@sha256:6c1b7fdf34f21f35033528564b144b8bda40c81192acbbc612b45dc0c2295c81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `jetty:12-jdk25-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:b2badd1394784da613908231b175f079af98fc7f3ffbb5f255bdb0ada8687fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163477609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fdfa1abd6703dd1afb22f6044db268cc93276278777f441d24cff27cf3b211`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:57:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 22 Jun 2026 19:57:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:57:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 22 Jun 2026 19:57:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 22 Jun 2026 19:57:28 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Mon, 22 Jun 2026 19:57:35 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='6ed368e93049d3b188c045fce0b20953bbea92fe0614dbbf4d3fd8daad7be3b2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.3_9.tar.gz';          ;;        x86_64)          ESUM='51c2415b370aac7c3796b0c4663c8fcf91bc22d76f03df95b25fa5667cb5fdd8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Mon, 22 Jun 2026 19:57:36 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 22 Jun 2026 19:57:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 22 Jun 2026 19:57:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 22 Jun 2026 19:57:36 GMT
CMD ["jshell"]
# Wed, 08 Jul 2026 16:51:10 GMT
ENV JETTY_VERSION=12.1.11
# Wed, 08 Jul 2026 16:51:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Jul 2026 16:51:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 Jul 2026 16:51:10 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 Jul 2026 16:51:10 GMT
ENV PATH=/usr/local/jetty/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 16:51:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Wed, 08 Jul 2026 16:51:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Wed, 08 Jul 2026 16:51:10 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 08 Jul 2026 16:51:10 GMT
WORKDIR /var/lib/jetty
# Wed, 08 Jul 2026 16:51:10 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 08 Jul 2026 16:51:10 GMT
USER jetty
# Wed, 08 Jul 2026 16:51:10 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 08 Jul 2026 16:51:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:51:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95dd7d1a57040850aa18d8f120a347787a853ddadfc0e04c01ba359687f83037`  
		Last Modified: Mon, 22 Jun 2026 19:57:55 GMT  
		Size: 14.3 MB (14259376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586ae85e2c68546c53c9b39b13ad3a217cff435d3f4ed14c0808da512b593ea2`  
		Last Modified: Mon, 22 Jun 2026 19:58:08 GMT  
		Size: 91.6 MB (91624437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1580feaf93ee040ffb3f5ef134e5cc50ea4a1357ecdd98270885a7563d2b8e21`  
		Last Modified: Mon, 22 Jun 2026 19:57:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84edc40c41dfe07d6b44bf4c0fa58803f7070a8fb7ec3f9603d8cb0e50ac8058`  
		Last Modified: Mon, 22 Jun 2026 19:57:50 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dacc5b31e35aec85b8e7f16553c33b2ebac3caa419b738b207a1e64ed92ce93`  
		Last Modified: Wed, 08 Jul 2026 16:51:22 GMT  
		Size: 53.7 MB (53745087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f489aaefa77b5dcf39fc728d13153eb2681a4c970cf46a0275555830b18a146b`  
		Last Modified: Wed, 08 Jul 2026 16:51:20 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-alpine` - unknown; unknown

```console
$ docker pull jetty@sha256:35730d5a2ad09291f4a06a891c9ffd080c68481d91eb553f28da536af4c64258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1383666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220bf5fadc144682c3c60df92c928f228166901c1defaab88b6958553575896c`

```dockerfile
```

-	Layers:
	-	`sha256:b299c56cb3ce110015ae6262b4a9580b861f0c90ddf667134765f9437ad02a53`  
		Last Modified: Wed, 08 Jul 2026 16:51:20 GMT  
		Size: 1.4 MB (1363685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fb65c2fb549b37f4c085af7ff7aa02de7fba8adefd21df6ba9ac9856b4b5af3`  
		Last Modified: Wed, 08 Jul 2026 16:51:20 GMT  
		Size: 20.0 KB (19981 bytes)  
		MIME: application/vnd.in-toto+json
