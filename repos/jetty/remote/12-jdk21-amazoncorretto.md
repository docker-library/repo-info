## `jetty:12-jdk21-amazoncorretto`

```console
$ docker pull jetty@sha256:3d5983d5d4777fe8b769edfc9c4a3062c42dca0dd32b1b6255957bb562f41d18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:d65e77871f44ad4778a76705ad3cb42645b39039d40ca1d7d36b0383140b28c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.5 MB (313485679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c38f9e28e62bb5751a4647f2431861e55c1a9516813ed6e32e900382d610ec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:10 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:44:10 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:10 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:10 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 07 Oct 2026 19:14:55 GMT
ENV JETTY_VERSION=12.1.14
# Wed, 07 Oct 2026 19:14:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 07 Oct 2026 19:14:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 07 Oct 2026 19:14:55 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 07 Oct 2026 19:14:55 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 19:14:55 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Wed, 07 Oct 2026 19:14:55 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 07 Oct 2026 19:14:55 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 07 Oct 2026 19:14:55 GMT
WORKDIR /var/lib/jetty
# Wed, 07 Oct 2026 19:14:56 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 07 Oct 2026 19:14:56 GMT
USER jetty
# Wed, 07 Oct 2026 19:14:56 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 07 Oct 2026 19:14:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Oct 2026 19:14:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f45e4391e22f1759d68e1a3a7a295d0366f595ceb417fa62afc5870b3aa4d56`  
		Last Modified: Mon, 05 Oct 2026 18:44:34 GMT  
		Size: 170.5 MB (170461125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8e13fc742be3e802322c3ce130df2529062f1280c75d2b23d0a494bc8756219`  
		Last Modified: Wed, 07 Oct 2026 19:15:17 GMT  
		Size: 88.4 MB (88391908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a97d87e2c141769e1390b9267bb79c2e4bc5b7d263da52ea7c638f99938758f7`  
		Last Modified: Wed, 07 Oct 2026 19:15:14 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:c877ec5d0d12a277cd21bd364e25d4d9fe2f4f29af52bdb2246a7e2245ced81f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8736768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f16760b40e1cb9bd3f8b9fcee4155722df5840da685a7491c5d218a22aa8cf6f`

```dockerfile
```

-	Layers:
	-	`sha256:dc46ad3a7223e670927286747fbd7ffbcc12c8afc98c9bf9c2bcf2bba28b04f0`  
		Last Modified: Wed, 07 Oct 2026 19:15:15 GMT  
		Size: 8.7 MB (8718068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e752e6c7476b37fb8aecdc5261c5bfe87475f49847da585e7d6938eb057c817`  
		Last Modified: Wed, 07 Oct 2026 19:15:14 GMT  
		Size: 18.7 KB (18700 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:950d607a07abb16354fe2245c0761ed711fd0c4ddab3bdf742321ca5d6b75766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310570956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c383338545b3791ff0e5c5fba006e49aa6c697b4c275986e931c04eaf97a15a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:19 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:43:19 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:19 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:19 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 07 Oct 2026 19:13:16 GMT
ENV JETTY_VERSION=12.1.14
# Wed, 07 Oct 2026 19:13:16 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 07 Oct 2026 19:13:16 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 07 Oct 2026 19:13:16 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 07 Oct 2026 19:13:16 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 19:13:16 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Wed, 07 Oct 2026 19:13:16 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 07 Oct 2026 19:13:16 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 07 Oct 2026 19:13:16 GMT
WORKDIR /var/lib/jetty
# Wed, 07 Oct 2026 19:13:16 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 07 Oct 2026 19:13:16 GMT
USER jetty
# Wed, 07 Oct 2026 19:13:16 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 07 Oct 2026 19:13:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Oct 2026 19:13:16 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a44d8ff57bcba40c933a2843db84b8c8a4ace48d600a72ccd6270282860850`  
		Last Modified: Mon, 05 Oct 2026 18:43:43 GMT  
		Size: 168.7 MB (168743482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7fa24631e59ab6ecc03df36232b055b5fa8a2b3a78e68e9fadcb4800a7c5a6b`  
		Last Modified: Wed, 07 Oct 2026 19:13:38 GMT  
		Size: 88.3 MB (88321202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f62c4949f6c8f7264ad7aee1d7c130dd435bd6055158b39a4e05f9174b870b2`  
		Last Modified: Wed, 07 Oct 2026 19:12:38 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:c4b701d290f6cd0162748fb7cee271145f366802cf52a68fb162d71c423869be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8735866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b8df782f0836b42882233308ad7204ee566e936471b07d81b25590a41705cb`

```dockerfile
```

-	Layers:
	-	`sha256:84141e3a393c68f6d83bbde0ab4ea35ff59d4c87a461301e7dcbcf5b1e11104d`  
		Last Modified: Wed, 07 Oct 2026 19:13:36 GMT  
		Size: 8.7 MB (8717038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98084dcf0f7e275422716dfc1edd54e68e7f92dd53a3cc5d45ff991925be3be1`  
		Last Modified: Wed, 07 Oct 2026 19:13:36 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json
