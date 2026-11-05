## `jetty:12-jdk25-alpine-eclipse-temurin`

```console
$ docker pull jetty@sha256:44ae34bf148e5ee7470bbf1d41efb4241a375cd4bb03d4f740c85473fc438be4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `jetty:12-jdk25-alpine-eclipse-temurin` - linux; amd64

```console
$ docker pull jetty@sha256:e4a0fbe5722f002bf44e675323e2194f4747341d9490e0e4b312e23cd1738ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.0 MB (163964785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62912c83d21868394b68526a19e9127440d2ef48737ce202feefab966c2f6f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:51 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:51 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 19:18:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='d02eadc0a0f93faba4be38c8657eb8eef842103a4c7c2400f5827dbd90fc21c9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='efc86581260b73c340c313e7577c4c85d6a8a899edc3748d78bee5238fe44a4e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:59 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 20:22:10 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 05 Nov 2026 20:22:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 05 Nov 2026 20:22:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 05 Nov 2026 20:22:10 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 05 Nov 2026 20:22:10 GMT
ENV PATH=/usr/local/jetty/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:22:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 05 Nov 2026 20:22:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 05 Nov 2026 20:22:10 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 05 Nov 2026 20:22:10 GMT
WORKDIR /var/lib/jetty
# Thu, 05 Nov 2026 20:22:10 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 05 Nov 2026 20:22:10 GMT
USER jetty
# Thu, 05 Nov 2026 20:22:10 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:22:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:22:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4caf70d321377b7c0ff707e264166fd4c797a4eef18ca96b6ada60c33cfe2165`  
		Last Modified: Thu, 05 Nov 2026 19:19:15 GMT  
		Size: 14.4 MB (14374204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd4b4ff56f92cef8f9478ff3ea7e11c3ff68cfffc3bb044a334819c28779120`  
		Last Modified: Thu, 05 Nov 2026 19:19:17 GMT  
		Size: 91.7 MB (91663090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c993be7e77e2db2040cbbbacf49c796bc989aac15c8ad8e724d8d6c1ce44e6d`  
		Last Modified: Thu, 05 Nov 2026 19:19:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:465b2c94f2afe2dda730c0e4b28245cbfbfb9a1f7ae5dd6f010f83499ee2a9bf`  
		Last Modified: Thu, 05 Nov 2026 19:19:13 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de04d1a006ca411ec7242dda4cfd40051b1070ecce09112902b74ddf6b8e5d51`  
		Last Modified: Thu, 05 Nov 2026 20:22:20 GMT  
		Size: 54.1 MB (54069351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee54d0ded448c6fd7b7473e1f591c6fbb0e12ab81e7d01c64d15a07f9e173973`  
		Last Modified: Thu, 05 Nov 2026 20:22:19 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-alpine-eclipse-temurin` - unknown; unknown

```console
$ docker pull jetty@sha256:c20d82aca0b116e336d57095d4a9e18c899b81371e35721a5ce856bbb864838c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1385364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eb64607d5970b82e87bc6f4d30287e415b2153d9858d0f7dd1f99ab483bb0ac`

```dockerfile
```

-	Layers:
	-	`sha256:9e850189c4cee8e8a091cca88d0d15275877e4948f6a75ffef5c4f8218588b9b`  
		Last Modified: Thu, 05 Nov 2026 20:22:19 GMT  
		Size: 1.4 MB (1365105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4734d8428a5c09ead90c5cfa889eb51714e88a5f0047b77b0f96b30213bb658`  
		Last Modified: Thu, 05 Nov 2026 20:22:19 GMT  
		Size: 20.3 KB (20259 bytes)  
		MIME: application/vnd.in-toto+json
