## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:bfef14a437babbbe010016546d87c36cddb7a3e4b21be19caa80f5ebea96c1cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:cb890fc7871c245ee7859ec343aaa1f2d0650c66fb01f21a97d1a6ecb4b3f782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300469149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babccf1560f3a8aee8ba8d3e2f5d0fd5a149fb4756c639a4104d4d289f9dba10`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:31 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:31 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:31 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:08:31 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:08:31 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 18:22:23 GMT
ENV JETTY_VERSION=12.1.14
# Fri, 23 Oct 2026 18:22:23 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 23 Oct 2026 18:22:23 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 23 Oct 2026 18:22:23 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 23 Oct 2026 18:22:23 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:22:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Fri, 23 Oct 2026 18:22:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 23 Oct 2026 18:22:23 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 23 Oct 2026 18:22:23 GMT
WORKDIR /var/lib/jetty
# Fri, 23 Oct 2026 18:22:23 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 23 Oct 2026 18:22:23 GMT
USER jetty
# Fri, 23 Oct 2026 18:22:23 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 23 Oct 2026 18:22:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:22:23 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c5208209ea9a86a255f1eaa0ce19a9eddf8d9c7f1f8311ee5e16b1af43f12d`  
		Last Modified: Fri, 23 Oct 2026 18:08:51 GMT  
		Size: 157.4 MB (157424961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a422f06af7af1e6d7e4a96b5591a810d54388e35eb8465e379e24e68ab09d1dd`  
		Last Modified: Fri, 23 Oct 2026 18:22:44 GMT  
		Size: 88.4 MB (88393391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218341352f2eb3dbf89d70f6f11e37b943edd7c24bd863191f09cc56988cee1c`  
		Last Modified: Fri, 23 Oct 2026 18:22:41 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:42200bbfce25ef7831a38457d421e746362c6cc6a12a0ee6bb16f7824875ea54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8734349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c71afa32f7ac05f1b38179b5d440cac300acd716c852b9dff5dab5b2a160949`

```dockerfile
```

-	Layers:
	-	`sha256:8193736aa33c2e200e8c0a8d85f16a5e26ddc159d741df33ae2f6f84582f53ba`  
		Last Modified: Fri, 23 Oct 2026 18:22:42 GMT  
		Size: 8.7 MB (8715648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8f69e571fe8cf3af3162721793f580efc2ba54ed197ab30e254c363dba73f80`  
		Last Modified: Fri, 23 Oct 2026 18:22:41 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:7cdc9a12a5d3cec1115a172efb440f030b751f55f2bfd4f1a456cc4ccd19f64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298137070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ee65df2ba2943b039e41c178a5bcbf40a550cd68603cd59970ff41640a23ec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:29 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:29 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:29 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:08:29 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:08:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 18:22:25 GMT
ENV JETTY_VERSION=12.1.14
# Fri, 23 Oct 2026 18:22:25 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 23 Oct 2026 18:22:25 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 23 Oct 2026 18:22:25 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 23 Oct 2026 18:22:25 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:22:25 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Fri, 23 Oct 2026 18:22:25 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 23 Oct 2026 18:22:25 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 23 Oct 2026 18:22:25 GMT
WORKDIR /var/lib/jetty
# Fri, 23 Oct 2026 18:22:25 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 23 Oct 2026 18:22:25 GMT
USER jetty
# Fri, 23 Oct 2026 18:22:25 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 23 Oct 2026 18:22:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:22:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a510a982617e16fea7c5332d3e2f68e230e2192abecc0c0de21e3ae09f4ee0`  
		Last Modified: Fri, 23 Oct 2026 18:08:53 GMT  
		Size: 156.3 MB (156283977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d93b677ff284057a20bdae919e2f599d0059f3ba06c588cf64bc122fe2e74ed`  
		Last Modified: Fri, 23 Oct 2026 18:22:45 GMT  
		Size: 88.3 MB (88321901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4fd81aa75beb35268c4d255ef7b1da28c36612edfa23cd60012e4486ffa8a5`  
		Last Modified: Fri, 23 Oct 2026 18:21:55 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:ef8d876500113bd089a5eb1b698a38e8ce6db890654748f81aea72a2961199bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8733444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b62953c1ab57ce29f7aa1b27b27309dfc810ec2fffbd0dadb348acd0164b48`

```dockerfile
```

-	Layers:
	-	`sha256:89fdf32a19c9822ae2ef633ea9a98764fc9690df89c8962cf2b96ed678cfeccf`  
		Last Modified: Fri, 23 Oct 2026 18:22:43 GMT  
		Size: 8.7 MB (8714615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a1101b709bdf8c133d29f5304c321f91b545c7b6e408bfb982b66a82de0fed`  
		Last Modified: Fri, 23 Oct 2026 18:22:43 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
