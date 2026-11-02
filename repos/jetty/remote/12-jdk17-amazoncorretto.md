## `jetty:12-jdk17-amazoncorretto`

```console
$ docker pull jetty@sha256:86ed0dd0f0562e1f4337eedf23bc401177103163e48d47399304b689467391f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:2a53196c7e00c78c1a96bdc768b2a3d9f0e2ead0e7a9c828cb252235bf8eba89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300387150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3eaf537db4efdb029e89b15c6a36ee75073ec2c78696d49f6d40a381a4d2ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:02 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:11:02 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:11:02 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:02 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 02 Nov 2026 20:46:01 GMT
ENV JETTY_VERSION=12.1.14
# Mon, 02 Nov 2026 20:46:01 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 02 Nov 2026 20:46:01 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 02 Nov 2026 20:46:01 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 02 Nov 2026 20:46:01 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 20:46:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Mon, 02 Nov 2026 20:46:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 02 Nov 2026 20:46:01 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 02 Nov 2026 20:46:01 GMT
WORKDIR /var/lib/jetty
# Mon, 02 Nov 2026 20:46:01 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 02 Nov 2026 20:46:01 GMT
USER jetty
# Mon, 02 Nov 2026 20:46:01 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 02 Nov 2026 20:46:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Nov 2026 20:46:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f4df9cd25431f7f7e688d1d91119f0cc4008a6fcc2917c42c308df850fbd13`  
		Last Modified: Mon, 02 Nov 2026 20:11:22 GMT  
		Size: 157.4 MB (157424747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2cfa13a30487b3b03964ce5ca3016c7c8cac46324737340f71c888837c36ed7`  
		Last Modified: Mon, 02 Nov 2026 20:46:20 GMT  
		Size: 88.4 MB (88390912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393b98294a1100d2a132147866e248f01bca24e69a3d85b1b4dd3029082b5558`  
		Last Modified: Mon, 02 Nov 2026 20:46:18 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:01f4dcb311a487c1a8fc606a187d3f00b48ee559008eef3051f577a27a15e7ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8735009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2996d1088a2dae8c1a65d153dfd18ecc6bbec539d71db6ed7cc2b8cd02ea8b`

```dockerfile
```

-	Layers:
	-	`sha256:dbd61e2da77c3dff15133723b67ad78666c40776677803792515dcff9d2c9a15`  
		Last Modified: Mon, 02 Nov 2026 20:46:18 GMT  
		Size: 8.7 MB (8716308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5faa35a59c8a8b5307f3731a7cc33983e8f0a1fccc9ba83a0493ccbfac69058c`  
		Last Modified: Mon, 02 Nov 2026 20:46:18 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:f863fe4c2b4b2a003e9991fb3dcfd9ace2143263fdfd9feefac0c60622050077
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298075691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb1fa4e8fcd5396d56dbb564faf4b16997036f4690cc683dc8907dda84db8f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:19 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:19 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:19 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:10:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:19 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 02 Nov 2026 20:46:04 GMT
ENV JETTY_VERSION=12.1.14
# Mon, 02 Nov 2026 20:46:04 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 02 Nov 2026 20:46:04 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 02 Nov 2026 20:46:04 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 02 Nov 2026 20:46:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 20:46:04 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Mon, 02 Nov 2026 20:46:04 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 02 Nov 2026 20:46:04 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 02 Nov 2026 20:46:04 GMT
WORKDIR /var/lib/jetty
# Mon, 02 Nov 2026 20:46:04 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 02 Nov 2026 20:46:04 GMT
USER jetty
# Mon, 02 Nov 2026 20:46:04 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 02 Nov 2026 20:46:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 02 Nov 2026 20:46:04 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d2be6781a9c3e02dd7a813a63a217383fd661de4342d350e94f23698e53c86`  
		Last Modified: Mon, 02 Nov 2026 20:10:42 GMT  
		Size: 156.3 MB (156294835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6484e2e0e56eac6093644b466af52e2ae555e561bafd87e5d5402621d7083da9`  
		Last Modified: Mon, 02 Nov 2026 20:46:25 GMT  
		Size: 88.3 MB (88322857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae53af1f3e3661a1462c4f7239b6a69ffafae3d2ff9ad8f2c04a29d1c992c638`  
		Last Modified: Mon, 02 Nov 2026 20:46:23 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:23e6522b723825458196557d168fd10941305995b9eb95b8e38c4650ea78ffb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8734104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7c493bd31b36863c6508b82928fc8720ad61ff663f34f2e03333437d493cc6`

```dockerfile
```

-	Layers:
	-	`sha256:b1fb785bca9dae134f6557fea84cfd1455919434e8f408b4717b2b3d94b9239d`  
		Last Modified: Mon, 02 Nov 2026 20:46:23 GMT  
		Size: 8.7 MB (8715275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c289189a2a22b6c327660c385aa78afd0bbf518801f449c6adf0e266ff1edef`  
		Last Modified: Mon, 02 Nov 2026 20:46:23 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
