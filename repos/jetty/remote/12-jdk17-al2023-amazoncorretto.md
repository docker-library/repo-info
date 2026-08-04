## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:111cc72a58edf13ec3da15e18d45c04eb8a5d9368aba42f7459e3a5c33e727b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:d02a7b008e37cde671c8ed400d00915426b18ab1802d732eb9b9b4a44be483ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290955029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297ee42e8a0c1b32ee77d3deb264bbc9467b77a0566525439500b48e8eef79bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:45 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:57:45 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:57:45 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 04 Aug 2026 01:40:41 GMT
ENV JETTY_VERSION=12.1.11
# Tue, 04 Aug 2026 01:40:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 04 Aug 2026 01:40:41 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 04 Aug 2026 01:40:41 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 04 Aug 2026 01:40:41 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:40:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Tue, 04 Aug 2026 01:40:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Tue, 04 Aug 2026 01:40:41 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 04 Aug 2026 01:40:41 GMT
WORKDIR /var/lib/jetty
# Tue, 04 Aug 2026 01:40:41 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 04 Aug 2026 01:40:41 GMT
USER jetty
# Tue, 04 Aug 2026 01:40:41 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 01:40:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:41 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39ea4f859b83f5205b2979eea64b65450ec1cc4ee0c2a23b590101ba9207d76`  
		Last Modified: Tue, 04 Aug 2026 00:58:06 GMT  
		Size: 157.1 MB (157140896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45098226a827f0018e10eb493c8c823ab0d3fd21e3bbe7586e6754a309045a59`  
		Last Modified: Tue, 04 Aug 2026 01:40:59 GMT  
		Size: 79.2 MB (79239576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9512ad9503d84abcbffe6c24d6593e10a2bcf25d5bda0871797e3af1b645fd24`  
		Last Modified: Tue, 04 Aug 2026 01:40:57 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:f925099fadd1c6a54dc0d5ee978f94d6a3666a922dbcdd90b27ab81ad8496e32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7457476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca2ec6f211d2346fc8383f3295fbe80d21e9b288438c0b49e73997d602d5fe5`

```dockerfile
```

-	Layers:
	-	`sha256:3d2d40550dabf227dc93ea52aa35c91f6a6eb2981fac90ca53f66523b0f437ce`  
		Last Modified: Tue, 04 Aug 2026 01:40:58 GMT  
		Size: 7.4 MB (7440037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cce2f227488526bf7cda9e63f99c95f22717aefe589c0f72da4aa69f095a8e4`  
		Last Modified: Tue, 04 Aug 2026 01:40:57 GMT  
		Size: 17.4 KB (17439 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:29816bfb0eebf77de468d0458ac3144466a8f9cbba1aa0ed30ae756890ab43e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288508531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6e4447ba37d04befbb8d3946eb1e86f8871aaaf54bff641f8239d19b631ce2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:50 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:56:50 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:56:50 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:56:50 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 04 Aug 2026 01:40:45 GMT
ENV JETTY_VERSION=12.1.11
# Tue, 04 Aug 2026 01:40:45 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 04 Aug 2026 01:40:45 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 04 Aug 2026 01:40:45 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 04 Aug 2026 01:40:45 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:40:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Tue, 04 Aug 2026 01:40:45 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Tue, 04 Aug 2026 01:40:45 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 04 Aug 2026 01:40:45 GMT
WORKDIR /var/lib/jetty
# Tue, 04 Aug 2026 01:40:45 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 04 Aug 2026 01:40:45 GMT
USER jetty
# Tue, 04 Aug 2026 01:40:45 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 01:40:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Aug 2026 01:40:45 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cf99ec5f67b1b676ae450b45c93e5eb1a3ed69de52b80d2393fb7708fe1120`  
		Last Modified: Tue, 04 Aug 2026 00:57:12 GMT  
		Size: 155.9 MB (155949762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6f20a87f67282865de9c0e6a40f1e18b69e664740b450357e7b9609010958b`  
		Last Modified: Tue, 04 Aug 2026 01:41:04 GMT  
		Size: 79.1 MB (79108235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9512ad9503d84abcbffe6c24d6593e10a2bcf25d5bda0871797e3af1b645fd24`  
		Last Modified: Tue, 04 Aug 2026 01:40:57 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:12e531b89b01d56af60b0fd17659639818c300f46cab9a5146defc90e744ea44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bb49032f6cee18b89e1036efc59c510c2d3bcd0f9c516806b05a8cedaaee5a`

```dockerfile
```

-	Layers:
	-	`sha256:ee845f675d3743c213ab520481d8e5a079821932e63f1b8e8eb5ec1faf424a07`  
		Last Modified: Tue, 04 Aug 2026 01:41:02 GMT  
		Size: 7.4 MB (7438968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a72242f0921cca7f723ac6787541693582b0f052e015ec7d0f4f8d308312553b`  
		Last Modified: Tue, 04 Aug 2026 01:41:01 GMT  
		Size: 17.5 KB (17532 bytes)  
		MIME: application/vnd.in-toto+json
