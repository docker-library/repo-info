## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:8d3f1b8a6630b690f473bac08fbf0f2ac0933522a8a9c4a9a6b2abf89e0da5b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:875778bc97d2391293176d6840dede2f706631cdf73b7b698a78d502fc634952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290562074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4889ec5a22eb622728d29481a307bff493a6a7ae5b473981a6588b74a8bed717`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:53 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:33:53 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:33:53 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:33:53 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:53 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 18 Nov 2026 22:00:48 GMT
ENV JETTY_VERSION=12.1.15
# Wed, 18 Nov 2026 22:00:48 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Nov 2026 22:00:48 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Nov 2026 22:00:48 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Nov 2026 22:00:48 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:00:48 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Wed, 18 Nov 2026 22:00:48 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 18 Nov 2026 22:00:48 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 18 Nov 2026 22:00:48 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Nov 2026 22:00:48 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 18 Nov 2026 22:00:48 GMT
USER jetty
# Wed, 18 Nov 2026 22:00:48 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 18 Nov 2026 22:00:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:00:48 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643bff153a96c415a2ca214b0ee4f9f1e839eeb676ed5fa2ea4660a77aec946a`  
		Last Modified: Wed, 18 Nov 2026 21:34:12 GMT  
		Size: 157.4 MB (157432817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873ec7b70898933e68ba2670203baf199abf1ffea9743903c2ad8aea025ce9bb`  
		Last Modified: Wed, 18 Nov 2026 22:01:06 GMT  
		Size: 78.6 MB (78558290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d87f51f61a2cd8f2d280a3fd90ce6f1b50d53192aa27ed09ad5dd7354c3eb4`  
		Last Modified: Wed, 18 Nov 2026 22:01:03 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:21ab5c306b41e0d83e7ee1b562f964120c2b7f341b8199a4defeaa0540c1e425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8717428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ea11e81c2a90262d43a671702294a4f3e9a511f27615711422e7ed557d800a5`

```dockerfile
```

-	Layers:
	-	`sha256:4ae3b02565d83e5f7af0d8db8ad7279158f895b8798b60723be4fa23d4078643`  
		Last Modified: Wed, 18 Nov 2026 22:01:06 GMT  
		Size: 8.7 MB (8698727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07914a1d115a31acb51347bef53e5058940dcd12e49ba92c31a008d6ef52d999`  
		Last Modified: Wed, 18 Nov 2026 22:01:03 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:979bd4e822870743ac0d3fe74cd7c9b569af5a20430c6edd219b360f525471dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.2 MB (288249514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4e77ecf4cdc87a2e778c62e664ad8998ea17e4b4b8d2e9f03496ad536a651e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:29 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:34:29 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:34:29 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:29 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:29 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 18 Nov 2026 21:55:28 GMT
ENV JETTY_VERSION=12.1.15
# Wed, 18 Nov 2026 21:55:28 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 18 Nov 2026 21:55:28 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 18 Nov 2026 21:55:28 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 18 Nov 2026 21:55:28 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:55:28 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Wed, 18 Nov 2026 21:55:28 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 18 Nov 2026 21:55:28 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 18 Nov 2026 21:55:28 GMT
WORKDIR /var/lib/jetty
# Wed, 18 Nov 2026 21:55:28 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 18 Nov 2026 21:55:28 GMT
USER jetty
# Wed, 18 Nov 2026 21:55:28 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 18 Nov 2026 21:55:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:55:28 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f189da55103d7d58efc6eea0846301dc8a0741ca73bd452554e6d17cf0e7ca3`  
		Last Modified: Wed, 18 Nov 2026 21:34:52 GMT  
		Size: 156.3 MB (156296732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe0d697187a828b4a07c9dea7ac5ae10d49bf5aa903cae1e00d85556064fb80`  
		Last Modified: Wed, 18 Nov 2026 21:55:50 GMT  
		Size: 78.5 MB (78497356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faff7e52680d61b32eab3b718c177de38de476adc4c63bde55334836c74d7b5`  
		Last Modified: Wed, 18 Nov 2026 21:55:47 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:ca10227be5e3e5cf50c8b783b0bfa5cf493e894b8b4bc35d6bca15b2d140e52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8716523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9b732cf75deae5db89f8c742152dfb82891946d7f2edf011b719b697bd2303`

```dockerfile
```

-	Layers:
	-	`sha256:11ef5eda1093729eeee89420087778fa00f8d77de66c6cc00cc04db887e6b82b`  
		Last Modified: Wed, 18 Nov 2026 21:55:48 GMT  
		Size: 8.7 MB (8697694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1286c757ec294830ff15acaa6f03439f937c766d452f704bcffe2a9c0d0d4ba3`  
		Last Modified: Wed, 18 Nov 2026 21:55:47 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
