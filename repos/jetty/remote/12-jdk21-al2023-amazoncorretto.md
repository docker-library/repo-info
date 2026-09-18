## `jetty:12-jdk21-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:e359f6f5c249221030b12e75cb16a9bf7588a24b6ff121d011814dfb7541d27d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:9bbce1f006c13cefd7a85ab81bbb8def13fb18bd939cdf4c982490378911c8d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.4 MB (304442232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ff8afc5011c66bd4263c22e4a1418bfceed4ef3747ffb1f1d81c96a46d16a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:43 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:22:43 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:43 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 17 Sep 2026 23:23:18 GMT
ENV JETTY_VERSION=12.1.13
# Thu, 17 Sep 2026 23:23:18 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 17 Sep 2026 23:23:18 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 17 Sep 2026 23:23:18 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 17 Sep 2026 23:23:18 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:23:18 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Thu, 17 Sep 2026 23:23:18 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 17 Sep 2026 23:23:18 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 17 Sep 2026 23:23:18 GMT
WORKDIR /var/lib/jetty
# Thu, 17 Sep 2026 23:23:18 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 17 Sep 2026 23:23:18 GMT
USER jetty
# Thu, 17 Sep 2026 23:23:18 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 17 Sep 2026 23:23:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:23:18 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c3afdc4eda7856dc6ecfd297cc96f1039477171bba7a7a4a25acbe38a4d74a`  
		Last Modified: Thu, 17 Sep 2026 22:23:05 GMT  
		Size: 170.4 MB (170436407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37263e0950a495dec847a003aaed9a3e198c7230ca021b4fff0dcab62bd5909`  
		Last Modified: Thu, 17 Sep 2026 23:23:37 GMT  
		Size: 79.4 MB (79417667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b89fed3f8bfa7dfe60cbb0de584cf862090f7c9baa8d6a020c7bebe8c1c0cd8`  
		Last Modified: Thu, 17 Sep 2026 23:23:35 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:bd1123fa6db2324c48d15f5d211ea6fdf40c2f935908e96d3736752a49563eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c60f034d7f2010d64fb7a6eb03eb274884a12b5a267858e296be8fb176c463`

```dockerfile
```

-	Layers:
	-	`sha256:e01f107a437b2e235859bf07c652905fa70e65a30123b12e667efcf027a2da1f`  
		Last Modified: Thu, 17 Sep 2026 23:23:35 GMT  
		Size: 7.4 MB (7446163 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4481823040af9d1171f4d8bd322306acc81a1e882a804b17dae3079d4262b0db`  
		Last Modified: Thu, 17 Sep 2026 23:23:35 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:cfaa2d5a843ff01ca1e70af21869344748f75731edeec7939f3441cb00828588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301433020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acd065e30a08e3e7543678e1760bc24fa04ce35a6351529619381c68678b1631`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:05 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:05 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:05 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:05 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 15 Sep 2026 01:13:01 GMT
ENV JETTY_VERSION=12.1.13
# Tue, 15 Sep 2026 01:13:01 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 15 Sep 2026 01:13:01 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 15 Sep 2026 01:13:01 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 15 Sep 2026 01:13:01 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 01:13:01 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Tue, 15 Sep 2026 01:13:01 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 15 Sep 2026 01:13:01 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 15 Sep 2026 01:13:01 GMT
WORKDIR /var/lib/jetty
# Tue, 15 Sep 2026 01:13:01 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 15 Sep 2026 01:13:01 GMT
USER jetty
# Tue, 15 Sep 2026 01:13:01 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 15 Sep 2026 01:13:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 01:13:01 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5fb1f4dba5c82b104bac792d11a75a29127e69aa846bbd18b2ca5f728f655e`  
		Last Modified: Tue, 15 Sep 2026 00:12:28 GMT  
		Size: 168.7 MB (168685717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a601e5b786d24bf7bf80e3d5a631eb7a2bdd73f8358a44cd520c4b333a3dc6`  
		Last Modified: Tue, 15 Sep 2026 01:13:21 GMT  
		Size: 79.3 MB (79292854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf528779e2829d4a6fdcd5191ea6730c645259348e59bef47b6348670ee2e8a0`  
		Last Modified: Tue, 15 Sep 2026 01:13:19 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:ec96a68912950a4546bb86d01e916e9c586c572c22e29d594cbe4a47eb7d8b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6d9adf395f13285ea9595badda6bcd6388c08c61edfb26d6cdb0c929fb8808`

```dockerfile
```

-	Layers:
	-	`sha256:757a20db11148897e45a32ac270ca824dce593f890ddb7e91c27053e5dfb60ed`  
		Last Modified: Tue, 15 Sep 2026 01:13:19 GMT  
		Size: 7.4 MB (7445133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a52e30dcd1462a7ac7449dbb2e2563898ef8dae169a5f63ee03f0552ffcbed9`  
		Last Modified: Tue, 15 Sep 2026 01:13:19 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
