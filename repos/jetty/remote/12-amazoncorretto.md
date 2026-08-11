## `jetty:12-amazoncorretto`

```console
$ docker pull jetty@sha256:00fd4377b9012f89f4e8f4ec7ddf2cb15ef0dd581d587dcd6be69c0eabea2985
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:5972455210b647bf5d047eeee4c91efb71d93cd32ecfc438536432a83854e2f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.4 MB (323389414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4802fa56f4c83ebd862296696c75f8f95093995c2a38afb34483ba709458ab3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:51 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:51 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:51 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:51 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 10 Aug 2026 23:37:58 GMT
ENV JETTY_VERSION=12.1.12
# Mon, 10 Aug 2026 23:37:58 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 10 Aug 2026 23:37:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 10 Aug 2026 23:37:58 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 10 Aug 2026 23:37:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:37:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Mon, 10 Aug 2026 23:37:58 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 10 Aug 2026 23:37:58 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 10 Aug 2026 23:37:58 GMT
WORKDIR /var/lib/jetty
# Mon, 10 Aug 2026 23:37:58 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 10 Aug 2026 23:37:58 GMT
USER jetty
# Mon, 10 Aug 2026 23:37:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 10 Aug 2026 23:37:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:37:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2408eb84527cb80413943a5c5046a2c3ecf630ffa06142e5bc05f3767756c5da`  
		Last Modified: Tue, 04 Aug 2026 00:59:15 GMT  
		Size: 189.5 MB (189475802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c308e1c8bfb0f3facf3fea1cf3375aa34ad0185948f1e319cc60e7cf79530f55`  
		Last Modified: Mon, 10 Aug 2026 23:38:17 GMT  
		Size: 79.3 MB (79339055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a3aa22d683c16d40486b210caca191a498bfd563181395ec99a58952b5d6e4`  
		Last Modified: Mon, 10 Aug 2026 23:38:15 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:a0806273ed7903b73dc88a5204a85f647bde7a95d89420ab308d100fbc1af876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7477725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8a287c8f4d3c50aa2e37d08a80e8ac8182bc1e7eb7a77d4ed792c39afef8a1`

```dockerfile
```

-	Layers:
	-	`sha256:a3e33ebdbe3e943ae797f097cda95411c1e851d91d6a37532750d3c9009f6f0d`  
		Last Modified: Mon, 10 Aug 2026 23:38:15 GMT  
		Size: 7.5 MB (7457046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e1aa1dea356aa622658f905e52263a676e80d6504d8dd18894cdf16aa15e9dd`  
		Last Modified: Mon, 10 Aug 2026 23:38:15 GMT  
		Size: 20.7 KB (20679 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:8d029ab3febd592aa0413155c81861055e200b8ba679c89f647916ab792f1b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.0 MB (320046539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a747bde60afc770092eda85c4501b1c06be8693f3be7f0f965b34003021262`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:09 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:09 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:09 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:09 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 10 Aug 2026 23:37:26 GMT
ENV JETTY_VERSION=12.1.12
# Mon, 10 Aug 2026 23:37:26 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 10 Aug 2026 23:37:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 10 Aug 2026 23:37:26 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 10 Aug 2026 23:37:26 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:37:26 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Mon, 10 Aug 2026 23:37:26 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 10 Aug 2026 23:37:26 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 10 Aug 2026 23:37:26 GMT
WORKDIR /var/lib/jetty
# Mon, 10 Aug 2026 23:37:26 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 10 Aug 2026 23:37:26 GMT
USER jetty
# Mon, 10 Aug 2026 23:37:26 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 10 Aug 2026 23:37:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:37:26 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6b841110a2e3ff6dc4a335180c283116cb5b503434736e3a118a33f30ef0fa`  
		Last Modified: Tue, 04 Aug 2026 00:58:34 GMT  
		Size: 187.4 MB (187379559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c23ad66a93cacb450daf699117c2135b489eecc2937b8da94755d91edf2b0fb`  
		Last Modified: Mon, 10 Aug 2026 23:37:46 GMT  
		Size: 79.2 MB (79216446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7667affd02f1b97546c265fce9df79fb450d57ab55b4bbdbe901cbf7884d48`  
		Last Modified: Mon, 10 Aug 2026 23:37:44 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:c65fa9a8194774db197c9f7c418a872dae1ad5b795706fa8019d7422d85b9f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7476978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144bf5a98b4861ad8d1bbf698cbd78da15277fc57cc8a5966fdeb71223d9c3e1`

```dockerfile
```

-	Layers:
	-	`sha256:76592b7278aeacc4490c0aa4830d264e25b82e7678d67261a377be61c0d5a872`  
		Last Modified: Mon, 10 Aug 2026 23:37:44 GMT  
		Size: 7.5 MB (7456099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:843fed841094c67551282fe552bd87d5266b8e20dcf273e93ab2daf625e0e103`  
		Last Modified: Mon, 10 Aug 2026 23:37:44 GMT  
		Size: 20.9 KB (20879 bytes)  
		MIME: application/vnd.in-toto+json
