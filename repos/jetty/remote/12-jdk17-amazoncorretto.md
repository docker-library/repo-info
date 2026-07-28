## `jetty:12-jdk17-amazoncorretto`

```console
$ docker pull jetty@sha256:482b9a811b51bf338fbbcaa88874b4c8a5c23f544b1e2891f2bf9fd961100797
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:fd68c62887f8aaa6ff3f650ba8d6c2645e3135ebd53e586795e09fde1506d601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290954900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fa404c73ea8258a24c0786a0c55447c3740da1955c653a96674dd3b00dad3d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:36 GMT
ARG version=17.0.20.8-1
# Mon, 27 Jul 2026 21:36:36 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:36 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:36 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 27 Jul 2026 22:03:32 GMT
ENV JETTY_VERSION=12.1.11
# Mon, 27 Jul 2026 22:03:32 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 27 Jul 2026 22:03:32 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Jul 2026 22:03:32 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Jul 2026 22:03:32 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:03:32 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Mon, 27 Jul 2026 22:03:32 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Mon, 27 Jul 2026 22:03:32 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 27 Jul 2026 22:03:32 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Jul 2026 22:03:32 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 27 Jul 2026 22:03:32 GMT
USER jetty
# Mon, 27 Jul 2026 22:03:32 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 27 Jul 2026 22:03:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:03:32 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b7b240575f47ae80ef1903e099015f3267246f58572cdca17f0148171030381`  
		Last Modified: Mon, 27 Jul 2026 21:36:57 GMT  
		Size: 157.1 MB (157140940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c565d1a6a63fb8d557d470db4945fb85be33a969abfb5a31a33fc055fa4ac7e0`  
		Last Modified: Mon, 27 Jul 2026 22:03:49 GMT  
		Size: 79.2 MB (79239402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81836f8c21c76b78a94ecb66f09c6e6bfec602d888cbec0fffe24da61f669a5a`  
		Last Modified: Mon, 27 Jul 2026 22:03:47 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:c786971260d34e89691ad8f9cf1745b8bb0cfd4d8eb91e09f011deecea513524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7457353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45153a32223cf604f30ce2daff8576d500dac05f930e08dfd24cf595ea315131`

```dockerfile
```

-	Layers:
	-	`sha256:ae26dc5f4c385eac3aeddd72b3e6e1664652ac579be2729261ff5b2739fe5bf5`  
		Last Modified: Mon, 27 Jul 2026 22:03:47 GMT  
		Size: 7.4 MB (7439995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e776c0818c47b878a4d7d3438f763a8111c364ccfe78788c25855a0a51935e04`  
		Last Modified: Mon, 27 Jul 2026 22:03:47 GMT  
		Size: 17.4 KB (17358 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:fb9790dc3713f29bedd49d334c27c15d928306a66fa714d43c10680468983371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288509371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785409a59ab949b0f39106ce63b5d19365eadb3c81fa0223d76d92eaf50fac87`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:04 GMT
ARG version=17.0.20.8-1
# Mon, 27 Jul 2026 21:36:04 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:04 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:04 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 27 Jul 2026 22:02:53 GMT
ENV JETTY_VERSION=12.1.11
# Mon, 27 Jul 2026 22:02:53 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 27 Jul 2026 22:02:53 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 27 Jul 2026 22:02:53 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 27 Jul 2026 22:02:53 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 27 Jul 2026 22:02:53 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Mon, 27 Jul 2026 22:02:53 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Mon, 27 Jul 2026 22:02:53 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 27 Jul 2026 22:02:53 GMT
WORKDIR /var/lib/jetty
# Mon, 27 Jul 2026 22:02:53 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 27 Jul 2026 22:02:53 GMT
USER jetty
# Mon, 27 Jul 2026 22:02:53 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 27 Jul 2026 22:02:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Jul 2026 22:02:53 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3e9c2b676d848a1529d1cbb19a021729d4ac625beaafce177625fb6504ad37`  
		Last Modified: Mon, 27 Jul 2026 21:36:26 GMT  
		Size: 155.9 MB (155949698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c2211ac9023993272722379738d017515018c6cff09fc5c12cea2b5412ddd2`  
		Last Modified: Mon, 27 Jul 2026 22:03:12 GMT  
		Size: 79.1 MB (79108186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abe12e0e7300734ea22dba62c2c8d78b5ce231867510f2413283bfeb50ed9c6`  
		Last Modified: Mon, 27 Jul 2026 22:03:10 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:2e0985b2c52fba7b12b2647e10eef9d3964e869a652dc0b1ab98229a63c9d110
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ee2e58327754d1c14aff67a52639494f5f6a27036eb28bbebfcbe0c2252e90`

```dockerfile
```

-	Layers:
	-	`sha256:25f9a64fa8d839900c7b9b71f92ca6a8a381e31d5b1a31228d2c9a4a4fb08e49`  
		Last Modified: Mon, 27 Jul 2026 22:03:10 GMT  
		Size: 7.4 MB (7438926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f961162e5c0166d6e82bb2c09e5b9942618789d324ee5e762c65300647596b86`  
		Last Modified: Mon, 27 Jul 2026 22:03:10 GMT  
		Size: 17.4 KB (17450 bytes)  
		MIME: application/vnd.in-toto+json
