## `jetty:12-jdk21-amazoncorretto`

```console
$ docker pull jetty@sha256:4ed6a2d4f236d9c2c64a7b86c41630bf945236e01d60c9e12aaf5748207092de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:49891714d7b77b196d3a47bbe8c49cca12427538a9512c2e85ad1f5edc37f60c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313419533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d44a6af3e3ecfbf9fe84ba6f12289cb11f2ef8f7d3d1d6ed9c6751f5f12ac4f3`
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
# Mon, 05 Oct 2026 19:06:02 GMT
ENV JETTY_VERSION=12.1.13
# Mon, 05 Oct 2026 19:06:02 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 05 Oct 2026 19:06:02 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 05 Oct 2026 19:06:02 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 05 Oct 2026 19:06:02 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 19:06:02 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Mon, 05 Oct 2026 19:06:02 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 05 Oct 2026 19:06:02 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 05 Oct 2026 19:06:02 GMT
WORKDIR /var/lib/jetty
# Mon, 05 Oct 2026 19:06:02 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 05 Oct 2026 19:06:02 GMT
USER jetty
# Mon, 05 Oct 2026 19:06:02 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:06:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:06:02 GMT
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
	-	`sha256:5ca1cfc49b981fc7ee96cb89720fb505718fbb0cf1f8d0a91f28e840a36092bd`  
		Last Modified: Mon, 05 Oct 2026 19:06:22 GMT  
		Size: 88.3 MB (88325762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab1252df77c38a564223adc33103f4914fd884335c1c8eae3bed234f4b5349e1`  
		Last Modified: Mon, 05 Oct 2026 19:06:19 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:0233a4fc904fee5ea84da49aadd60a77ac993dc761bd4bbeb289c6443289a002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8736755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b45257b98b1c9a8f2256196dfde8ac5ab2c0a94e0bf050d5c270a12634cfb6b6`

```dockerfile
```

-	Layers:
	-	`sha256:f09032b23e0a49a4eeca6a64b2bff4b413d6186fab35d80e6094686b4fa77a51`  
		Last Modified: Mon, 05 Oct 2026 19:06:20 GMT  
		Size: 8.7 MB (8718056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a65d0fbae4a71b22cc4ef6cf9a4893318b26fbe0cbdcf4b62bcc9f86e9621014`  
		Last Modified: Mon, 05 Oct 2026 19:06:19 GMT  
		Size: 18.7 KB (18699 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:a3ee362572434e9964d8360f176c1bdef66a07c4369e94a738b4d7645515e273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.5 MB (310505174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fbe0c7c6c61b742f89d7e3655009cc0158fb421852fae9b158d196918dac6bb`
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
# Mon, 05 Oct 2026 19:05:57 GMT
ENV JETTY_VERSION=12.1.13
# Mon, 05 Oct 2026 19:05:57 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 05 Oct 2026 19:05:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 05 Oct 2026 19:05:57 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 05 Oct 2026 19:05:57 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 19:05:57 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Mon, 05 Oct 2026 19:05:57 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 05 Oct 2026 19:05:57 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 05 Oct 2026 19:05:57 GMT
WORKDIR /var/lib/jetty
# Mon, 05 Oct 2026 19:05:57 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 05 Oct 2026 19:05:57 GMT
USER jetty
# Mon, 05 Oct 2026 19:05:57 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:05:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:05:57 GMT
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
	-	`sha256:28057d2c2d893b628f848b86f7d6b53954c8c1debc7f99ff8c3963f9e0508cfc`  
		Last Modified: Mon, 05 Oct 2026 19:06:18 GMT  
		Size: 88.3 MB (88255418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461e94f5f73e2a785c88a46427d7fc701c464e6cdb50661fe38b24bbeccaa12e`  
		Last Modified: Mon, 05 Oct 2026 19:06:16 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:b940799ce5b85dda0a7510c774f71e0b0f476dec2df64aec6aa42eef9008afed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8735855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:decee34cc947f71cb45324e54e7bbdba88db34dd0321c6ec670d99c81b76fd0a`

```dockerfile
```

-	Layers:
	-	`sha256:e2288bbcc0d83bfc52568294f5d539d22263176a77924bb57046c72e0915426b`  
		Last Modified: Mon, 05 Oct 2026 19:06:17 GMT  
		Size: 8.7 MB (8717026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08f6ff20c76836cc2260287dfbc98dab5ed1ec96bad9992f82b5bb86da45298b`  
		Last Modified: Mon, 05 Oct 2026 19:06:16 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
