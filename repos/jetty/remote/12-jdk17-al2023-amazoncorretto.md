## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:f341cda2fda162b80a8382f8ffea369b0347cc86da22e8ff22c9b26d207d0ff8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:fe295a2037861e5ca1bf8f00a6be5aac1390fd7038d693524c31e69ad16f575c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290957035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c0df0d674d79f16b93811e595a6f7866dc4dbcc33ae3a6f7b8853ae6413f78`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:03 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:12:03 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:12:03 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:03 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 24 Jul 2026 00:14:14 GMT
ENV JETTY_VERSION=12.1.11
# Fri, 24 Jul 2026 00:14:14 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 24 Jul 2026 00:14:14 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 24 Jul 2026 00:14:14 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 24 Jul 2026 00:14:14 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 00:14:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Fri, 24 Jul 2026 00:14:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Fri, 24 Jul 2026 00:14:14 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 24 Jul 2026 00:14:14 GMT
WORKDIR /var/lib/jetty
# Fri, 24 Jul 2026 00:14:14 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 24 Jul 2026 00:14:14 GMT
USER jetty
# Fri, 24 Jul 2026 00:14:14 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 24 Jul 2026 00:14:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Jul 2026 00:14:14 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8310112aa144a10b179ca159ef5f35c4ed750b696185bafbe622406ecc17121d`  
		Last Modified: Thu, 23 Jul 2026 23:12:23 GMT  
		Size: 157.1 MB (157143867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e128249aca0f44c9aa32f9373a7c9abe836a50eebd931ac698786eeeed41a0a`  
		Last Modified: Fri, 24 Jul 2026 00:14:31 GMT  
		Size: 79.2 MB (79237028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd6475f72f628cc77c5bd63ae0f063492dae02bc429afb70c3d369491ffbb49`  
		Last Modified: Fri, 24 Jul 2026 00:14:29 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:8bfd942e9f69d8f6444d748d6d38e4290cf0b9eafcbae8ac195476e5c95f89d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7457400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2d51acadce17cdd04a31fbd2f6363cb323713bf171cddee1b50a1b190bd29a`

```dockerfile
```

-	Layers:
	-	`sha256:267d6f8f9cbe677b2fe9d40b3961d8536c6059716d4411e6ed30f3397868163a`  
		Last Modified: Fri, 24 Jul 2026 00:14:29 GMT  
		Size: 7.4 MB (7439961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8649b093e35df09b45cd77d6d9d13d995847171f9cd7a03dbe1585074a6cc71d`  
		Last Modified: Fri, 24 Jul 2026 00:14:28 GMT  
		Size: 17.4 KB (17439 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:1f6c4c5eb329dd775008bdcef5a73db0eecc6ff21d624e211893a289704af40c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288506205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7d0188272bde6c3ffe5a0b94ab3f80e6ba443bb1d6833a0ca2aa2188085bb0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:52 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:13:52 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:52 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:52 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 24 Jul 2026 00:14:12 GMT
ENV JETTY_VERSION=12.1.11
# Fri, 24 Jul 2026 00:14:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 24 Jul 2026 00:14:12 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 24 Jul 2026 00:14:12 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 24 Jul 2026 00:14:12 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 00:14:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Fri, 24 Jul 2026 00:14:12 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Fri, 24 Jul 2026 00:14:12 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 24 Jul 2026 00:14:12 GMT
WORKDIR /var/lib/jetty
# Fri, 24 Jul 2026 00:14:12 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 24 Jul 2026 00:14:12 GMT
USER jetty
# Fri, 24 Jul 2026 00:14:12 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 24 Jul 2026 00:14:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Jul 2026 00:14:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39dedf514dc05c4bc71714b6cc360e3e86e09add780da2029f72cf2312227803`  
		Last Modified: Thu, 23 Jul 2026 23:14:15 GMT  
		Size: 155.9 MB (155947461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93d1a403586a9111265652c8a886fc07c1bc3485f9da8b822b2630791a8237b`  
		Last Modified: Fri, 24 Jul 2026 00:14:30 GMT  
		Size: 79.1 MB (79107636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f601b319547bc9d9ade1239a8099da172c56c7f02ce98429fa2cc2abd6368c`  
		Last Modified: Fri, 24 Jul 2026 00:14:29 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:6c4039285cd38a9a435efadd28540e31b98c2687525c9e47661a9949715da959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da22616ffb80f4143aeb777e2ce1c03ab40cdf8de15bd656af13dbc52ca03a9`

```dockerfile
```

-	Layers:
	-	`sha256:0747c38af983a76ba2baab6a5b9f3e2ce869c8123730cbf04b166494570e5f99`  
		Last Modified: Fri, 24 Jul 2026 00:14:29 GMT  
		Size: 7.4 MB (7438892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2847b4611256dbb8255befcb3a2600d62ea00d8c98340e67ba7fe4c800388cd`  
		Last Modified: Fri, 24 Jul 2026 00:14:28 GMT  
		Size: 17.5 KB (17532 bytes)  
		MIME: application/vnd.in-toto+json
