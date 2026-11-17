## `jetty:12-jdk21-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:e6e4efec103e25e028c073f084ad1dae119a4fa1043056ecef59004ab12203ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:14c0d1e470600eaa4fee0fe10e49a5aed5ddecee652c9438f5758655121f8fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.9 MB (303897046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023c53dfd273bda3e50ce9f8af7203614cf243bb7e7b5de48b9eaa98e34f8c62`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:58 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:58 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:58 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:58 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:58 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 17 Nov 2026 00:10:55 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 00:10:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 00:10:55 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 00:10:55 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 00:10:55 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 00:10:55 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 00:10:55 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 00:10:55 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 00:10:55 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 00:10:55 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 00:10:55 GMT
USER jetty
# Tue, 17 Nov 2026 00:10:55 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 00:10:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 00:10:55 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4c67523f8432bcce75484df2c30a8c327080dd82f76f95d82bdd0c740a8430`  
		Last Modified: Mon, 16 Nov 2026 23:11:22 GMT  
		Size: 170.7 MB (170743030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3632efda033faab426bb881a37cbf591ec7234919dac45bc6ecd9aa43f05cc8`  
		Last Modified: Tue, 17 Nov 2026 00:11:16 GMT  
		Size: 78.6 MB (78582847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2144cb5d6d6c8d0cb17030fa99a4e0616cc295a1b2eebe5df37e131bbddb66`  
		Last Modified: Tue, 17 Nov 2026 00:11:14 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:c3680cb267b8eb1c5a7fad403400f4028c74f14709cbcf1c133310e41b475840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8719860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3a1087cbfa2a7602ab113f0ea0277349c839989be499ee9d19d62c06bd09eb`

```dockerfile
```

-	Layers:
	-	`sha256:d0928a670bf21ba049aaafbe66a95d6e2fe2e1899ccac124f63d7bec1642a980`  
		Last Modified: Tue, 17 Nov 2026 00:11:14 GMT  
		Size: 8.7 MB (8701159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cf5ce86fe64dffa052552ef6b47faea7456a09a4190c463f5a8605ec61c08cd`  
		Last Modified: Tue, 17 Nov 2026 00:11:14 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:d43139897051ffc89604fe7343b6262f4b727cfa347982055b93e16c51f01190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.0 MB (300988763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d54820e7a9e25166ccbba116a98de53b6b19b3d34b877114490e8e48de34fecd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:46 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:46 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:46 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:46 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:46 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 17 Nov 2026 00:10:56 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 00:10:56 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 00:10:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 00:10:56 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 00:10:56 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 00:10:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 00:10:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 00:10:56 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 00:10:56 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 00:10:56 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 00:10:56 GMT
USER jetty
# Tue, 17 Nov 2026 00:10:56 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 00:10:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 00:10:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0092060c684d3bb3c08d3629c24e7718d1d4b526405b64cce47c3aceb0695c3`  
		Last Modified: Mon, 16 Nov 2026 23:11:10 GMT  
		Size: 169.0 MB (169018937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93cd2747f5b0dcf6bd6ac9f8bd0f87aefdaba5b28110664e519bb3dfd8b23683`  
		Last Modified: Tue, 17 Nov 2026 00:11:18 GMT  
		Size: 78.5 MB (78514873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede6ad6f6f503825a3b5bdac173d6b47c9c7abf654c67cb285f8f6a075617c54`  
		Last Modified: Tue, 17 Nov 2026 00:11:16 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:4cf714635becfa278e15b550f84f8cd3e7d7bbf523304cdca83f7a77bc5c470e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8718958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e764a7237b64c71f4e6f78c01a4444e204c5fdbdc338535f5019c19bc52f3f12`

```dockerfile
```

-	Layers:
	-	`sha256:272ba56b43eda3eedec2228c4d8b7acf8704d1c37451fac213499d34c6426954`  
		Last Modified: Tue, 17 Nov 2026 00:11:16 GMT  
		Size: 8.7 MB (8700129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5d61d2e82287ca6bccb2a18b34e5f8fd90b53e6ee53c269f324571313ebef2b`  
		Last Modified: Tue, 17 Nov 2026 00:11:16 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
