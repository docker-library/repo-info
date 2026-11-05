## `jetty:12-jdk17-alpine-eclipse-temurin`

```console
$ docker pull jetty@sha256:a2e4ab15a28b85f2ce06b3d7874dd322317be952a5fa02d8eb23b7de5d7e10c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `jetty:12-jdk17-alpine-eclipse-temurin` - linux; amd64

```console
$ docker pull jetty@sha256:f93099efd4f2c1788933b2dd7025c105c456e834ca2d4d045af35927e06ac118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217545031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5637dac16e738a9f9a185d3574fbb311caae99c92a56c3dda80ca9fc4fb42ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:17 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:17 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 05 Nov 2026 19:18:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='db018054d52c1c109ad128c1412ead2d84ae91052ce60ca370df17b6a89831f5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:24 GMT
CMD ["jshell"]
# Thu, 05 Nov 2026 20:22:35 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 05 Nov 2026 20:22:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 05 Nov 2026 20:22:35 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 05 Nov 2026 20:22:35 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 05 Nov 2026 20:22:35 GMT
ENV PATH=/usr/local/jetty/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:22:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 05 Nov 2026 20:22:35 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 05 Nov 2026 20:22:35 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	apk add --no-cache gnupg curl ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	addgroup -S jetty && adduser -h $JETTY_BASE -S jetty -G jetty; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	gpgconf --kill all ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 05 Nov 2026 20:22:35 GMT
WORKDIR /var/lib/jetty
# Thu, 05 Nov 2026 20:22:35 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 05 Nov 2026 20:22:35 GMT
USER jetty
# Thu, 05 Nov 2026 20:22:35 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:22:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:22:35 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f74b4293c839a352056f1f29cfabc0c67bcf5688a81c59c1d76529a5d867b0`  
		Last Modified: Thu, 05 Nov 2026 19:18:40 GMT  
		Size: 21.4 MB (21439921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c5df918e206c65c3377faa14d0aec834b4f0fff170a650766b870817d85ad8a`  
		Last Modified: Thu, 05 Nov 2026 19:18:42 GMT  
		Size: 145.2 MB (145238291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50b73f6f014552669738e82a69884918837048f08d9d2e28523e4d9b20d0d8e`  
		Last Modified: Thu, 05 Nov 2026 19:18:39 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2657b2ba1ff929a0ef1335ab6ddbd6d54a1733df49bd565dc6003ded46fa9626`  
		Last Modified: Thu, 05 Nov 2026 19:18:39 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5905b7d62a590755ca4cd65c93cd1e216abbe04cd17d2e8aea19bb8adaf8cc`  
		Last Modified: Thu, 05 Nov 2026 20:22:46 GMT  
		Size: 47.0 MB (47008682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05cd7142476e80bcb56068027791b708083a01f995e39fa1f5155d57b90eec84`  
		Last Modified: Thu, 05 Nov 2026 20:22:44 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-alpine-eclipse-temurin` - unknown; unknown

```console
$ docker pull jetty@sha256:6b1f885056944936f911db2ebca0642c1a9f09efd181002b53a2d7f23fb9f464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 MB (1418588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a82967e21706b60cb5058eabb72b3881804da1ff1e862890ebb364c7a7d7eb05`

```dockerfile
```

-	Layers:
	-	`sha256:d00df6ae0d584ef18a7bece936a0449c545e555c9c851c4479988723707ebcee`  
		Last Modified: Thu, 05 Nov 2026 20:22:44 GMT  
		Size: 1.4 MB (1398324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40823f67f9643e6079f46349f82b078b30ee853d1ee53f0c3741789298c692cf`  
		Last Modified: Thu, 05 Nov 2026 20:22:44 GMT  
		Size: 20.3 KB (20264 bytes)  
		MIME: application/vnd.in-toto+json
