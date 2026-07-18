## `jetty:12-jdk21-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:48c0aa2ced3c425810aaf270718ce90c97f33c28a5d42d62d1f812fd9f3785ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:2045110ffa683772295026f627c079492a5791f82d22a2b7b566ddf4713b4a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304250505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79279f92c99344556f9e610146bc3318095c86c163fbad16524d6ca435ff537`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:03 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:13:03 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:03 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:03 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Sat, 18 Jul 2026 01:13:16 GMT
ENV JETTY_VERSION=12.1.11
# Sat, 18 Jul 2026 01:13:16 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 18 Jul 2026 01:13:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 18 Jul 2026 01:13:16 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 18 Jul 2026 01:13:16 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Jul 2026 01:13:16 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Sat, 18 Jul 2026 01:13:16 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Sat, 18 Jul 2026 01:13:16 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Sat, 18 Jul 2026 01:13:16 GMT
WORKDIR /var/lib/jetty
# Sat, 18 Jul 2026 01:13:16 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Sat, 18 Jul 2026 01:13:16 GMT
USER jetty
# Sat, 18 Jul 2026 01:13:16 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 18 Jul 2026 01:13:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 18 Jul 2026 01:13:16 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab6bb9de96f344f45f343bb3d665eef1c0a7efc48d63d27cfe871019c513315`  
		Last Modified: Sat, 18 Jul 2026 00:13:26 GMT  
		Size: 170.4 MB (170443315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9e6bd54aa6a7413b5b87571c498276e9774ac52e8800f6020fff4485ecc007`  
		Last Modified: Sat, 18 Jul 2026 01:13:34 GMT  
		Size: 79.2 MB (79231050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bf9db2907863d7b890a9ff74e888325ae1fd2a35265c8ccda32b0ad1371801`  
		Last Modified: Sat, 18 Jul 2026 01:13:32 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:4d1582d3136f799aab3da856e598805c6dd26023dcf79c8947a33cb8275d51b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7342c2600d90bcd507a9bdb88e5cf7fb6df00bbc67424bce27b0d1250baf154c`

```dockerfile
```

-	Layers:
	-	`sha256:57a1cb763d7880c47418f20e52e6ac2747c4d4e5a5ee56f12596a5e49046ca5a`  
		Last Modified: Sat, 18 Jul 2026 01:13:32 GMT  
		Size: 7.4 MB (7442397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c09162903504bb63e5ef9822041fc0be066c873be94f192a20ed71f37f99897`  
		Last Modified: Sat, 18 Jul 2026 01:13:32 GMT  
		Size: 17.4 KB (17440 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:94c74838828792f38aad73bc658a699b8585d1edf3d2adddc6badebde1cceb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301273303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c6c8018f3bbc3aff43ea6166ea1a82d7121ba0339cfc81fe0a23eda6ec8789`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:15 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:12:15 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:12:15 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:15 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Sat, 18 Jul 2026 01:13:30 GMT
ENV JETTY_VERSION=12.1.11
# Sat, 18 Jul 2026 01:13:30 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 18 Jul 2026 01:13:30 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 18 Jul 2026 01:13:30 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 18 Jul 2026 01:13:30 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Jul 2026 01:13:30 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Sat, 18 Jul 2026 01:13:30 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Sat, 18 Jul 2026 01:13:30 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Sat, 18 Jul 2026 01:13:30 GMT
WORKDIR /var/lib/jetty
# Sat, 18 Jul 2026 01:13:31 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Sat, 18 Jul 2026 01:13:31 GMT
USER jetty
# Sat, 18 Jul 2026 01:13:31 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 18 Jul 2026 01:13:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 18 Jul 2026 01:13:31 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c715a56b6d192c0e3a303d97cd78e2d1dee5376b25e25daaec28221ab030c1fd`  
		Last Modified: Sat, 18 Jul 2026 00:12:38 GMT  
		Size: 168.7 MB (168719279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8a9825a9e19a527f0c86ff884fb3b58c5f330e218908566b2d90edd9c70cb9`  
		Last Modified: Sat, 18 Jul 2026 01:13:51 GMT  
		Size: 79.1 MB (79102916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d8dc54617c54d61529fccc81bc8256d5ed040fe840ec8c960e686fb4698d1f9`  
		Last Modified: Sat, 18 Jul 2026 01:13:49 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:698f1e5f95c2d342fb777085b9648b78795687079a0bdc5ae4982f6f47f91af2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4dee43439f4e44cdeefabd629994d18611d92b67de9e0db7796879a5daf95f`

```dockerfile
```

-	Layers:
	-	`sha256:0ab119c8af2d33684cdc05c74467a3a7697e4dc6b8e83b833c5abf2a5eca5375`  
		Last Modified: Sat, 18 Jul 2026 01:13:49 GMT  
		Size: 7.4 MB (7441331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:032400b575303ef054622e5eb2752d3fee0d7b1f7e1b90e2b11ff2c71a178ee3`  
		Last Modified: Sat, 18 Jul 2026 01:13:48 GMT  
		Size: 17.5 KB (17531 bytes)  
		MIME: application/vnd.in-toto+json
