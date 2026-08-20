## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:2d79247d3f24eab69d68ed1d767c7e7fca8cf65d26bd5683826d55c712831f8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:6ba6587a5a334f1f249e58b2838c0bc12fd5d5fc77ce3fbcd4ba01938cb318f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.1 MB (291060597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22c434520f0f8c1e9449fe3ba504b6ee280c0df5e81cc511ae371f6192a81af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:18 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:20:18 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:18 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:18 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 20 Aug 2026 18:04:21 GMT
ENV JETTY_VERSION=12.1.12
# Thu, 20 Aug 2026 18:04:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 20 Aug 2026 18:04:21 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 20 Aug 2026 18:04:21 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 20 Aug 2026 18:04:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 18:04:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Thu, 20 Aug 2026 18:04:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 20 Aug 2026 18:04:21 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 20 Aug 2026 18:04:21 GMT
WORKDIR /var/lib/jetty
# Thu, 20 Aug 2026 18:04:21 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 20 Aug 2026 18:04:21 GMT
USER jetty
# Thu, 20 Aug 2026 18:04:21 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 20 Aug 2026 18:04:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Aug 2026 18:04:21 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfead4a6ee7773d2dbc579b59ce8c1135ecf004db916308e9802df9eb8fe9f5a`  
		Last Modified: Thu, 20 Aug 2026 17:20:40 GMT  
		Size: 157.1 MB (157139355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3b0648d3254ccde171338c78a356e7142de68e50dd89a9970ad4333c4d5b98`  
		Last Modified: Thu, 20 Aug 2026 18:04:38 GMT  
		Size: 79.3 MB (79335519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3924fd83612141c7acba64cce666a64e3aed3d6aeac053e5b0d0bd9bc308d7a0`  
		Last Modified: Thu, 20 Aug 2026 18:04:35 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:56ca997a9a61443fff7016958305aa4f56b2feac1668f77a178574546382febf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335ea647b7271e7dcb3607654d53b8d2aad68a45c730133bb9d7cc55171b2c77`

```dockerfile
```

-	Layers:
	-	`sha256:5f0b165d43ce824963faa231deaafc14aa921af26c93b2b8941acea374136155`  
		Last Modified: Thu, 20 Aug 2026 18:04:36 GMT  
		Size: 7.4 MB (7441095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c5d83774230908501265b41fb9db4faf8893e8b7888add069ca76f3cfb3208c`  
		Last Modified: Thu, 20 Aug 2026 18:04:35 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:f786a791c35d5efae38f8b93c53231284a3b4a180b65fa4911462a149eb8985b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.6 MB (288603243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43f6f702d046f57eb77adce5758132adbf44894e8d1975a8f4006d587f5db5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:00 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:17:00 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:00 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:00 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 20 Aug 2026 18:00:39 GMT
ENV JETTY_VERSION=12.1.12
# Thu, 20 Aug 2026 18:00:39 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 20 Aug 2026 18:00:39 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 20 Aug 2026 18:00:39 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 20 Aug 2026 18:00:39 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 18:00:39 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.12/jetty-home-12.1.12.tar.gz
# Thu, 20 Aug 2026 18:00:39 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 20 Aug 2026 18:00:39 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 20 Aug 2026 18:00:39 GMT
WORKDIR /var/lib/jetty
# Thu, 20 Aug 2026 18:00:39 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 20 Aug 2026 18:00:39 GMT
USER jetty
# Thu, 20 Aug 2026 18:00:39 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 20 Aug 2026 18:00:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 20 Aug 2026 18:00:39 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2898f49accdb0dda82fec0027f06a1977c5014ad3d546b41c09dbf32cbb1028`  
		Last Modified: Thu, 20 Aug 2026 17:17:23 GMT  
		Size: 156.0 MB (155950280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92aa513b09c9a86678f9eeb7a26841eb07cbfd4025d3525f07a811c60e2436dd`  
		Last Modified: Thu, 20 Aug 2026 18:01:00 GMT  
		Size: 79.2 MB (79200199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb9395a63017d65e1f621348500783d89910096c93d4d519d14224a491084a7`  
		Last Modified: Thu, 20 Aug 2026 18:00:57 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:e0b1b8039907da40ddd445b31fb36f6397393b55f1b5aaa1afec7c5c48532743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1eae48579eeff199e0d3a5f1a19aa33f592eeb3aa3ba55aee43865f49f8d01`

```dockerfile
```

-	Layers:
	-	`sha256:13bc15e649c9fb5a6427f4e31bf6e64a3efbd79ac97beb40d2f39fbf8ef88999`  
		Last Modified: Thu, 20 Aug 2026 18:00:58 GMT  
		Size: 7.4 MB (7440062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ace189d43daa02d533cc19e5933fb5ba9fb39d5b26508efab21843b6d29667e1`  
		Last Modified: Thu, 20 Aug 2026 18:00:58 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json
