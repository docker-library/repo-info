## `jetty:12-amazoncorretto`

```console
$ docker pull jetty@sha256:4b75b767647e1160a488fe32a7f5ee5aaa8ba957eb9ab872d97ffec71bfded46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:bab4192a2506827ffa9572dcc548e03fa10b65151b73c782f66a8113757ff52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.5 MB (332469344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e53c7c165e213337dfa9b14bf9c1520d5a843850e0b2844f96d90868586d55b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:22 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:44:22 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:22 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:22 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 19:05:59 GMT
ENV JETTY_VERSION=12.1.13
# Mon, 05 Oct 2026 19:05:59 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 05 Oct 2026 19:05:59 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 05 Oct 2026 19:05:59 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 05 Oct 2026 19:05:59 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 19:05:59 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Mon, 05 Oct 2026 19:05:59 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 05 Oct 2026 19:05:59 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 05 Oct 2026 19:05:59 GMT
WORKDIR /var/lib/jetty
# Mon, 05 Oct 2026 19:05:59 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 05 Oct 2026 19:05:59 GMT
USER jetty
# Mon, 05 Oct 2026 19:05:59 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:05:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:05:59 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4992f1cf7532669201e3d7da8ba0a07a8ffdfc0b13a84bb98552488b86eae9`  
		Last Modified: Mon, 05 Oct 2026 18:44:46 GMT  
		Size: 189.5 MB (189511554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb0acd3543fcb2dfe537fb50a3ee8b69f5f0fc12346c6ce322e317949d9de5e`  
		Last Modified: Mon, 05 Oct 2026 19:06:18 GMT  
		Size: 88.3 MB (88325144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50264cdeac16260d6a8c34363ca0b7642a4a263e8cdeb1d84239c28579a4bed`  
		Last Modified: Mon, 05 Oct 2026 19:06:16 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:cab6fea6612d7a021010aa38a90c6f74196424483af426c6cef0a4ed60213922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8752274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdf4455568db2351f51627a96b2288a57ca846d67ae42aebeb0f6baf1b8ed59`

```dockerfile
```

-	Layers:
	-	`sha256:bedf4934b4dd1643d619f257b665ba662fe168ec7ce0bfb52746a299b6b40ce0`  
		Last Modified: Mon, 05 Oct 2026 19:06:16 GMT  
		Size: 8.7 MB (8731595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9c085e4dde7f9e2b5cbbf67ec6875ecfb6a9f3029ae5d651c3bfc08793adadd`  
		Last Modified: Mon, 05 Oct 2026 19:06:16 GMT  
		Size: 20.7 KB (20679 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:ed7f8c9ff3a30eb4edc1bdeac88f4fc04773519f8b076f834fd2596d4e190b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329176909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3681e28963f7c766fb7b817e6ed3c315aa4ddab883aa1b2a935ba41c8750e5fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:52 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:43:52 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:52 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:52 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 19:05:58 GMT
ENV JETTY_VERSION=12.1.13
# Mon, 05 Oct 2026 19:05:58 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 05 Oct 2026 19:05:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 05 Oct 2026 19:05:58 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 05 Oct 2026 19:05:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 19:05:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Mon, 05 Oct 2026 19:05:58 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 05 Oct 2026 19:05:58 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 05 Oct 2026 19:05:58 GMT
WORKDIR /var/lib/jetty
# Mon, 05 Oct 2026 19:05:58 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 05 Oct 2026 19:05:58 GMT
USER jetty
# Mon, 05 Oct 2026 19:05:58 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 19:05:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 05 Oct 2026 19:05:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8f82cdd25a7c12179799666029dc0bc5720c430be45fa6650d3aba439c5853`  
		Last Modified: Mon, 05 Oct 2026 18:44:16 GMT  
		Size: 187.4 MB (187409864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf290f1fc12d2af237053806dd2cb4cf8ec727b5fbb0803f05828b93340eabd`  
		Last Modified: Mon, 05 Oct 2026 19:06:20 GMT  
		Size: 88.3 MB (88260771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0505a0de8eb0459697d4cc7f2b8c24099f79e69ad324f1c34534d720e3ef36b6`  
		Last Modified: Mon, 05 Oct 2026 19:06:18 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:dc9c739f46858a571205dc425f301168213e0811e873a760d35d221959a155f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8751527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a9dc5d201d32fc1df2f1dd3b9512cb51f4ec5a1e37c4368ad6939f90d8e8d3`

```dockerfile
```

-	Layers:
	-	`sha256:a6bdcd5a68ab65186b44e3acab414c98449561e39332295ef169c99712af8942`  
		Last Modified: Mon, 05 Oct 2026 19:06:18 GMT  
		Size: 8.7 MB (8730648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e41e62543bc96abbc0ecb59e4e9992ff5a6d7abd2368a6311701c4fef2f67c4a`  
		Last Modified: Mon, 05 Oct 2026 19:06:18 GMT  
		Size: 20.9 KB (20879 bytes)  
		MIME: application/vnd.in-toto+json
