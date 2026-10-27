<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `convertigo`

-	[`convertigo:8.3`](#convertigo83)
-	[`convertigo:8.3.14`](#convertigo8314)
-	[`convertigo:8.4`](#convertigo84)
-	[`convertigo:8.4.6`](#convertigo846)
-	[`convertigo:latest`](#convertigolatest)

## `convertigo:8.3`

```console
$ docker pull convertigo@sha256:e8e0bed4811d12bcd9ecb78109a5cf9a992bdc56935706048873cc5a31df4748
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `convertigo:8.3` - linux; amd64

```console
$ docker pull convertigo@sha256:74d7e2a45296ae2725d25fdd2a6832ddffbaab798360db6310d5abac29aa8e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.1 MB (344113195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b07a2179896bff48ed1f07562f25178233786a908e1820354f8245c283a4ee`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:13:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:13:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:13:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:13:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:13:03 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:13:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:13:12 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:38:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:38:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:38:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:38:26 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:38:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:38:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:38:26 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:38:26 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:38:26 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:32 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:32 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:32 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:32 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:44:30 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:44:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:44:30 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:44:30 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:44:41 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:44:41 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace     && chown -R convertigo:convertigo /workspace     && chmod -R 777 /workspace     && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo     && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:44:41 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:44:41 GMT
ENV CONVERTIGO_VERSION=8.3.14
# Tue, 27 Oct 2026 01:44:41 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.3.14/convertigo-8.3.14.war
# Tue, 27 Oct 2026 01:44:41 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:44:45 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:44:45 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:44:45 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:44:45 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:44:45 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:44:45 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:44:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:44:45 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a116184e941bb99c05fa604f2cee62f4e94214aaee13d9ea251f5e35c0fe0ceb`  
		Last Modified: Mon, 26 Oct 2026 23:13:29 GMT  
		Size: 20.7 MB (20664163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c28ed0772975c49d649e2e681672a6ab6ad9f6bdd6889ba39ede9c16194d635`  
		Last Modified: Mon, 26 Oct 2026 23:13:32 GMT  
		Size: 158.1 MB (158122476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3d6b5769920966d540e01ce842e4ae40ef913428ccc17c3cafddb4912c83a6`  
		Last Modified: Mon, 26 Oct 2026 23:13:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63591917c2638c7c92da89daea6d1681f9e1f8459c7fbeaffe405d082fa7512`  
		Last Modified: Mon, 26 Oct 2026 23:13:00 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a106a108926a3a2c2c54c31caa9ed2feab050a34c6345c5df86f73bb77df49`  
		Last Modified: Tue, 27 Oct 2026 00:39:09 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a46a2423aabfe3f7eaa2388530399dc8e1a07e3f9666cedefd592f69599c7e3`  
		Last Modified: Tue, 27 Oct 2026 00:40:41 GMT  
		Size: 14.2 MB (14197009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855a0a73e5406d0a14969e653002e1a40fa0b27a145f1777bf627531a238709f`  
		Last Modified: Tue, 27 Oct 2026 01:45:00 GMT  
		Size: 1.5 MB (1490715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba8e3bd07c73f37f02f6ed5e656e154dd331e20039feea779a3709e18225634`  
		Last Modified: Tue, 27 Oct 2026 01:44:59 GMT  
		Size: 4.5 KB (4469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96258b03ba2c2f4a5262a2c7a4f39979172c4eb6e7dfbdc3b7c681e421268b6`  
		Last Modified: Tue, 27 Oct 2026 01:45:00 GMT  
		Size: 28.1 KB (28050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a36b7ac6230b41ed70236541edbab3d6b113d627209d4089047e112032b836`  
		Last Modified: Tue, 27 Oct 2026 01:45:02 GMT  
		Size: 119.8 MB (119847978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42b72c16703f5489c1cf5475ed94a76d1333ab5b089b9b4a75b21e2a9396644`  
		Last Modified: Tue, 27 Oct 2026 01:45:01 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5820601baf8f8d0cc0782a956154ec7832b0c44edbd58971967694c60e3ef3c9`  
		Last Modified: Tue, 27 Oct 2026 01:45:01 GMT  
		Size: 2.5 KB (2477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:8.3` - unknown; unknown

```console
$ docker pull convertigo@sha256:94494d04474af8ca059c82644df05a9b4174e4a09376767dd6a7406184f14d1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4377466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b69b64f67c9964ee7397ad98be8dacab46067d074a63abd22ada2487f80d0fa`

```dockerfile
```

-	Layers:
	-	`sha256:d72c06bae85a7258e9da3d56e0b08df11a5b27a7c279a37087d3b96588d310b7`  
		Last Modified: Tue, 27 Oct 2026 01:44:59 GMT  
		Size: 4.3 MB (4332804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29738352b0125342326a8edad10de911efc8b2981b752a6dae4a2a487494cfca`  
		Last Modified: Tue, 27 Oct 2026 01:44:59 GMT  
		Size: 44.7 KB (44662 bytes)  
		MIME: application/vnd.in-toto+json

### `convertigo:8.3` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:51e3bc2bae786c9c20d96d688a977bec01e1f84f4cbe634a548e9cefe11e5290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.7 MB (341656206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bae317dbbf3d4437c909daef26d3759d3afde9006f3fa268928415c2f8ad47`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:23 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:17:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:17:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:17:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:17:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:17:32 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:40:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:40:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:40:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:40:15 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:40:15 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:40:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:40:15 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:40:15 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:40:15 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:48 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:48 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:48 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:48 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:28:45 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:28:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:28:45 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:28:45 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:28:57 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:28:58 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace     && chown -R convertigo:convertigo /workspace     && chmod -R 777 /workspace     && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo     && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:28:58 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:28:58 GMT
ENV CONVERTIGO_VERSION=8.3.14
# Tue, 27 Oct 2026 01:28:58 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.3.14/convertigo-8.3.14.war
# Tue, 27 Oct 2026 01:28:58 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:29:05 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:29:05 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:29:05 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:29:05 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:29:05 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:29:05 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:29:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:29:05 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac10c985eed90a73afd5230edb17c768fd39adda23b18330f6ee6a8bd6cb15b`  
		Last Modified: Mon, 26 Oct 2026 23:17:51 GMT  
		Size: 22.1 MB (22080540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad23831771b1269fcdd07262258b9bee557e17fc99aeb0f142f2b826becb12`  
		Last Modified: Mon, 26 Oct 2026 23:17:54 GMT  
		Size: 156.4 MB (156409440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795bd6c20b53d0d4491bc1175ff6126b172b3c5143253970af73c25abb8d3840`  
		Last Modified: Mon, 26 Oct 2026 23:17:50 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ef37534efd7ce11711552a71fa971b70f5752c92c2c2275374244babf4b4d6`  
		Last Modified: Mon, 26 Oct 2026 23:17:47 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0cfb256669ce525943eabb3e9f8db31408df00208f9b3c0c035592f9515d40`  
		Last Modified: Tue, 27 Oct 2026 00:40:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3109e03871825bdc380437fa070e818cd46f2de2ebf8376f8349b91fda936452`  
		Last Modified: Tue, 27 Oct 2026 00:40:59 GMT  
		Size: 14.2 MB (14201067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63f3b94a63ec4e86ab3c6f0cd19a68c831644a57ac8f4932cb7bdf1be26f398`  
		Last Modified: Tue, 27 Oct 2026 01:29:22 GMT  
		Size: 1.4 MB (1394180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c120c2273101ff1954e55350ca71f31932926d08c4ef4c9d2ca70fa385472434`  
		Last Modified: Tue, 27 Oct 2026 01:29:22 GMT  
		Size: 4.5 KB (4478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93666a63856024622048cf544b0171b4e619f59c36b5fde62935093fefd8192f`  
		Last Modified: Tue, 27 Oct 2026 01:29:21 GMT  
		Size: 28.1 KB (28052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06673ffd213f93338aa42d09797fd784392e203950eaafd143c87ef6fabf1db7`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 119.8 MB (119847991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865d0663efdaf493d7957e95bd3a16ea7ef19bd09e9771509ad9058411caab18`  
		Last Modified: Tue, 27 Oct 2026 01:29:23 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e57b308401ad94b87368b58a0f2a30fd85835a4dd67f84c8f9ba5b5366ee79`  
		Last Modified: Tue, 27 Oct 2026 01:29:23 GMT  
		Size: 2.5 KB (2481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:8.3` - unknown; unknown

```console
$ docker pull convertigo@sha256:ee903b9b6e3c756a058ddf1a9ab30b805ad8f8bbaeb914d90a86d6cbe8c00ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4473060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780de8015152dce241d70992682bd34e9b64742dd4ea5d501a1715cf38cd170e`

```dockerfile
```

-	Layers:
	-	`sha256:6b3549af9aec9d8d56ff03c79fe8e1908c44055d98aa86af2efe959b7911f293`  
		Last Modified: Tue, 27 Oct 2026 01:29:22 GMT  
		Size: 4.4 MB (4428258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:add3e1e192d78db6c093336e4275624c34f2b9707db518c6ac4e9d608c2bac9a`  
		Last Modified: Tue, 27 Oct 2026 01:29:21 GMT  
		Size: 44.8 KB (44802 bytes)  
		MIME: application/vnd.in-toto+json

## `convertigo:8.3.14`

```console
$ docker pull convertigo@sha256:e8e0bed4811d12bcd9ecb78109a5cf9a992bdc56935706048873cc5a31df4748
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `convertigo:8.3.14` - linux; amd64

```console
$ docker pull convertigo@sha256:74d7e2a45296ae2725d25fdd2a6832ddffbaab798360db6310d5abac29aa8e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.1 MB (344113195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b07a2179896bff48ed1f07562f25178233786a908e1820354f8245c283a4ee`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:13:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:13:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:13:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:13:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:13:03 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:13:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:13:12 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:38:26 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:38:26 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:38:26 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:38:26 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:38:26 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:38:26 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:38:26 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:38:26 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:38:26 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:32 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:32 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:32 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:32 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:44:30 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:44:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:44:30 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:44:30 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:44:41 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:44:41 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace     && chown -R convertigo:convertigo /workspace     && chmod -R 777 /workspace     && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo     && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:44:41 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:44:41 GMT
ENV CONVERTIGO_VERSION=8.3.14
# Tue, 27 Oct 2026 01:44:41 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.3.14/convertigo-8.3.14.war
# Tue, 27 Oct 2026 01:44:41 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:44:45 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:44:45 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:44:45 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:44:45 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:44:45 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:44:45 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:44:45 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:44:45 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a116184e941bb99c05fa604f2cee62f4e94214aaee13d9ea251f5e35c0fe0ceb`  
		Last Modified: Mon, 26 Oct 2026 23:13:29 GMT  
		Size: 20.7 MB (20664163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c28ed0772975c49d649e2e681672a6ab6ad9f6bdd6889ba39ede9c16194d635`  
		Last Modified: Mon, 26 Oct 2026 23:13:32 GMT  
		Size: 158.1 MB (158122476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3d6b5769920966d540e01ce842e4ae40ef913428ccc17c3cafddb4912c83a6`  
		Last Modified: Mon, 26 Oct 2026 23:13:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63591917c2638c7c92da89daea6d1681f9e1f8459c7fbeaffe405d082fa7512`  
		Last Modified: Mon, 26 Oct 2026 23:13:00 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a106a108926a3a2c2c54c31caa9ed2feab050a34c6345c5df86f73bb77df49`  
		Last Modified: Tue, 27 Oct 2026 00:39:09 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a46a2423aabfe3f7eaa2388530399dc8e1a07e3f9666cedefd592f69599c7e3`  
		Last Modified: Tue, 27 Oct 2026 00:40:41 GMT  
		Size: 14.2 MB (14197009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855a0a73e5406d0a14969e653002e1a40fa0b27a145f1777bf627531a238709f`  
		Last Modified: Tue, 27 Oct 2026 01:45:00 GMT  
		Size: 1.5 MB (1490715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba8e3bd07c73f37f02f6ed5e656e154dd331e20039feea779a3709e18225634`  
		Last Modified: Tue, 27 Oct 2026 01:44:59 GMT  
		Size: 4.5 KB (4469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96258b03ba2c2f4a5262a2c7a4f39979172c4eb6e7dfbdc3b7c681e421268b6`  
		Last Modified: Tue, 27 Oct 2026 01:45:00 GMT  
		Size: 28.1 KB (28050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a36b7ac6230b41ed70236541edbab3d6b113d627209d4089047e112032b836`  
		Last Modified: Tue, 27 Oct 2026 01:45:02 GMT  
		Size: 119.8 MB (119847978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42b72c16703f5489c1cf5475ed94a76d1333ab5b089b9b4a75b21e2a9396644`  
		Last Modified: Tue, 27 Oct 2026 01:45:01 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5820601baf8f8d0cc0782a956154ec7832b0c44edbd58971967694c60e3ef3c9`  
		Last Modified: Tue, 27 Oct 2026 01:45:01 GMT  
		Size: 2.5 KB (2477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:8.3.14` - unknown; unknown

```console
$ docker pull convertigo@sha256:94494d04474af8ca059c82644df05a9b4174e4a09376767dd6a7406184f14d1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4377466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b69b64f67c9964ee7397ad98be8dacab46067d074a63abd22ada2487f80d0fa`

```dockerfile
```

-	Layers:
	-	`sha256:d72c06bae85a7258e9da3d56e0b08df11a5b27a7c279a37087d3b96588d310b7`  
		Last Modified: Tue, 27 Oct 2026 01:44:59 GMT  
		Size: 4.3 MB (4332804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29738352b0125342326a8edad10de911efc8b2981b752a6dae4a2a487494cfca`  
		Last Modified: Tue, 27 Oct 2026 01:44:59 GMT  
		Size: 44.7 KB (44662 bytes)  
		MIME: application/vnd.in-toto+json

### `convertigo:8.3.14` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:51e3bc2bae786c9c20d96d688a977bec01e1f84f4cbe634a548e9cefe11e5290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.7 MB (341656206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bae317dbbf3d4437c909daef26d3759d3afde9006f3fa268928415c2f8ad47`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:23 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:17:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:17:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:17:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:17:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:17:32 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:40:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:40:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:40:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:40:15 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:40:15 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:40:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:40:15 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:40:15 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:40:15 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:48 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:48 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:48 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:48 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:28:45 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:28:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:28:45 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:28:45 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:28:57 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:28:58 GMT
RUN useradd -s /bin/false -m convertigo     && mkdir -p /workspace     && chown -R convertigo:convertigo /workspace     && chmod -R 777 /workspace     && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo     && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:28:58 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:28:58 GMT
ENV CONVERTIGO_VERSION=8.3.14
# Tue, 27 Oct 2026 01:28:58 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.3.14/convertigo-8.3.14.war
# Tue, 27 Oct 2026 01:28:58 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:29:05 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:29:05 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:29:05 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:29:05 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:29:05 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:29:05 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:29:05 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:29:05 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac10c985eed90a73afd5230edb17c768fd39adda23b18330f6ee6a8bd6cb15b`  
		Last Modified: Mon, 26 Oct 2026 23:17:51 GMT  
		Size: 22.1 MB (22080540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad23831771b1269fcdd07262258b9bee557e17fc99aeb0f142f2b826becb12`  
		Last Modified: Mon, 26 Oct 2026 23:17:54 GMT  
		Size: 156.4 MB (156409440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795bd6c20b53d0d4491bc1175ff6126b172b3c5143253970af73c25abb8d3840`  
		Last Modified: Mon, 26 Oct 2026 23:17:50 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ef37534efd7ce11711552a71fa971b70f5752c92c2c2275374244babf4b4d6`  
		Last Modified: Mon, 26 Oct 2026 23:17:47 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0cfb256669ce525943eabb3e9f8db31408df00208f9b3c0c035592f9515d40`  
		Last Modified: Tue, 27 Oct 2026 00:40:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3109e03871825bdc380437fa070e818cd46f2de2ebf8376f8349b91fda936452`  
		Last Modified: Tue, 27 Oct 2026 00:40:59 GMT  
		Size: 14.2 MB (14201067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63f3b94a63ec4e86ab3c6f0cd19a68c831644a57ac8f4932cb7bdf1be26f398`  
		Last Modified: Tue, 27 Oct 2026 01:29:22 GMT  
		Size: 1.4 MB (1394180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c120c2273101ff1954e55350ca71f31932926d08c4ef4c9d2ca70fa385472434`  
		Last Modified: Tue, 27 Oct 2026 01:29:22 GMT  
		Size: 4.5 KB (4478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93666a63856024622048cf544b0171b4e619f59c36b5fde62935093fefd8192f`  
		Last Modified: Tue, 27 Oct 2026 01:29:21 GMT  
		Size: 28.1 KB (28052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06673ffd213f93338aa42d09797fd784392e203950eaafd143c87ef6fabf1db7`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 119.8 MB (119847991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865d0663efdaf493d7957e95bd3a16ea7ef19bd09e9771509ad9058411caab18`  
		Last Modified: Tue, 27 Oct 2026 01:29:23 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e57b308401ad94b87368b58a0f2a30fd85835a4dd67f84c8f9ba5b5366ee79`  
		Last Modified: Tue, 27 Oct 2026 01:29:23 GMT  
		Size: 2.5 KB (2481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:8.3.14` - unknown; unknown

```console
$ docker pull convertigo@sha256:ee903b9b6e3c756a058ddf1a9ab30b805ad8f8bbaeb914d90a86d6cbe8c00ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4473060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:780de8015152dce241d70992682bd34e9b64742dd4ea5d501a1715cf38cd170e`

```dockerfile
```

-	Layers:
	-	`sha256:6b3549af9aec9d8d56ff03c79fe8e1908c44055d98aa86af2efe959b7911f293`  
		Last Modified: Tue, 27 Oct 2026 01:29:22 GMT  
		Size: 4.4 MB (4428258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:add3e1e192d78db6c093336e4275624c34f2b9707db518c6ac4e9d608c2bac9a`  
		Last Modified: Tue, 27 Oct 2026 01:29:21 GMT  
		Size: 44.8 KB (44802 bytes)  
		MIME: application/vnd.in-toto+json

## `convertigo:8.4`

```console
$ docker pull convertigo@sha256:38a8aab61ec2ad7034044c21213f1a978dc01d27f31644ba9d53216f0acfeeb0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `convertigo:8.4` - linux; amd64

```console
$ docker pull convertigo@sha256:067a587d8192d183e8df0cedeefd4ae1c3b114d194ee847ce133f7cd3eeba8bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.5 MB (327454539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0caefc6c92dc4abd719a6df66e79e2ea7e39daaeb152ee5d9d7dd068987a80a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:13:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:13:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:13:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:13:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:13:19 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:13:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='8dbef2b12ceaecec9b5f00d7f568309b7e3525137777736abfc65900c054ccf9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:13:38 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:39:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:39:48 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:39:48 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:39:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:25 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:25 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:25 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:25 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:44:35 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:44:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:44:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:44:35 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:44:49 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
RUN groupmod -n convertigo ubuntu   && usermod -l convertigo -d /home/convertigo -m ubuntu   && mkdir -p /workspace   && chown -R 1000:1000 /workspace   && chmod -R 777 /workspace   && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo   && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_VERSION=8.4.6
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.4.6/convertigo-8.4.6.war
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:44:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && chmod -R a+rX WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:44:55 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:44:55 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:44:55 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:44:55 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ffeb63339874ba31095b294c4d1a68f5e5e3d38537a8e2dd3cb0ba1c362b75`  
		Last Modified: Mon, 26 Oct 2026 23:13:52 GMT  
		Size: 17.4 MB (17442864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2ebeef9b811ca4614ee42bf7fb245ef8298b8b83601d4446f3703b2f58f389`  
		Last Modified: Mon, 26 Oct 2026 23:13:54 GMT  
		Size: 92.8 MB (92750131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7fec489b20838c80294c0a2bdf47678e20d0ccf67f08dcca932f64b4eb86bf`  
		Last Modified: Mon, 26 Oct 2026 23:13:51 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca070ce3300b17b46fd4724bc1e2fe2455bb52ed229986c5221fc01d9d814f90`  
		Last Modified: Tue, 27 Oct 2026 00:40:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b832f1be4e6c1cdb5462f5fdd39786def1dab36f8cf032563b4a088278a8c0ac`  
		Last Modified: Tue, 27 Oct 2026 00:40:36 GMT  
		Size: 14.1 MB (14144229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d8b21faac666c102a3f621804ac07b8f05d6e64b077c150cd2e0c17713cdd2`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 6.8 MB (6832544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9f9c08404160162c7fb7e0fb5e97987d8b6845ec7c53324dafaaa05b0d42c8`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 3.6 KB (3622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed60ac565fa282cf63db0ec0e4d0191da56b9c8a070ac64b53bc2ca225459fb`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 28.1 KB (28051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e161c80fe87ea3a8d1ebd12186ea0e2e3fc40fc7ae7c14541bf0cecac0a3357`  
		Last Modified: Tue, 27 Oct 2026 01:45:19 GMT  
		Size: 166.5 MB (166479458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc2b618b993fbfd362819d633c2eedf2e66bad79e3167dcf873ccd95c147b00`  
		Last Modified: Tue, 27 Oct 2026 01:45:17 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286e448f8061bd7659b7cfa6d3843a21ccb3647cbe5eb56463c152991f2ecfe9`  
		Last Modified: Tue, 27 Oct 2026 01:45:17 GMT  
		Size: 2.8 KB (2785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:8.4` - unknown; unknown

```console
$ docker pull convertigo@sha256:00cb0513f529451900cc3734abaac16ab27b1d164755bc786d7fdad3e66698e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3768130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116b11c96e4ef2fbad474511625ca826acf413550818315dbe0456ed77356510`

```dockerfile
```

-	Layers:
	-	`sha256:89ec42460baa752dea5e62cd0d51d1ff7ba2a953495fe3d8b1183ea401a442f6`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 3.7 MB (3722800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc10fdd065ef48f06bc794e87796c2fb0c06e7896dca789e881a1fdb9de0eb3`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 45.3 KB (45330 bytes)  
		MIME: application/vnd.in-toto+json

### `convertigo:8.4` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:7c824f10f9cc9ec975d912c83376bdbbfc2e53d585f089987f3433b0e2cad07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326656390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2a8143476af1f98e3ae1c96a7b27676d0f93b8bb292a78533fe908eeffc11d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:55 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:18:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='8dbef2b12ceaecec9b5f00d7f568309b7e3525137777736abfc65900c054ccf9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:18:18 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:39:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:39:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:39:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:39:52 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:29 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:29 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:29 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:28:39 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:28:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:28:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:28:39 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:28:54 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
RUN groupmod -n convertigo ubuntu   && usermod -l convertigo -d /home/convertigo -m ubuntu   && mkdir -p /workspace   && chown -R 1000:1000 /workspace   && chmod -R 777 /workspace   && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo   && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_VERSION=8.4.6
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.4.6/convertigo-8.4.6.war
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:29:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && chmod -R a+rX WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:29:04 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:29:04 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:29:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:29:04 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b7ca232e64e062dc8b8f4cbb70bfd4be9c056485498acd05522b5a4e38f7b6`  
		Last Modified: Mon, 26 Oct 2026 23:18:34 GMT  
		Size: 18.6 MB (18633153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1167c20374a35d77e39a04b63ca0093d4fc9a054ba1b1b5615c3d50c5cddc125`  
		Last Modified: Mon, 26 Oct 2026 23:18:36 GMT  
		Size: 91.7 MB (91650565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc07d3385c263762ad0d5125ad9f835ab1f6d256fe95977cf8bd27e00a8684e`  
		Last Modified: Mon, 26 Oct 2026 23:18:34 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8462046cb3a305d2cd57b65504db1252319ebcbf6b392d82ea7ee8bd1df69c7e`  
		Last Modified: Tue, 27 Oct 2026 00:40:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033f7ea4ae240e8e3a83cacab8e70fe578621fb3e9781bb2745886a5833e5436`  
		Last Modified: Tue, 27 Oct 2026 00:40:40 GMT  
		Size: 14.2 MB (14153890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0116a297adc1cc392a798d413cb49f96626506facd0b4e331b8f06a960644c55`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 6.8 MB (6761512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13e7f2f29b5662b189bfeeaa34981e91ced4d66a4e74c8676749eeefbf75260`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 3.6 KB (3621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ca8c4bfffd66f5128d927c96dc15fe68443f352177a4e894dc88ede3f74b3d`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 28.0 KB (28046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd32faed041a3f17d13ce3163e58e8d3c0a7034ca6b4b19d40449ed05515b7be`  
		Last Modified: Tue, 27 Oct 2026 01:29:27 GMT  
		Size: 166.5 MB (166479444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2333d08b4c47c47ca26e59ed159f34f7bf8cd794e2c161bdc7c96de83af60616`  
		Last Modified: Tue, 27 Oct 2026 01:29:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11027c0f7a36eb3bafd6bf41fcfec2b5a149648b47700021de66cbd76dbb526`  
		Last Modified: Tue, 27 Oct 2026 01:29:25 GMT  
		Size: 2.8 KB (2789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:8.4` - unknown; unknown

```console
$ docker pull convertigo@sha256:59ba77e5d23a4974d20b41fdbcf3b43c4b7e0fd6a48d1fb05ee0f1e5b7ccb1b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3899785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1401b87b8ca5b7c7662e7076c7abd638269edc6f28a5fc769dd7fad6d61267`

```dockerfile
```

-	Layers:
	-	`sha256:66ca7a65a4c7d120fcfc8990dec99232dc8ef8974667cf52fc945c85396ae5c0`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 3.9 MB (3854303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea198a570a7a7651bfd84dc100b9bc381c88afdc484b80a1a95d26fbd5f5c3dd`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 45.5 KB (45482 bytes)  
		MIME: application/vnd.in-toto+json

## `convertigo:8.4.6`

```console
$ docker pull convertigo@sha256:38a8aab61ec2ad7034044c21213f1a978dc01d27f31644ba9d53216f0acfeeb0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `convertigo:8.4.6` - linux; amd64

```console
$ docker pull convertigo@sha256:067a587d8192d183e8df0cedeefd4ae1c3b114d194ee847ce133f7cd3eeba8bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.5 MB (327454539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0caefc6c92dc4abd719a6df66e79e2ea7e39daaeb152ee5d9d7dd068987a80a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:13:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:13:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:13:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:13:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:13:19 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:13:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='8dbef2b12ceaecec9b5f00d7f568309b7e3525137777736abfc65900c054ccf9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:13:38 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:39:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:39:48 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:39:48 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:39:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:25 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:25 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:25 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:25 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:44:35 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:44:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:44:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:44:35 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:44:49 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
RUN groupmod -n convertigo ubuntu   && usermod -l convertigo -d /home/convertigo -m ubuntu   && mkdir -p /workspace   && chown -R 1000:1000 /workspace   && chmod -R 777 /workspace   && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo   && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_VERSION=8.4.6
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.4.6/convertigo-8.4.6.war
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:44:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && chmod -R a+rX WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:44:55 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:44:55 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:44:55 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:44:55 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ffeb63339874ba31095b294c4d1a68f5e5e3d38537a8e2dd3cb0ba1c362b75`  
		Last Modified: Mon, 26 Oct 2026 23:13:52 GMT  
		Size: 17.4 MB (17442864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2ebeef9b811ca4614ee42bf7fb245ef8298b8b83601d4446f3703b2f58f389`  
		Last Modified: Mon, 26 Oct 2026 23:13:54 GMT  
		Size: 92.8 MB (92750131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7fec489b20838c80294c0a2bdf47678e20d0ccf67f08dcca932f64b4eb86bf`  
		Last Modified: Mon, 26 Oct 2026 23:13:51 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca070ce3300b17b46fd4724bc1e2fe2455bb52ed229986c5221fc01d9d814f90`  
		Last Modified: Tue, 27 Oct 2026 00:40:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b832f1be4e6c1cdb5462f5fdd39786def1dab36f8cf032563b4a088278a8c0ac`  
		Last Modified: Tue, 27 Oct 2026 00:40:36 GMT  
		Size: 14.1 MB (14144229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d8b21faac666c102a3f621804ac07b8f05d6e64b077c150cd2e0c17713cdd2`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 6.8 MB (6832544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9f9c08404160162c7fb7e0fb5e97987d8b6845ec7c53324dafaaa05b0d42c8`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 3.6 KB (3622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed60ac565fa282cf63db0ec0e4d0191da56b9c8a070ac64b53bc2ca225459fb`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 28.1 KB (28051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e161c80fe87ea3a8d1ebd12186ea0e2e3fc40fc7ae7c14541bf0cecac0a3357`  
		Last Modified: Tue, 27 Oct 2026 01:45:19 GMT  
		Size: 166.5 MB (166479458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc2b618b993fbfd362819d633c2eedf2e66bad79e3167dcf873ccd95c147b00`  
		Last Modified: Tue, 27 Oct 2026 01:45:17 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286e448f8061bd7659b7cfa6d3843a21ccb3647cbe5eb56463c152991f2ecfe9`  
		Last Modified: Tue, 27 Oct 2026 01:45:17 GMT  
		Size: 2.8 KB (2785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:8.4.6` - unknown; unknown

```console
$ docker pull convertigo@sha256:00cb0513f529451900cc3734abaac16ab27b1d164755bc786d7fdad3e66698e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3768130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116b11c96e4ef2fbad474511625ca826acf413550818315dbe0456ed77356510`

```dockerfile
```

-	Layers:
	-	`sha256:89ec42460baa752dea5e62cd0d51d1ff7ba2a953495fe3d8b1183ea401a442f6`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 3.7 MB (3722800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc10fdd065ef48f06bc794e87796c2fb0c06e7896dca789e881a1fdb9de0eb3`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 45.3 KB (45330 bytes)  
		MIME: application/vnd.in-toto+json

### `convertigo:8.4.6` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:7c824f10f9cc9ec975d912c83376bdbbfc2e53d585f089987f3433b0e2cad07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326656390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2a8143476af1f98e3ae1c96a7b27676d0f93b8bb292a78533fe908eeffc11d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:55 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:18:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='8dbef2b12ceaecec9b5f00d7f568309b7e3525137777736abfc65900c054ccf9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:18:18 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:39:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:39:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:39:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:39:52 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:29 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:29 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:29 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:28:39 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:28:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:28:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:28:39 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:28:54 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
RUN groupmod -n convertigo ubuntu   && usermod -l convertigo -d /home/convertigo -m ubuntu   && mkdir -p /workspace   && chown -R 1000:1000 /workspace   && chmod -R 777 /workspace   && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo   && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_VERSION=8.4.6
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.4.6/convertigo-8.4.6.war
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:29:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && chmod -R a+rX WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:29:04 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:29:04 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:29:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:29:04 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b7ca232e64e062dc8b8f4cbb70bfd4be9c056485498acd05522b5a4e38f7b6`  
		Last Modified: Mon, 26 Oct 2026 23:18:34 GMT  
		Size: 18.6 MB (18633153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1167c20374a35d77e39a04b63ca0093d4fc9a054ba1b1b5615c3d50c5cddc125`  
		Last Modified: Mon, 26 Oct 2026 23:18:36 GMT  
		Size: 91.7 MB (91650565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc07d3385c263762ad0d5125ad9f835ab1f6d256fe95977cf8bd27e00a8684e`  
		Last Modified: Mon, 26 Oct 2026 23:18:34 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8462046cb3a305d2cd57b65504db1252319ebcbf6b392d82ea7ee8bd1df69c7e`  
		Last Modified: Tue, 27 Oct 2026 00:40:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033f7ea4ae240e8e3a83cacab8e70fe578621fb3e9781bb2745886a5833e5436`  
		Last Modified: Tue, 27 Oct 2026 00:40:40 GMT  
		Size: 14.2 MB (14153890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0116a297adc1cc392a798d413cb49f96626506facd0b4e331b8f06a960644c55`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 6.8 MB (6761512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13e7f2f29b5662b189bfeeaa34981e91ced4d66a4e74c8676749eeefbf75260`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 3.6 KB (3621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ca8c4bfffd66f5128d927c96dc15fe68443f352177a4e894dc88ede3f74b3d`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 28.0 KB (28046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd32faed041a3f17d13ce3163e58e8d3c0a7034ca6b4b19d40449ed05515b7be`  
		Last Modified: Tue, 27 Oct 2026 01:29:27 GMT  
		Size: 166.5 MB (166479444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2333d08b4c47c47ca26e59ed159f34f7bf8cd794e2c161bdc7c96de83af60616`  
		Last Modified: Tue, 27 Oct 2026 01:29:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11027c0f7a36eb3bafd6bf41fcfec2b5a149648b47700021de66cbd76dbb526`  
		Last Modified: Tue, 27 Oct 2026 01:29:25 GMT  
		Size: 2.8 KB (2789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:8.4.6` - unknown; unknown

```console
$ docker pull convertigo@sha256:59ba77e5d23a4974d20b41fdbcf3b43c4b7e0fd6a48d1fb05ee0f1e5b7ccb1b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3899785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1401b87b8ca5b7c7662e7076c7abd638269edc6f28a5fc769dd7fad6d61267`

```dockerfile
```

-	Layers:
	-	`sha256:66ca7a65a4c7d120fcfc8990dec99232dc8ef8974667cf52fc945c85396ae5c0`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 3.9 MB (3854303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea198a570a7a7651bfd84dc100b9bc381c88afdc484b80a1a95d26fbd5f5c3dd`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 45.5 KB (45482 bytes)  
		MIME: application/vnd.in-toto+json

## `convertigo:latest`

```console
$ docker pull convertigo@sha256:38a8aab61ec2ad7034044c21213f1a978dc01d27f31644ba9d53216f0acfeeb0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `convertigo:latest` - linux; amd64

```console
$ docker pull convertigo@sha256:067a587d8192d183e8df0cedeefd4ae1c3b114d194ee847ce133f7cd3eeba8bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.5 MB (327454539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0caefc6c92dc4abd719a6df66e79e2ea7e39daaeb152ee5d9d7dd068987a80a`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:13:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:13:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:13:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:13:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:13:19 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:13:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='8dbef2b12ceaecec9b5f00d7f568309b7e3525137777736abfc65900c054ccf9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:13:38 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:39:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:39:48 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:39:48 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:39:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:39:48 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:25 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:25 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:25 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:25 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:44:35 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:44:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:44:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:44:35 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:44:49 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
RUN groupmod -n convertigo ubuntu   && usermod -l convertigo -d /home/convertigo -m ubuntu   && mkdir -p /workspace   && chown -R 1000:1000 /workspace   && chmod -R 777 /workspace   && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo   && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_VERSION=8.4.6
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.4.6/convertigo-8.4.6.war
# Tue, 27 Oct 2026 01:44:49 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:44:55 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && chmod -R a+rX WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:44:55 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:44:55 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:44:55 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:44:55 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:44:55 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ffeb63339874ba31095b294c4d1a68f5e5e3d38537a8e2dd3cb0ba1c362b75`  
		Last Modified: Mon, 26 Oct 2026 23:13:52 GMT  
		Size: 17.4 MB (17442864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2ebeef9b811ca4614ee42bf7fb245ef8298b8b83601d4446f3703b2f58f389`  
		Last Modified: Mon, 26 Oct 2026 23:13:54 GMT  
		Size: 92.8 MB (92750131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7fec489b20838c80294c0a2bdf47678e20d0ccf67f08dcca932f64b4eb86bf`  
		Last Modified: Mon, 26 Oct 2026 23:13:51 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca070ce3300b17b46fd4724bc1e2fe2455bb52ed229986c5221fc01d9d814f90`  
		Last Modified: Tue, 27 Oct 2026 00:40:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b832f1be4e6c1cdb5462f5fdd39786def1dab36f8cf032563b4a088278a8c0ac`  
		Last Modified: Tue, 27 Oct 2026 00:40:36 GMT  
		Size: 14.1 MB (14144229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d8b21faac666c102a3f621804ac07b8f05d6e64b077c150cd2e0c17713cdd2`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 6.8 MB (6832544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9f9c08404160162c7fb7e0fb5e97987d8b6845ec7c53324dafaaa05b0d42c8`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 3.6 KB (3622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed60ac565fa282cf63db0ec0e4d0191da56b9c8a070ac64b53bc2ca225459fb`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 28.1 KB (28051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e161c80fe87ea3a8d1ebd12186ea0e2e3fc40fc7ae7c14541bf0cecac0a3357`  
		Last Modified: Tue, 27 Oct 2026 01:45:19 GMT  
		Size: 166.5 MB (166479458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc2b618b993fbfd362819d633c2eedf2e66bad79e3167dcf873ccd95c147b00`  
		Last Modified: Tue, 27 Oct 2026 01:45:17 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286e448f8061bd7659b7cfa6d3843a21ccb3647cbe5eb56463c152991f2ecfe9`  
		Last Modified: Tue, 27 Oct 2026 01:45:17 GMT  
		Size: 2.8 KB (2785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:latest` - unknown; unknown

```console
$ docker pull convertigo@sha256:00cb0513f529451900cc3734abaac16ab27b1d164755bc786d7fdad3e66698e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3768130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116b11c96e4ef2fbad474511625ca826acf413550818315dbe0456ed77356510`

```dockerfile
```

-	Layers:
	-	`sha256:89ec42460baa752dea5e62cd0d51d1ff7ba2a953495fe3d8b1183ea401a442f6`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 3.7 MB (3722800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdc10fdd065ef48f06bc794e87796c2fb0c06e7896dca789e881a1fdb9de0eb3`  
		Last Modified: Tue, 27 Oct 2026 01:45:16 GMT  
		Size: 45.3 KB (45330 bytes)  
		MIME: application/vnd.in-toto+json

### `convertigo:latest` - linux; arm64 variant v8

```console
$ docker pull convertigo@sha256:7c824f10f9cc9ec975d912c83376bdbbfc2e53d585f089987f3433b0e2cad07d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326656390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2a8143476af1f98e3ae1c96a7b27676d0f93b8bb292a78533fe908eeffc11d`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["convertigo"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:55 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:18:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='8dbef2b12ceaecec9b5f00d7f568309b7e3525137777736abfc65900c054ccf9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:18:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:18:18 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 00:39:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 00:39:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:39:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 00:39:52 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 00:39:52 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 00:40:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 	; 		ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local mvnFile="${1:-}"; 		local success=; 		local distUrl=; 		for distUrl in 			"https://dlcdn.apache.org/$distFile" 			"https://archive.apache.org/dist/$distFile" 			${mvnFile:+"https://repo1.maven.org/maven2/org/apache/tomcat/tomcat/$mvnFile"} 		; do 			if curl -fL -o "$f" "$distUrl" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	}; 		ddist 'tomcat.tar.gz' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz"; 	echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum --strict --check -; 	ddist 'tomcat.tar.gz.asc' "tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc" "$TOMCAT_VERSION/tomcat-$TOMCAT_VERSION.tar.gz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	curl -fL -o upstream-KEYS 'https://www.apache.org/dist/tomcat/tomcat-9/KEYS'; 	gpg --batch --import upstream-KEYS; 	printf '' > filtered-KEYS; 	for key in 		'DCFD35E0BF8CA7344752DE8B6FB21E8933C60243' 		'A9C5DF4D22E99998D9875A5110C01C5A2F6059E7' 		'48F8E69F6390C9F25CFEDCD268248959359E722B' 	; do 		gpg --batch --fingerprint "$key"; 		gpg --batch --export --armor "$key" >> filtered-KEYS; 	done; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --import filtered-KEYS; 	gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; 	tar -xf tomcat.tar.gz --strip-components=1; 	rm bin/*.bat; 	rm tomcat.tar.gz*; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mv webapps webapps.dist; 	mkdir webapps; 		nativeBuildDir="$(mktemp -d)"; 	tar -xf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libapr1-dev 		libssl-dev 		make 	; 	( 		export CATALINA_HOME="$PWD"; 		cd "$nativeBuildDir/native"; 		gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		aprConfig="$(command -v apr-1-config)"; 		./configure 			--build="$gnuArch" 			--libdir="$TOMCAT_NATIVE_LIBDIR" 			--prefix="$CATALINA_HOME" 			--with-apr="$aprConfig" 			--with-java-home="$JAVA_HOME" 			--with-ssl 		; 		nproc="$(nproc)"; 		make -j "$nproc"; 		make install; 	); 	rm -rf "$nativeBuildDir"; 	rm bin/tomcat-native.tar.gz; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	find "$TOMCAT_NATIVE_LIBDIR" -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| xargs -rt readlink -e 		| sort -u 		| xargs -rt dpkg-query --search 		| cut -d: -f1 		| sort -u 		| tee "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt" 		| xargs -r apt-mark manual 	; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		find ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; 		chmod -R +rX .; 	chmod 1777 logs temp work; 		catalina.sh version # buildkit
# Tue, 27 Oct 2026 00:40:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 00:40:29 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 00:40:29 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 00:40:29 GMT
CMD ["catalina.sh" "run"]
# Tue, 27 Oct 2026 01:28:39 GMT
ENV SWT_GTK3=0
# Tue, 27 Oct 2026 01:28:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:28:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:28:39 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:28:54 GMT
RUN apt-get update -y   && apt-get install -y --no-install-recommends     ca-certificates     curl     dirmngr     gnupg     sudo     tini     unzip   && apt-get remove -y --purge libfreetype6   && apt-get autoremove -y   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
RUN groupmod -n convertigo ubuntu   && usermod -l convertigo -d /home/convertigo -m ubuntu   && mkdir -p /workspace   && chown -R 1000:1000 /workspace   && chmod -R 777 /workspace   && echo "convertigo ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/convertigo   && chmod 0440 /etc/sudoers.d/convertigo # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
RUN sed -i.bak         -e '/protocol="AJP/d'         -e '/JasperListener/d'         -e 's/port="8080"/port="28080" maxThreads="64000" relaxedQueryChars="{}[]|"/'         -e 's,</Host>,  <Valve className="org.apache.catalina.valves.RemoteIpValve" />\n        <Valve className="org.apache.catalina.valves.ErrorReportValve"  errorCode.404="webapps/convertigo/404.html" errorCode.0="webapps/convertigo/error.html" showReport="false" showServerInfo="false" />\n      </Host>,'         -e 's,</Service>,<!--SSL<Connector port="28443" protocol="org.apache.coyote.http11.Http11AprProtocol" SSLEnabled="true" maxThreads="64000" relaxedQueryChars="{}[]|">\n      <UpgradeProtocol className="org.apache.coyote.http2.Http2Protocol" />\n      <SSLHostConfig>\n        <Certificate certificateKeyFile="/certs/key.pem"\n                     certificateFile="/certs/cert.pem"\n                     certificateChainFile="/certs/chain.pem"\n                     type="RSA" />\n      </SSLHostConfig>\n    </Connector>SSL-->\n  </Service>,'         conf/server.xml     && sed -i.bak         -e 's,<Context>,<Context sessionCookiePath="/">,'         -e 's,</Context>,<Manager pathname="" /><CookieProcessor sameSiteCookies="unset" /></Context>,'         conf/context.xml     && rm -rf webapps/* bin/*.bat conf/server.xml.bak /tmp/*     && mkdir webapps/ROOT     && chown -R convertigo:convertigo conf temp work logs     && chmod -w conf/*     && chmod 777 conf/context.xml conf/server.xml # buildkit
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_VERSION=8.4.6
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_WAR_URL=https://github.com/convertigo/convertigo/releases/download/8.4.6/convertigo-8.4.6.war
# Tue, 27 Oct 2026 01:28:55 GMT
ENV CONVERTIGO_GPG_KEYS=6A7779BB78FE368DF74B708FD4DA8FBEB64BF75F
# Tue, 27 Oct 2026 01:29:04 GMT
RUN export GNUPGHOME="$(mktemp -d)"     && ( gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$CONVERTIGO_GPG_KEYS"     || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$CONVERTIGO_GPG_KEYS" )     && curl -fSL -o /tmp/convertigo.war $CONVERTIGO_WAR_URL     && curl -fSL -o /tmp/convertigo.war.asc $CONVERTIGO_WAR_URL.asc     && gpg --batch --verify /tmp/convertigo.war.asc /tmp/convertigo.war     && mkdir -p webapps/ROOT webapps/convertigo     && mkdir /certs && chmod 777 /certs     && (cd webapps/convertigo         && unzip -q /tmp/convertigo.war         && chmod 777 WEB-INF/web.xml WEB-INF/lib WEB-INF/classes         && chmod -R a+rX WEB-INF/lib WEB-INF/classes         && rm -rf /tmp/*) # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
COPY ./root-index.html webapps/ROOT/index.html # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
COPY ./docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 01:29:04 GMT
WORKDIR /workspace
# Tue, 27 Oct 2026 01:29:04 GMT
VOLUME [/workspace]
# Tue, 27 Oct 2026 01:29:04 GMT
EXPOSE map[28080/tcp:{}]
# Tue, 27 Oct 2026 01:29:04 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 01:29:04 GMT
CMD ["convertigo"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b7ca232e64e062dc8b8f4cbb70bfd4be9c056485498acd05522b5a4e38f7b6`  
		Last Modified: Mon, 26 Oct 2026 23:18:34 GMT  
		Size: 18.6 MB (18633153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1167c20374a35d77e39a04b63ca0093d4fc9a054ba1b1b5615c3d50c5cddc125`  
		Last Modified: Mon, 26 Oct 2026 23:18:36 GMT  
		Size: 91.7 MB (91650565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc07d3385c263762ad0d5125ad9f835ab1f6d256fe95977cf8bd27e00a8684e`  
		Last Modified: Mon, 26 Oct 2026 23:18:34 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8462046cb3a305d2cd57b65504db1252319ebcbf6b392d82ea7ee8bd1df69c7e`  
		Last Modified: Tue, 27 Oct 2026 00:40:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033f7ea4ae240e8e3a83cacab8e70fe578621fb3e9781bb2745886a5833e5436`  
		Last Modified: Tue, 27 Oct 2026 00:40:40 GMT  
		Size: 14.2 MB (14153890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0116a297adc1cc392a798d413cb49f96626506facd0b4e331b8f06a960644c55`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 6.8 MB (6761512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13e7f2f29b5662b189bfeeaa34981e91ced4d66a4e74c8676749eeefbf75260`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 3.6 KB (3621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ca8c4bfffd66f5128d927c96dc15fe68443f352177a4e894dc88ede3f74b3d`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 28.0 KB (28046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd32faed041a3f17d13ce3163e58e8d3c0a7034ca6b4b19d40449ed05515b7be`  
		Last Modified: Tue, 27 Oct 2026 01:29:27 GMT  
		Size: 166.5 MB (166479444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2333d08b4c47c47ca26e59ed159f34f7bf8cd794e2c161bdc7c96de83af60616`  
		Last Modified: Tue, 27 Oct 2026 01:29:25 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11027c0f7a36eb3bafd6bf41fcfec2b5a149648b47700021de66cbd76dbb526`  
		Last Modified: Tue, 27 Oct 2026 01:29:25 GMT  
		Size: 2.8 KB (2789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `convertigo:latest` - unknown; unknown

```console
$ docker pull convertigo@sha256:59ba77e5d23a4974d20b41fdbcf3b43c4b7e0fd6a48d1fb05ee0f1e5b7ccb1b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3899785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1401b87b8ca5b7c7662e7076c7abd638269edc6f28a5fc769dd7fad6d61267`

```dockerfile
```

-	Layers:
	-	`sha256:66ca7a65a4c7d120fcfc8990dec99232dc8ef8974667cf52fc945c85396ae5c0`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 3.9 MB (3854303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea198a570a7a7651bfd84dc100b9bc381c88afdc484b80a1a95d26fbd5f5c3dd`  
		Last Modified: Tue, 27 Oct 2026 01:29:24 GMT  
		Size: 45.5 KB (45482 bytes)  
		MIME: application/vnd.in-toto+json
