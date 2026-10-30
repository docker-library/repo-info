## `jetty:12-jdk17-amazoncorretto`

```console
$ docker pull jetty@sha256:5010cc3aec747156cdf75b4b3fc3fcb71db9d094942f809e4f8ac01678febb1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:4519c1bf6ba61486eb5b81409fefdd6685cf0cf852d3159dbc82deafd3774f2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.5 MB (300466885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b849cc6ffe7cbed292fb0d2fd104dc17ff65fea5a7828fc9428ce2e0909c9f09`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:18 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:18 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:18 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:44:18 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:18 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 30 Oct 2026 20:11:01 GMT
ENV JETTY_VERSION=12.1.14
# Fri, 30 Oct 2026 20:11:01 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 30 Oct 2026 20:11:01 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Oct 2026 20:11:01 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Oct 2026 20:11:01 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Oct 2026 20:11:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Fri, 30 Oct 2026 20:11:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 30 Oct 2026 20:11:01 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 30 Oct 2026 20:11:01 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Oct 2026 20:11:01 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 30 Oct 2026 20:11:01 GMT
USER jetty
# Fri, 30 Oct 2026 20:11:01 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 30 Oct 2026 20:11:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Oct 2026 20:11:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5811f5db0ef9ccc3bc69c746ec563f3e864ccba91e261b468f7d5a43a68601a`  
		Last Modified: Fri, 30 Oct 2026 19:44:38 GMT  
		Size: 157.4 MB (157422757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04010f58b88994965535861e597d8026fb6d8963f4a27874a2bc08cc2a8ee3e4`  
		Last Modified: Fri, 30 Oct 2026 20:11:19 GMT  
		Size: 88.4 MB (88393332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32a9cd2860369cd56e9d55b578777a29b5aeb6062bc10035b7619b6620a8cad7`  
		Last Modified: Fri, 30 Oct 2026 20:11:17 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:d8940471dd95573caa590e44ae9023f2f4cfd89ed8c9d960148a59a4995cfa25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8734349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:592635caa625494d82e4cb8f1fe2f528b10ca206da4648423112a564844d046d`

```dockerfile
```

-	Layers:
	-	`sha256:1f98eeee689074df0bcaefcaf476ed363412b58648fe042dc14ba951e4d26f25`  
		Last Modified: Fri, 30 Oct 2026 20:11:17 GMT  
		Size: 8.7 MB (8715648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0fea925d0c2b1a1618eea0a8962dd49a0d0371fc649857cfef4009aa1598ab8f`  
		Last Modified: Fri, 30 Oct 2026 20:11:17 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:012dddb70bed819283e646754e1b46c2c233efd48e6ea5b78ce22b51b313b56a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298146528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcb1a745ad090ba13a70a2cf626df8aa9bbb3e6c551d73679cc624b5f7517675`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:14 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:14 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:14 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:44:14 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:14 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 30 Oct 2026 20:11:25 GMT
ENV JETTY_VERSION=12.1.14
# Fri, 30 Oct 2026 20:11:25 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 30 Oct 2026 20:11:25 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 30 Oct 2026 20:11:25 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 30 Oct 2026 20:11:25 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 30 Oct 2026 20:11:25 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Fri, 30 Oct 2026 20:11:25 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 30 Oct 2026 20:11:25 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 30 Oct 2026 20:11:25 GMT
WORKDIR /var/lib/jetty
# Fri, 30 Oct 2026 20:11:25 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 30 Oct 2026 20:11:25 GMT
USER jetty
# Fri, 30 Oct 2026 20:11:25 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 30 Oct 2026 20:11:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Oct 2026 20:11:25 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64f3bbc962a6a5bf7bca5a1e045bc397f0d5e23fa058a7d5e091d2725ece0ef`  
		Last Modified: Fri, 30 Oct 2026 19:44:36 GMT  
		Size: 156.3 MB (156293391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3482bf145c75e080055e7da13e2fe080343538510d613b27fe6b4820a21a6d5`  
		Last Modified: Fri, 30 Oct 2026 20:11:46 GMT  
		Size: 88.3 MB (88321945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6e91dd9b3aa48356c497b96dbfad50b62d21a27f7563bf4e6c1d02c5f62496`  
		Last Modified: Fri, 30 Oct 2026 20:11:44 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:2c4b71afd15a0d2e15b6ceb6b661a6bae84f08b229607535b608e547b1539ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8733444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15515a61d122252b6af06b42aca82c309410db8d491f1b1bdb50a4da8569a8fc`

```dockerfile
```

-	Layers:
	-	`sha256:d4cdedd3bfdb7284707fb64dd2be422db1fc8862e490dda65cabae0018befb95`  
		Last Modified: Fri, 30 Oct 2026 20:11:45 GMT  
		Size: 8.7 MB (8714615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36f240dbd8241a7bd66a776761591fae519bc24ef408d2d4910aa8e59d65e856`  
		Last Modified: Fri, 30 Oct 2026 20:11:44 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
