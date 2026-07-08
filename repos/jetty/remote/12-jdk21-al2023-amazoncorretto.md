## `jetty:12-jdk21-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:00ea810a5f4d9641f49a18cf50f5b7b7b7c6c2214478c20866bb1e1f69678790
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:e20ae77a504f2879cb39c7bf9de0fe716003735b941a319a66f28b29439fe052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304257545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d384ca4c5bddd8ef6cb16c83c4cac9382642fe54e1de97e71f9bcf23de05fcb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:34 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:34 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:05:12 GMT
ARG version=21.0.11.10-1
# Mon, 22 Jun 2026 18:05:12 GMT
ARG package_version=1
# Mon, 22 Jun 2026 18:05:12 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 22 Jun 2026 18:05:12 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 08 Jul 2026 16:52:53 GMT
ENV JETTY_VERSION=12.1.11
# Wed, 08 Jul 2026 16:52:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Jul 2026 16:52:53 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 Jul 2026 16:52:53 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 Jul 2026 16:52:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 16:52:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Wed, 08 Jul 2026 16:52:53 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Wed, 08 Jul 2026 16:52:53 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
WORKDIR /var/lib/jetty
# Wed, 08 Jul 2026 16:52:53 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
USER jetty
# Wed, 08 Jul 2026 16:52:53 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 08 Jul 2026 16:52:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:52:53 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:43a4ccfcda545d0357b8595db01c68db022db4283c68d08e06427e6c91ac7063`  
		Last Modified: Sat, 13 Jun 2026 02:07:52 GMT  
		Size: 54.6 MB (54574183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebbda8bbed2402313490b832b371f9a31cefa72cc0c1f79f7de0207d319faaf9`  
		Last Modified: Mon, 22 Jun 2026 18:05:38 GMT  
		Size: 170.4 MB (170446421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24b9be6ec2f69710794d7f93f84acca1e308d1a52fcc056da7c007d8e372c6b`  
		Last Modified: Wed, 08 Jul 2026 16:53:11 GMT  
		Size: 79.2 MB (79235067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6abb6b067e9ff12bba4ffc60fa76bb6084b09ee423cc28f4f7078cd2ad94954f`  
		Last Modified: Wed, 08 Jul 2026 16:53:09 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:3d8382d85609c5a23207d2062bd5eacbce3e695f113d3616a859b8fff9b63e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77faafad2e216868da6bc661c586f6c9cab1ee987551e5e55e8ed60f0174b38b`

```dockerfile
```

-	Layers:
	-	`sha256:7102bae239260a9c89ad6d30a3848a994bf2bce82c4da181ceaba275c76277e0`  
		Last Modified: Wed, 08 Jul 2026 16:53:09 GMT  
		Size: 7.4 MB (7441611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5c23054d01930350e71f74af44edb397a2ef531137deae0c785f69db02fe994`  
		Last Modified: Wed, 08 Jul 2026 16:53:08 GMT  
		Size: 17.4 KB (17440 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:4b5e90a7e3babede9d2143206aa485f0c7842ecb5d493bc5f27029e17a4942ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301294109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd909c7550de6a193de74782b7223e31b41f2839d7a3eb71922f1cc18691ec4e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:55 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:15:10 GMT
ARG version=21.0.11.10-1
# Mon, 22 Jun 2026 18:15:10 GMT
ARG package_version=1
# Mon, 22 Jun 2026 18:15:10 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 22 Jun 2026 18:15:10 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:15:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 08 Jul 2026 16:53:09 GMT
ENV JETTY_VERSION=12.1.11
# Wed, 08 Jul 2026 16:53:09 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Jul 2026 16:53:09 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 Jul 2026 16:53:09 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 Jul 2026 16:53:09 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 16:53:09 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Wed, 08 Jul 2026 16:53:09 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Wed, 08 Jul 2026 16:53:09 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 08 Jul 2026 16:53:09 GMT
WORKDIR /var/lib/jetty
# Wed, 08 Jul 2026 16:53:09 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 08 Jul 2026 16:53:09 GMT
USER jetty
# Wed, 08 Jul 2026 16:53:09 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 08 Jul 2026 16:53:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Jul 2026 16:53:09 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:9d73cc96eee98f0257861d2c8c5e7eac1d4fd5e92dd1ed16608b0040908eb5e0`  
		Last Modified: Fri, 12 Jun 2026 22:22:20 GMT  
		Size: 53.5 MB (53450686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10beb5c68f4d3c7d1c45314bbff9c0bb6baf58079563b749b2f64ac9f3c511d3`  
		Last Modified: Mon, 22 Jun 2026 18:15:34 GMT  
		Size: 168.7 MB (168721711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0052de8c58d7a4e7d5079852e29462d1ef96e2170f4d86a67746a0ed20358006`  
		Last Modified: Wed, 08 Jul 2026 16:53:29 GMT  
		Size: 79.1 MB (79119836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba21c3122a5d0af3efeaa16251716c136542e854f24b45eb28197ff63e5b3f4`  
		Last Modified: Wed, 08 Jul 2026 16:52:53 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:5c7518340191e9e466c0ed6603ecdcc9e019b3dbb93a4f5f6560554bdea21ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0f0426114a9e58f42edbf16c40be0a60900beb820e468d6bad91743175099c`

```dockerfile
```

-	Layers:
	-	`sha256:d0e1cabb50d12f0f007ba39174f0a7a2b5c0045f58e726be9661995914b867c5`  
		Last Modified: Wed, 08 Jul 2026 16:53:28 GMT  
		Size: 7.4 MB (7440545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:972efa32ec2b49154b5a1bd18d584033486b7998bc68e771be8eebd40c37ea3c`  
		Last Modified: Wed, 08 Jul 2026 16:53:27 GMT  
		Size: 17.5 KB (17532 bytes)  
		MIME: application/vnd.in-toto+json
