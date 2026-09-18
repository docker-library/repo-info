## `jetty:12-jdk25-alpine-eclipse-temurin`

```console
$ docker pull jetty@sha256:ea1664b2e409c232f15861d3ac8945e2d9a08a8383ff43b8c677a30a56c61e47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `jetty:12-jdk25-alpine-eclipse-temurin` - linux; amd64

```console
$ docker pull jetty@sha256:5dd6a0562f4be12b99cad7797b036497e7f01714730bb4d6069f0c984ef09e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163860383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d730d5fc3590cb080c617906bfd2cbdbf243f4143c56a6a880e26752b44e9087`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:41:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:41:13 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:41:13 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Thu, 17 Sep 2026 21:41:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='3d1c5c7877e320c2cff8154cfca9af948089912b6efc6123bb21726b7055bc62';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='c6f3e9f975c130169283363bf0ef2fc55f45c36eacc909141ffa7189cd7bdcb7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Thu, 17 Sep 2026 21:41:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:41:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:41:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 17 Sep 2026 21:41:21 GMT
CMD ["jshell"]
# Thu, 17 Sep 2026 22:26:35 GMT
ENV JETTY_VERSION=12.1.13
# Thu, 17 Sep 2026 22:26:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 17 Sep 2026 22:26:35 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 17 Sep 2026 22:26:35 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 17 Sep 2026 22:26:35 GMT
ENV PATH=/usr/local/jetty/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:26:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Thu, 17 Sep 2026 22:26:35 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 17 Sep 2026 22:26:35 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 17 Sep 2026 22:26:35 GMT
WORKDIR /var/lib/jetty
# Thu, 17 Sep 2026 22:26:35 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 17 Sep 2026 22:26:35 GMT
USER jetty
# Thu, 17 Sep 2026 22:26:35 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 17 Sep 2026 22:26:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 22:26:35 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec82bfe91586f5f7311edd0e16591dca3ef8e0e1970599aaebb4d0e56fe9c9cc`  
		Last Modified: Thu, 17 Sep 2026 21:41:35 GMT  
		Size: 14.4 MB (14374514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13e008627794fa2acf382301c3ff447d7a785bb7385d223e9066813b68f5bd7`  
		Last Modified: Thu, 17 Sep 2026 21:41:37 GMT  
		Size: 91.6 MB (91632182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a455cf7f8f1bd0a47ab57a67a9600e72b09707e762daf0fdc8ea2673effdda`  
		Last Modified: Thu, 17 Sep 2026 21:41:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9058ea4b5f93012c6264d153c13e349d5eec3447a68856f05025da3c9a05aa82`  
		Last Modified: Thu, 17 Sep 2026 21:41:28 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386138cb2ec47e40128dd4563f3d735fddb531ad35cd5268523b6c70b74c88bd`  
		Last Modified: Thu, 17 Sep 2026 22:26:46 GMT  
		Size: 54.0 MB (53999482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8be2204d53eabab7a7e7c197a1c9fe8dac588684dea16ad108c0e95c5e648a29`  
		Last Modified: Thu, 17 Sep 2026 22:26:45 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-alpine-eclipse-temurin` - unknown; unknown

```console
$ docker pull jetty@sha256:35338ee53ba85c7225533255caeebfadacd810b529d0b9728a9118ebaf0b2d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1387900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca406fe8f6e4ff6d4de0177ac46d48130935483e6eb3f7a5cb1dd4d6ecea19e4`

```dockerfile
```

-	Layers:
	-	`sha256:95b09477f4d2b6f828809f2459fe8ee97f8da0022ef958bc8b3a0f30cfbb5e75`  
		Last Modified: Thu, 17 Sep 2026 22:26:45 GMT  
		Size: 1.4 MB (1367641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cf52d9307acc02d00d5fc697f4fb85c42ee1e2112f6a0b065e64380b98c509d`  
		Last Modified: Thu, 17 Sep 2026 22:26:45 GMT  
		Size: 20.3 KB (20259 bytes)  
		MIME: application/vnd.in-toto+json
