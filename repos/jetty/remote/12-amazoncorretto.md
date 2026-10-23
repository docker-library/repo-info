## `jetty:12-amazoncorretto`

```console
$ docker pull jetty@sha256:9c79822a18e5c95ec730c73b059b1abcfddec5b9279511d0144a35f2c1b93c07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:88763ebae6b7f38d6443e0532191069cf2898a322562a8b6121368393091d707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332682209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00e465b5139df0b5a01a39ea3d2e5ee90bec743feea08c3fc8a45db7284827d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:34 GMT
ARG version=25.0.5.0.9-1
# Fri, 23 Oct 2026 18:09:34 GMT
ARG resource_version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:34 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:34 GMT
# ARGS: version=25.0.5.0.9-1 resource_version=25.0.5.0.9 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:34 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 23 Oct 2026 18:22:13 GMT
ENV JETTY_VERSION=12.1.14
# Fri, 23 Oct 2026 18:22:13 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 23 Oct 2026 18:22:13 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 23 Oct 2026 18:22:13 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 23 Oct 2026 18:22:13 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:22:13 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Fri, 23 Oct 2026 18:22:13 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 23 Oct 2026 18:22:13 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 23 Oct 2026 18:22:13 GMT
WORKDIR /var/lib/jetty
# Fri, 23 Oct 2026 18:22:13 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 23 Oct 2026 18:22:13 GMT
USER jetty
# Fri, 23 Oct 2026 18:22:13 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 23 Oct 2026 18:22:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:22:13 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf9dc93727d03a4af22501de1b828b8707c13077dc69fccf2a2bebd2667a169`  
		Last Modified: Fri, 23 Oct 2026 18:09:59 GMT  
		Size: 189.6 MB (189640184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7be4cbfa82ded32ed0ff22dcc8d7978d4167d3bdea895c20f376d7c03a50ee`  
		Last Modified: Fri, 23 Oct 2026 18:22:34 GMT  
		Size: 88.4 MB (88391228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01373570853bd4e5a1c1dd699c8d68b7cc9b0c9b1db08686b8ead40d1a9aa3b8`  
		Last Modified: Fri, 23 Oct 2026 18:21:47 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:975209a4893ca326176b5da41246a45e42a8bfa1da60b674cb13bfa0a1acb297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8752282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36bdc8eb0436c1e270d6ed83d197c770ce23be3f1917cd56834b3daa504d91ff`

```dockerfile
```

-	Layers:
	-	`sha256:be005ab90884e8c1e4c247c8149582c3f5f59ec24976166bde627bddbe890175`  
		Last Modified: Fri, 23 Oct 2026 18:22:32 GMT  
		Size: 8.7 MB (8731603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c360e20933429a24e36f7d2d49958461bb628ca73fe13191ee3f357f19f4b1a`  
		Last Modified: Fri, 23 Oct 2026 18:22:31 GMT  
		Size: 20.7 KB (20679 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:e1360b10544b5aad9d37b0c03837f2e51cbd349781baf0877135598e77b873e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.4 MB (329390956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ff28b5fbf79a22612ef58d4feba139cff15c7b80359bfcd2018bd4aa75e372`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:37 GMT
ARG version=25.0.5.0.9-1
# Fri, 23 Oct 2026 18:09:37 GMT
ARG resource_version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:37 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:37 GMT
# ARGS: version=25.0.5.0.9-1 resource_version=25.0.5.0.9 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:37 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 23 Oct 2026 18:22:12 GMT
ENV JETTY_VERSION=12.1.14
# Fri, 23 Oct 2026 18:22:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 23 Oct 2026 18:22:12 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 23 Oct 2026 18:22:12 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 23 Oct 2026 18:22:12 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 18:22:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Fri, 23 Oct 2026 18:22:12 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Fri, 23 Oct 2026 18:22:12 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Fri, 23 Oct 2026 18:22:12 GMT
WORKDIR /var/lib/jetty
# Fri, 23 Oct 2026 18:22:12 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Fri, 23 Oct 2026 18:22:12 GMT
USER jetty
# Fri, 23 Oct 2026 18:22:12 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 23 Oct 2026 18:22:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Oct 2026 18:22:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9cb9178b55c853a31274a653a098088c6c566f986d8c99465ebbfd3e6d805b`  
		Last Modified: Fri, 23 Oct 2026 18:10:03 GMT  
		Size: 187.5 MB (187535710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c826b5c23d741f43f64ea2126365205f0675797deca42976eb8a49134180f5`  
		Last Modified: Fri, 23 Oct 2026 18:22:33 GMT  
		Size: 88.3 MB (88324053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f34c9776b4f1aff68b8475c391bc5f64860ec6a4571875f81c9bc1e8953d7af`  
		Last Modified: Fri, 23 Oct 2026 18:22:31 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:8e3f36001dc70bd1ca3a072628d2f0c5f2c0424a81392a70648d3fb0664120bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8751534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa35f6e71104faf35276d93026b1183c2fe2a691a057a367d1d91fd0a2b91308`

```dockerfile
```

-	Layers:
	-	`sha256:b2de0fdf400b2a9fbb2a4e108b12205a2dec2e83c9e707013ea6fac58beb2e1b`  
		Last Modified: Fri, 23 Oct 2026 18:22:31 GMT  
		Size: 8.7 MB (8730656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e541ec7e36c7b293a5679aa303da0e4b8913f509e473fc877866d4f369b82b79`  
		Last Modified: Fri, 23 Oct 2026 18:22:31 GMT  
		Size: 20.9 KB (20878 bytes)  
		MIME: application/vnd.in-toto+json
