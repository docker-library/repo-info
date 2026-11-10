## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:3d696bb0459d207eba3b88cd23bfdefaef1321cb8696eb6e0aa092d405f0b75c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:2860687c46f79525196b38f87d98e0c6f88a9044234bf23c2c4943927fe814d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290583182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d0308067ad3e5bede03540cf25e5082e906e9074f0de494e212d0ac948f7e8`
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
# Tue, 10 Nov 2026 18:55:35 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 10 Nov 2026 18:55:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Nov 2026 18:55:35 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Nov 2026 18:55:35 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Nov 2026 18:55:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:55:35 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 10 Nov 2026 18:55:35 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 10 Nov 2026 18:55:35 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 10 Nov 2026 18:55:35 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Nov 2026 18:55:35 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 10 Nov 2026 18:55:35 GMT
USER jetty
# Tue, 10 Nov 2026 18:55:35 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 10 Nov 2026 18:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 18:55:35 GMT
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
	-	`sha256:574dfadb1883df17efca598caa19809595d609759e529d15329da22694870ace`  
		Last Modified: Tue, 10 Nov 2026 18:55:55 GMT  
		Size: 78.6 MB (78586692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff6342276de7f8f87cfce2eac239302f8796839d212d65b8a59ae7ae103af8e`  
		Last Modified: Tue, 10 Nov 2026 18:55:53 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:ef6ac5f50bbfa522f8bf3f2e3f71ebed48a5837fd93f53dde403b78502a9a0c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8717422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f28e4df21337b1fd56d05c2bbbcf3d8485928429dfffbfe7475c2972dbda95`

```dockerfile
```

-	Layers:
	-	`sha256:751ec64577bbbe94893794e98d49c6cfc34601294933a40e1760759ab943de20`  
		Last Modified: Tue, 10 Nov 2026 18:55:53 GMT  
		Size: 8.7 MB (8698721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20338f583a769f45d9076f1aed84f6e28b6a56125ff4f9c1f1c88c593a022004`  
		Last Modified: Tue, 10 Nov 2026 18:55:53 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:4a423bb29cc70405602f425b61ecc691420694ff53f2890c3acdad09d9fc2ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.3 MB (288268991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfc9b7b970366cb598af03104106a73017b8361158589daff0a56cbbd7b92b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:54 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 20:15:54 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 20:15:54 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:15:54 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:15:54 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 10 Nov 2026 18:53:10 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 10 Nov 2026 18:53:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Nov 2026 18:53:10 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Nov 2026 18:53:10 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Nov 2026 18:53:10 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:53:10 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 10 Nov 2026 18:53:10 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 10 Nov 2026 18:53:10 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 10 Nov 2026 18:53:10 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Nov 2026 18:53:10 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 10 Nov 2026 18:53:10 GMT
USER jetty
# Tue, 10 Nov 2026 18:53:10 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 10 Nov 2026 18:53:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 18:53:10 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5e572b3ce80875f9b5e4677a0848e92223659970767dabbe9908c53ee27e1d`  
		Last Modified: Thu, 05 Nov 2026 20:16:16 GMT  
		Size: 156.3 MB (156294790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7576b0f4ecef3f0afd248024ef0f3c3f75677d4abb0b26434aadf37e684f880e`  
		Last Modified: Tue, 10 Nov 2026 18:53:32 GMT  
		Size: 78.5 MB (78516201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8041da6127668fccac0a940c76f6b86aabc2d1f4b32c5c38750409fcd4e239f9`  
		Last Modified: Tue, 10 Nov 2026 18:53:30 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:a67cba9db49200402b26c8fe9536ad69f98c0a4cfcd3543c306cb29c4d15702c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8716517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e497e803246b38f757c673e13798f038379aee809fe80df5b98a817f58c5486`

```dockerfile
```

-	Layers:
	-	`sha256:a885815515ee358189211637ede7eb446a4aa856691a7fdc835966d437c1b190`  
		Last Modified: Tue, 10 Nov 2026 18:53:30 GMT  
		Size: 8.7 MB (8697688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cbef0f5cfe39b9db4cf252c4bf076b5973ea4b6761e0490ea171a7d3bdc3253`  
		Last Modified: Tue, 10 Nov 2026 18:53:30 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
