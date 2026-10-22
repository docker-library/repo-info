## `jetty:12-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:8b3275b6d4ab9b42acf8b4237bba459ededd4eb3478aeba3306f877c3f7852b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:07c70e921e4aa2c9efe2f26323b52e66944038cbafe876b159d6df6235e95602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.5 MB (332531934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:784c7dac1f207fa9883183c97f136aa6d1b3e6ca677e5c1409668a8ae628f28e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:05 GMT
ARG version=25.0.4.11-1
# Wed, 21 Oct 2026 23:29:05 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:05 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:05 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 22 Oct 2026 00:18:13 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 22 Oct 2026 00:18:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 22 Oct 2026 00:18:13 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Oct 2026 00:18:13 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Oct 2026 00:18:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 00:18:13 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 22 Oct 2026 00:18:13 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 22 Oct 2026 00:18:13 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 22 Oct 2026 00:18:13 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Oct 2026 00:18:13 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 22 Oct 2026 00:18:13 GMT
USER jetty
# Thu, 22 Oct 2026 00:18:13 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 22 Oct 2026 00:18:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 00:18:13 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4e6708bb3c2eb8b1ac23333e7d4d26ff5097ca6cf894aaaab1211de7796a98`  
		Last Modified: Wed, 21 Oct 2026 23:29:29 GMT  
		Size: 189.5 MB (189508297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12634f4b126d42af050cd2a93cab3b7802a0415a59a44333cb5362025108fd93`  
		Last Modified: Thu, 22 Oct 2026 00:18:34 GMT  
		Size: 88.4 MB (88390991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1831ed22e228041c31c5ca50494625b75918a8c5b352ca09c4163b49d9d9a038`  
		Last Modified: Thu, 22 Oct 2026 00:18:20 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:90623786192b6631a23821b96e9c516dd7e5e1bb934edaf7a90b79eeae8c6938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8752286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfae63dffbedd81a7438b29fe0719b0f253fc773933517d8f319f29598b078c`

```dockerfile
```

-	Layers:
	-	`sha256:aa316d8984500571ac5b0191107314296ad35283cfb17a8e9b76813686238030`  
		Last Modified: Thu, 22 Oct 2026 00:18:32 GMT  
		Size: 8.7 MB (8731607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4304bbe0cc7cf4038ae81d27d3f755429e595228473a986b5c4298eb6466fcd7`  
		Last Modified: Thu, 22 Oct 2026 00:18:31 GMT  
		Size: 20.7 KB (20679 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:7c343402d49efb40cc03edb8059a79abbf30682f549b307e65842c3f37a9cfff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329236987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2e6d18751d86c4a258c36a06c0ffee021bdd6d4671c3b6c5be7e1a741abeba1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:46 GMT
ARG version=25.0.4.11-1
# Thu, 22 Oct 2026 00:20:46 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:20:46 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:20:46 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 22 Oct 2026 01:20:18 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 22 Oct 2026 01:20:18 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 22 Oct 2026 01:20:18 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Oct 2026 01:20:18 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Oct 2026 01:20:18 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 01:20:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 22 Oct 2026 01:20:18 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 22 Oct 2026 01:20:18 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 22 Oct 2026 01:20:18 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Oct 2026 01:20:18 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 22 Oct 2026 01:20:18 GMT
USER jetty
# Thu, 22 Oct 2026 01:20:18 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 22 Oct 2026 01:20:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 01:20:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec6e3b261ba217527ac9253acccf80a9908628bb2f3f5544d4577bd2bd04011`  
		Last Modified: Thu, 22 Oct 2026 00:21:11 GMT  
		Size: 187.4 MB (187405145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f016caecc704d14bd2feca7e6d34f683707dcbe490c04c421a9c40340855fc88`  
		Last Modified: Thu, 22 Oct 2026 01:20:40 GMT  
		Size: 88.3 MB (88325568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6251d2c3433ae2a750fb4bc6dd1722902b05441fcfc3948991bd75a73e06804`  
		Last Modified: Thu, 22 Oct 2026 01:20:38 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:518305afdb3523f620589485b34bd531b596510a42287eb13f644ac55b77125d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8751539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29369e7af1b50cfa15662f784a4be025af9a4d8f285d43317afe810541e661bc`

```dockerfile
```

-	Layers:
	-	`sha256:d52b3949ae6c01ccb079a0a9f6b1aaf90f4d64d674296e9ac19d3e71caebe78a`  
		Last Modified: Thu, 22 Oct 2026 01:20:38 GMT  
		Size: 8.7 MB (8730660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbb1991afbc7e4a0eef81c06f10a8a8c0f8d97d3136b04d4b04d28354aa2c471`  
		Last Modified: Thu, 22 Oct 2026 01:20:37 GMT  
		Size: 20.9 KB (20879 bytes)  
		MIME: application/vnd.in-toto+json
