## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:5c9beb877b3a5943bf3899a682bf0028dff37b1d5eebbe5765fc9d60cda57064
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:1665ea7acb054dcf1390ca6dca7ccc3337d4929409848ce52c6a954870950af0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290571618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7051ed732c2975a05f986a357ae39c242f80de3875606cfee9654332eddd1628`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:03 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:10:03 GMT
ARG resource_version=17.0.21.0.11
# Mon, 16 Nov 2026 23:10:03 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:03 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:03 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 17 Nov 2026 00:11:07 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 00:11:07 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 00:11:07 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 00:11:07 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 00:11:07 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 00:11:07 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 00:11:07 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 00:11:07 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 00:11:07 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 00:11:07 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 00:11:07 GMT
USER jetty
# Tue, 17 Nov 2026 00:11:07 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 00:11:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 00:11:07 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62c8efcda35722039524347ed9c564b9ab796b762ef01aa1eaeaa7379919fb8`  
		Last Modified: Mon, 16 Nov 2026 23:10:24 GMT  
		Size: 157.4 MB (157421125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6b87e336a25bf2277bf620697cd468dc667fe9c9d47c9cc58182fbbd8e1c32`  
		Last Modified: Tue, 17 Nov 2026 00:11:26 GMT  
		Size: 78.6 MB (78579323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91879cac30946225295b362276d8267985cf5e762fe9603bb4b6d5ae279107db`  
		Last Modified: Tue, 17 Nov 2026 00:11:24 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:574d33dafc705bc3db7684a7d720df43e09f9fbcaa884f61407239e59c0b45f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8717434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3296c0b7478389d84aeaae08b2370a3fea43c9beab4689fda5ada55c82b5e76c`

```dockerfile
```

-	Layers:
	-	`sha256:308efaa981037ad8fe02a930b2bb54f7b8b7fbf66a68b822ddc718723ec346be`  
		Last Modified: Tue, 17 Nov 2026 00:11:24 GMT  
		Size: 8.7 MB (8698733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e88ec51a3eef162d84bd1243ca00fc519f00aa99bf3ca99c67aff27169a8859`  
		Last Modified: Tue, 17 Nov 2026 00:11:24 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:b874c8b8e8c01e2435a134ad2bbd17151ef1e9f3a36a26f2ab12071d695acb92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288263991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0f47cddb2a332111e655f196f64619b0a23bc39f5384242f38b547c6addc3ac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:16 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:10:16 GMT
ARG resource_version=17.0.21.0.11
# Mon, 16 Nov 2026 23:10:16 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:16 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:16 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 17 Nov 2026 00:11:12 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 17 Nov 2026 00:11:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 17 Nov 2026 00:11:12 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 17 Nov 2026 00:11:12 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 17 Nov 2026 00:11:12 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Nov 2026 00:11:12 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 17 Nov 2026 00:11:12 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 17 Nov 2026 00:11:12 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 17 Nov 2026 00:11:12 GMT
WORKDIR /var/lib/jetty
# Tue, 17 Nov 2026 00:11:12 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 17 Nov 2026 00:11:12 GMT
USER jetty
# Tue, 17 Nov 2026 00:11:12 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 17 Nov 2026 00:11:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Nov 2026 00:11:12 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28630b27eaf2d8ca667d958bf96fb891c48d6533d280be0a440eb4d35b27e6a`  
		Last Modified: Mon, 16 Nov 2026 23:10:38 GMT  
		Size: 156.3 MB (156294091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a27ca068275379179a69fbfd301cbee49b6cbe487613248fdf84d9735abd57`  
		Last Modified: Tue, 17 Nov 2026 00:11:34 GMT  
		Size: 78.5 MB (78514946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75618a7479e2e5592e067634997eace1e88359dda570ac5c7c2acfd1fd4ac6b`  
		Last Modified: Tue, 17 Nov 2026 00:11:32 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:d815ffdad054e530bc60647bdb717d58e69e3d44c4419f0e08bd09a92fa3642b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8716528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f107f7fd063705194debae474e9296e53c3937fbc4877a76e0fcbbda87715f`

```dockerfile
```

-	Layers:
	-	`sha256:a21eb9149a12619ebed5a4a340227b8ff5e8289f8fe86e1bbec644bd1f4e5697`  
		Last Modified: Tue, 17 Nov 2026 00:11:32 GMT  
		Size: 8.7 MB (8697700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c15f9a42f8f0cdaa70792b971a8c68d5a59f5e768ad100933922c1cf140d482`  
		Last Modified: Tue, 17 Nov 2026 00:11:31 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.in-toto+json
