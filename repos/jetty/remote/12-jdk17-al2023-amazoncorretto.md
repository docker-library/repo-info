## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:963172fc5a1b99f74770ce3c4952224647ae3753bc6d6ba4949a041b2e4331f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:b54589bfd1e228786b32f74fb3f32e907ce10934a011729dc77f8d55f27a6cc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.2 MB (300200896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e796f1065c3189c161c0861d4777b241604ef7ae185c0467668c1138ddcb0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:11 GMT
ARG version=17.0.20.13-1
# Wed, 21 Oct 2026 23:28:11 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:11 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 22 Oct 2026 00:18:05 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 22 Oct 2026 00:18:05 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 22 Oct 2026 00:18:05 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Oct 2026 00:18:05 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Oct 2026 00:18:05 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 00:18:05 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 22 Oct 2026 00:18:05 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 22 Oct 2026 00:18:05 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 22 Oct 2026 00:18:05 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Oct 2026 00:18:05 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 22 Oct 2026 00:18:05 GMT
USER jetty
# Thu, 22 Oct 2026 00:18:05 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 22 Oct 2026 00:18:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 00:18:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1ae9487769b73c0896ee595f50ecbab13247197fb2c1c330f0ec1dfda0b5f6`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 157.2 MB (157176465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c7ecb0150f3ceb87af054c83667f4da8b482df0ca9db461a373594f5e04bb1`  
		Last Modified: Thu, 22 Oct 2026 00:18:24 GMT  
		Size: 88.4 MB (88391785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1831ed22e228041c31c5ca50494625b75918a8c5b352ca09c4163b49d9d9a038`  
		Last Modified: Thu, 22 Oct 2026 00:18:20 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:84873b6bf48b0e15c302af060f282b0c22e5e612356ee5495c4212fab3e73b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8734342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7606f9df907dc99dd2f43e5f203136eba902740fe3c5e82901b58a915a79a5ee`

```dockerfile
```

-	Layers:
	-	`sha256:0cb0b859b15e5484c4c8ab5cfacaa3bbf686079e2c7261e4f7473530037496a3`  
		Last Modified: Thu, 22 Oct 2026 00:18:22 GMT  
		Size: 8.7 MB (8715642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c42ed817fbd0827ab77a760d8aa0bf1dc293eee45c656323351ff10259a85de7`  
		Last Modified: Thu, 22 Oct 2026 00:18:22 GMT  
		Size: 18.7 KB (18700 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:5b62d7792a16afcb43dbb4974c290c22ba6797b542631744de395a7fd07f3488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.8 MB (297804259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e431bfa55969a28feb2d5bceb55a29fe4fcd7533e1aecce1eb2c2ca8bd0fb2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:19:54 GMT
ARG version=17.0.20.13-1
# Thu, 22 Oct 2026 00:19:54 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:19:54 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:19:54 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:19:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 22 Oct 2026 01:20:22 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 22 Oct 2026 01:20:22 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 22 Oct 2026 01:20:22 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Oct 2026 01:20:22 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Oct 2026 01:20:22 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 01:20:22 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 22 Oct 2026 01:20:22 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 22 Oct 2026 01:20:22 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 22 Oct 2026 01:20:22 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Oct 2026 01:20:22 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 22 Oct 2026 01:20:22 GMT
USER jetty
# Thu, 22 Oct 2026 01:20:22 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 22 Oct 2026 01:20:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Oct 2026 01:20:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d66f791abf8fcffa936bc55eb8a8eb9a6402674baa6dcbc21d34d46fe3d3028`  
		Last Modified: Thu, 22 Oct 2026 00:20:17 GMT  
		Size: 156.0 MB (155978611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d3c1dbd08c0c0b5f6ee6fb08fa878474c7b18e57a0dc10376605ef6dc4adb48`  
		Last Modified: Thu, 22 Oct 2026 01:20:43 GMT  
		Size: 88.3 MB (88319373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26640de7aba21eda50a32ba86f9178c21c1e21bf221abf6495d2bc0285e39840`  
		Last Modified: Thu, 22 Oct 2026 01:20:41 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:c4413af10802d5511f2d1254c843996a610621c5c30fc760486c008c5c178da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8733438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afb2143ce7c7b96d0787f1bffffe773829c7c099db0c28a8230b9af3ea115f2d`

```dockerfile
```

-	Layers:
	-	`sha256:444054b3f0aecff92e4a188dcad9989e23220d465069a6c600a9bc72db4653a1`  
		Last Modified: Thu, 22 Oct 2026 01:20:41 GMT  
		Size: 8.7 MB (8714609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b16fa6e15fbedbfca70ae950dd54974e4d109f75207a689b0b0561028566a7c`  
		Last Modified: Thu, 22 Oct 2026 01:20:41 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
