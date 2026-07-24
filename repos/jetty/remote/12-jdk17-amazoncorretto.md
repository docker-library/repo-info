## `jetty:12-jdk17-amazoncorretto`

```console
$ docker pull jetty@sha256:2b8b9b2ab754f5b17acf7a84b9aa3f6dd1fbea01ca427a3dc292b3eeb6fc0de4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:2edf0834dae06deb196ed24c0591a7df490f885af9f9fed190561626084322ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290957188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fb96dbba7dce27322aa57619b4adc82da7eb8cfd87478367ccd28eaf53d0e7`
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
# Fri, 24 Jul 2026 00:14:23 GMT
ENV JETTY_VERSION=12.1.11
# Fri, 24 Jul 2026 00:14:23 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 24 Jul 2026 00:14:23 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 24 Jul 2026 00:14:23 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 24 Jul 2026 00:14:23 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 00:14:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Fri, 24 Jul 2026 00:14:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Fri, 24 Jul 2026 00:14:23 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 24 Jul 2026 00:14:23 GMT
WORKDIR /var/lib/jetty
# Fri, 24 Jul 2026 00:14:23 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 24 Jul 2026 00:14:23 GMT
USER jetty
# Fri, 24 Jul 2026 00:14:23 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 24 Jul 2026 00:14:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Jul 2026 00:14:23 GMT
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
	-	`sha256:fed92bd0dacbc8254af68122811f2998992380601ac4199d70c00c4612912138`  
		Last Modified: Fri, 24 Jul 2026 00:14:42 GMT  
		Size: 79.2 MB (79237181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b13166ef94fc348df331d19fb35368cf3399c9b748aa12cdef62ff5c050029a2`  
		Last Modified: Fri, 24 Jul 2026 00:14:40 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:239e4f79f479756b998612f76c03a2ae5f457a1218bc0d31a219135c67a4003e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7457277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ca98eecd6cf867b27270a5dd30be85bb3cb02bdfb4a39ad13ceff5afb78146`

```dockerfile
```

-	Layers:
	-	`sha256:1038c23de224334743f9158f0ac05029f0f0c5bbf47c2ecde9dce82baf0467ba`  
		Last Modified: Fri, 24 Jul 2026 00:14:39 GMT  
		Size: 7.4 MB (7439919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35b1255e5c1e39a3ff888987af7824ed102e7e5b69906cd292b0e71481100d80`  
		Last Modified: Fri, 24 Jul 2026 00:14:39 GMT  
		Size: 17.4 KB (17358 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:b66ce29714b6358b149adaf1414d0d292f863b9da23bc07aec139f56e6c71f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288506231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0af46e3f31aaee85b2e8e059b8b75f172df3c00c351b0be24e0ae0a967645d09`
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
# Fri, 24 Jul 2026 00:14:19 GMT
ENV JETTY_VERSION=12.1.11
# Fri, 24 Jul 2026 00:14:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 24 Jul 2026 00:14:19 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 24 Jul 2026 00:14:19 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 24 Jul 2026 00:14:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 00:14:19 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Fri, 24 Jul 2026 00:14:19 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Fri, 24 Jul 2026 00:14:19 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 24 Jul 2026 00:14:19 GMT
WORKDIR /var/lib/jetty
# Fri, 24 Jul 2026 00:14:19 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 24 Jul 2026 00:14:19 GMT
USER jetty
# Fri, 24 Jul 2026 00:14:19 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 24 Jul 2026 00:14:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 24 Jul 2026 00:14:19 GMT
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
	-	`sha256:f6abb5424f59b4d9e1cfe2bb381ea81bc439ed094f618fab76c463ceabd0a7b5`  
		Last Modified: Fri, 24 Jul 2026 00:14:39 GMT  
		Size: 79.1 MB (79107661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178a5af1a5b29bbd6268f2a751401c938cc4be600394805a76b82b19b8303cca`  
		Last Modified: Fri, 24 Jul 2026 00:14:38 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:44c62a8d8fa1e6bcae678b0942e95ce79e4ed1228e109a5245d1f21940ff0bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:684d579d9183a8489998244fb5cc500bc394a0cc3b639b725202a291fcee7fed`

```dockerfile
```

-	Layers:
	-	`sha256:9447efcd98de81064b233925ff0d86c2fe8ce7f7f9a21220f50f5d04c34702d9`  
		Last Modified: Fri, 24 Jul 2026 00:14:37 GMT  
		Size: 7.4 MB (7438850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d270f3dcce7f0ca3fb2c156a1b5c5091de2e1bfa07ade0d17e50d64681901f8`  
		Last Modified: Fri, 24 Jul 2026 00:14:38 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json
