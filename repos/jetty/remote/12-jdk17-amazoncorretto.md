## `jetty:12-jdk17-amazoncorretto`

```console
$ docker pull jetty@sha256:b8c4e089798028d02f736ea684a2dfedc549f908dd369a5423f3f730dc8cbe42
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:146cffe9e3bafba70fa28d8d86f04325baf017ce10c701c60f8c8b36e020bf43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300389668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ccfed7f35313d6e2203e196dbd2b74d447c01abdcb1c199990c23fe8ce29170`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:19 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 19:59:19 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 19:59:19 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 05 Nov 2026 20:23:59 GMT
ENV JETTY_VERSION=12.1.14
# Thu, 05 Nov 2026 20:23:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 05 Nov 2026 20:23:59 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 05 Nov 2026 20:23:59 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 05 Nov 2026 20:23:59 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:23:59 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Thu, 05 Nov 2026 20:23:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 05 Nov 2026 20:23:59 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 05 Nov 2026 20:24:00 GMT
WORKDIR /var/lib/jetty
# Thu, 05 Nov 2026 20:24:00 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 05 Nov 2026 20:24:00 GMT
USER jetty
# Thu, 05 Nov 2026 20:24:00 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:24:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:24:00 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249fe1f1aa0ad3732a040d863e872ca4873ccf20d111100e5bb3a876c5d66a9d`  
		Last Modified: Thu, 05 Nov 2026 19:59:39 GMT  
		Size: 157.4 MB (157424999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aee0d88679054beaee63c05802f84d7cdd296a7c7e34983af497d49246d7975`  
		Last Modified: Thu, 05 Nov 2026 20:24:20 GMT  
		Size: 88.4 MB (88393177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c360b9eca44acfc93c30ebdd620087fef2c728f13f1240fc154b6f2726bab85`  
		Last Modified: Thu, 05 Nov 2026 20:24:18 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:1fcee35bfa2ade116ceebac96ef5b5a3111e64b1763eac2590be064e5aedd3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8735008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04e9d2d6bc23fceadf7ed2803f5150831f365bdf7d32f9b59ee084cebbe9b64f`

```dockerfile
```

-	Layers:
	-	`sha256:59d08e0ec7e89c2d226b21d6c6ed3575503be007392fec7d30ff829284511ace`  
		Last Modified: Thu, 05 Nov 2026 20:24:19 GMT  
		Size: 8.7 MB (8716308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51572ca71d2631f86cf4097c88f827ed11019618efd367e1cbb4f066fbf9c9d6`  
		Last Modified: Thu, 05 Nov 2026 20:24:18 GMT  
		Size: 18.7 KB (18700 bytes)  
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
