## `jetty:12-jdk25-amazoncorretto`

```console
$ docker pull jetty@sha256:dce9762db76c820781417e3b9126ccbdb34151195fcc0a198204e9c9ec6c028a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk25-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:bdcefd5e7c1732f4c5469d1b26932d1c1cfbeace696c9df216129c6464030738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.3 MB (323290119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451b44ed999d8413d67d8cc57da1b8f34d0620fa3c6de93c04a711c4994f2206`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:08 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:13:08 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:08 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:08 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 24 Jul 2026 00:13:51 GMT
ENV JETTY_VERSION=12.1.11
# Fri, 24 Jul 2026 00:13:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 24 Jul 2026 00:13:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 24 Jul 2026 00:13:51 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 24 Jul 2026 00:13:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 00:13:51 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Fri, 24 Jul 2026 00:13:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Fri, 24 Jul 2026 00:13:51 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 24 Jul 2026 00:13:51 GMT
WORKDIR /var/lib/jetty
# Fri, 24 Jul 2026 00:13:51 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 24 Jul 2026 00:13:51 GMT
USER jetty
# Fri, 24 Jul 2026 00:13:51 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 24 Jul 2026 00:13:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Jul 2026 00:13:51 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964a6a5b83b71b12d012405abeb3132afef40960448d97a6a9166ab6b1482624`  
		Last Modified: Thu, 23 Jul 2026 23:13:33 GMT  
		Size: 189.5 MB (189475803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30084dccf9e1359af72d2cf9d9022660489f8642fa1e2496a592aec04b856068`  
		Last Modified: Fri, 24 Jul 2026 00:14:11 GMT  
		Size: 79.2 MB (79238176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f2c28d72d837f5ca51381a83bac359015c69268760309c5e3ea8d322f5b27df`  
		Last Modified: Fri, 24 Jul 2026 00:14:08 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:40b615683cdabd84fa62a32c651ad2125e9c2c331163338740d38292b33762c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7473199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e76837147c0780ca5de12c706c03be9fe193fc137476bffd62c7e6b1eac4198d`

```dockerfile
```

-	Layers:
	-	`sha256:5361ac7913abd943c1da233bc9037cbf1add9220d273d92d8ce7854ba3d5d08e`  
		Last Modified: Fri, 24 Jul 2026 00:14:09 GMT  
		Size: 7.5 MB (7454874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b63e721321f9931eff088998dd7cb8b1cfb2a9fa471672cf12cc6c55eb4e17e0`  
		Last Modified: Fri, 24 Jul 2026 00:14:08 GMT  
		Size: 18.3 KB (18325 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk25-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:dcbbed9885cdb6176f2dc18e00e29b597e4ff3c5f25bd54b81c571106019ffa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319938235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b98c722ee4a88248983c9561718813c8a9c7bee31ac62dfb2402b8ca16fd36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:15:03 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:15:03 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:15:03 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:15:03 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 24 Jul 2026 00:13:44 GMT
ENV JETTY_VERSION=12.1.11
# Fri, 24 Jul 2026 00:13:44 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 24 Jul 2026 00:13:44 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 24 Jul 2026 00:13:44 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 24 Jul 2026 00:13:44 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 00:13:44 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Fri, 24 Jul 2026 00:13:44 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Fri, 24 Jul 2026 00:13:44 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 24 Jul 2026 00:13:44 GMT
WORKDIR /var/lib/jetty
# Fri, 24 Jul 2026 00:13:44 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 24 Jul 2026 00:13:44 GMT
USER jetty
# Fri, 24 Jul 2026 00:13:44 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 24 Jul 2026 00:13:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Jul 2026 00:13:44 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921ca3cd311a0af902befa8a1430dd08383471940b496e6f90ba8db99517eb23`  
		Last Modified: Thu, 23 Jul 2026 23:15:29 GMT  
		Size: 187.4 MB (187376869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0299cf9a1812dfc57e20bd9aea17cef09d206ed7aca13684d260107591696e`  
		Last Modified: Fri, 24 Jul 2026 00:14:05 GMT  
		Size: 79.1 MB (79110258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a74c80343c958d96ba4c7cfcfc37e7037cc00cc99f3569f8132e2c32f1eff3`  
		Last Modified: Fri, 24 Jul 2026 00:13:23 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:b2e37ff4a62a1c1c6be5996d4f74d84b19127d5cd6e8e1d4a2bf41b2eed825bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7472309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01078182f6816cb206a7c1b3833a094feab7574ee4665a512871e474c1222e7`

```dockerfile
```

-	Layers:
	-	`sha256:ef1c0fe56e687af3ef94c72b27a14a303865bfa64781bebe3d0ee1c327bf19e3`  
		Last Modified: Fri, 24 Jul 2026 00:14:03 GMT  
		Size: 7.5 MB (7453855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bad8d83e6c4b2aaa4d64c9c5c96c598ab98b3edc3ea9b79faf3d9402879c0eb`  
		Last Modified: Fri, 24 Jul 2026 00:14:02 GMT  
		Size: 18.5 KB (18454 bytes)  
		MIME: application/vnd.in-toto+json
