## `jetty:12-jdk21-amazoncorretto`

```console
$ docker pull jetty@sha256:d0ea39afdfd4c7704916f44d505ae7c6348294cd782f6a4a55148db409cef161
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:eaa8e431c8e38e9ecdb3b93abed62968842aa9bf2a9806652fd4bf51741ca3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.9 MB (303897362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30e1e9da52da6645f2c581ed733f27d3a4634769bc0aaf20f1818a95b9a3391`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:09 GMT
ARG version=21.0.13.1.2-1
# Tue, 17 Nov 2026 21:34:09 GMT
ARG resource_version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:09 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:09 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:09 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 17 Nov 2026 22:11:10 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 22:11:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 22:11:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 22:11:10 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 22:11:10 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 22:11:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 22:11:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 22:11:10 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 22:11:10 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 22:11:10 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 22:11:10 GMT
USER jetty
# Tue, 17 Nov 2026 22:11:10 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 22:11:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 22:11:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42392f6b36465ee03b791b7e9aa7ffebe8c8325ec1d0ab474c9322589615be23`  
		Last Modified: Tue, 17 Nov 2026 21:34:30 GMT  
		Size: 170.7 MB (170743515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8fb623db3f9507d873a73241910c22f0e9742903a0dc64ffa138a3264768b6`  
		Last Modified: Tue, 17 Nov 2026 22:11:30 GMT  
		Size: 78.6 MB (78582678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1c3887a4a49e5ae19125484526964a4fdd4b949045a7f90d3e98b47c2d0f5f`  
		Last Modified: Tue, 17 Nov 2026 22:11:28 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:956b5589b3e05879ca16338f2b7d5a7fb5439da0a854d1aac337b5ccf7440828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8719853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:162b298ad5c576366c01cc7ee070311cb5c28684feb89d1c0c897a76ccd7a3e9`

```dockerfile
```

-	Layers:
	-	`sha256:091018f78506ee8bf8b85b62d0d3ec084b03f581512ad9e82b2e21a8d90985c3`  
		Last Modified: Tue, 17 Nov 2026 22:11:29 GMT  
		Size: 8.7 MB (8701153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4b7708b5140e161e79a29acc49c90525fd86ffcbe6fa9a0ecfc6bb625dfd643`  
		Last Modified: Tue, 17 Nov 2026 22:11:28 GMT  
		Size: 18.7 KB (18700 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:6ad23e1a9db2480873a25d48ea0c587d8529ffdb7c2aad61ffc6d8167cbefd4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (301004366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17933d3ac72d2c5937870d850708eb7e8cee6672f0beaa97cbd80234847c7c51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:21 GMT
ARG version=21.0.13.1.2-1
# Tue, 17 Nov 2026 21:34:21 GMT
ARG resource_version=21.0.13.1.2
# Tue, 17 Nov 2026 21:34:21 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:21 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:21 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 17 Nov 2026 22:11:14 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 22:11:14 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 22:11:14 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 22:11:14 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 22:11:14 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 22:11:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 22:11:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 22:11:14 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 22:11:14 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 22:11:14 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 22:11:14 GMT
USER jetty
# Tue, 17 Nov 2026 22:11:14 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 22:11:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 22:11:14 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e7582e32966bde8c89a2dd7c4db3790c917358500c491af949fd122b3c09ca`  
		Last Modified: Tue, 17 Nov 2026 21:34:44 GMT  
		Size: 169.0 MB (169034432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c19c140756e17c59e612351afff4b1d284e51e534c014e6613a37854bc483c`  
		Last Modified: Tue, 17 Nov 2026 22:11:35 GMT  
		Size: 78.5 MB (78514983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc9ff7c85775af864ab2c9f0d3095ff443e16892d6d58fe184f94f0fdfcf947`  
		Last Modified: Tue, 17 Nov 2026 22:10:34 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:287635094d3f96bb758392a0c8e36f9f167cd010cab4d12bbf7af4a265b51eb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8718952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17598922e5db664f75e04f8bc65cd8b11a520c18fa84a0e33766a060ad521a51`

```dockerfile
```

-	Layers:
	-	`sha256:969c32409c85e45f05686ff0d5cc4cc999bdf13758b640c1c10f9b248de7f0d8`  
		Last Modified: Tue, 17 Nov 2026 22:11:33 GMT  
		Size: 8.7 MB (8700123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc4b1135d83dce29718f2da777396b6c3ff723374e55dfcb66ed85f2efc22926`  
		Last Modified: Tue, 17 Nov 2026 22:11:33 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
