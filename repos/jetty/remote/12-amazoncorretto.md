## `jetty:12-amazoncorretto`

```console
$ docker pull jetty@sha256:7592aaca8f4a6caa42eecca7013d12ced1aa55788c8f604010abfc87f32e12a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:3f46a3fce9f2f48d9039b19f5e2dfeca63bc3bfafb6239069d4a0267aa263a6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323224233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af4e17340c54948d00083124e742a9233b22728e583623d9296dd56cf05afa0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:05 GMT
ARG version=25.0.3.9-1
# Sat, 18 Jul 2026 00:13:05 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:05 GMT
# ARGS: version=25.0.3.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:05 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Sat, 18 Jul 2026 01:13:15 GMT
ENV JETTY_VERSION=12.1.11
# Sat, 18 Jul 2026 01:13:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 18 Jul 2026 01:13:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 18 Jul 2026 01:13:15 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 18 Jul 2026 01:13:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Jul 2026 01:13:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Sat, 18 Jul 2026 01:13:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Sat, 18 Jul 2026 01:13:15 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Sat, 18 Jul 2026 01:13:15 GMT
WORKDIR /var/lib/jetty
# Sat, 18 Jul 2026 01:13:15 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Sat, 18 Jul 2026 01:13:15 GMT
USER jetty
# Sat, 18 Jul 2026 01:13:15 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 18 Jul 2026 01:13:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 18 Jul 2026 01:13:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f76def6f485283834e22704f39704c66891336677da1ab34ba7fba73a8daa7`  
		Last Modified: Sat, 18 Jul 2026 00:13:29 GMT  
		Size: 189.4 MB (189412254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b40509ab4d95fb7a429248f32792fe8e5366f94dcab8d8a3a0c6635709fb091`  
		Last Modified: Sat, 18 Jul 2026 01:13:33 GMT  
		Size: 79.2 MB (79235839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fffdb6fa237e284fecdd9224ba6a9d817f714527950d8fa1fdc204c1fa375d`  
		Last Modified: Sat, 18 Jul 2026 01:13:32 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:eefdf3198fb10ce25f1b54a1eca700d798ecd2dc063d5322f21291533cc86c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7473200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acd42db00b0ecdfc928e67413a21192abe8875464440f7b6d30dd5d69a9e7259`

```dockerfile
```

-	Layers:
	-	`sha256:2a9cacace22ceadba2678aafb4ec2c5b2998de617abfd44980633ccb5bd50a7f`  
		Last Modified: Sat, 18 Jul 2026 01:13:32 GMT  
		Size: 7.5 MB (7454874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c56363faf16beeebbf30e54c8b167fac34386cb1bf2016ee90973fb1627352c8`  
		Last Modified: Sat, 18 Jul 2026 01:13:31 GMT  
		Size: 18.3 KB (18326 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:c5fc9f721700fee50af5c2aa5f954af5566c3bf563ddb8d1f3479116d0a147f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319887197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6ef069793213877d4f27f3855f2239f585d62003767c905644b1678fc40cdc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:00 GMT
ARG version=25.0.3.9-1
# Sat, 18 Jul 2026 00:13:00 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:00 GMT
# ARGS: version=25.0.3.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:00 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Sat, 18 Jul 2026 01:13:21 GMT
ENV JETTY_VERSION=12.1.11
# Sat, 18 Jul 2026 01:13:21 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 18 Jul 2026 01:13:21 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 18 Jul 2026 01:13:21 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 18 Jul 2026 01:13:21 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Jul 2026 01:13:21 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Sat, 18 Jul 2026 01:13:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Sat, 18 Jul 2026 01:13:21 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Sat, 18 Jul 2026 01:13:22 GMT
WORKDIR /var/lib/jetty
# Sat, 18 Jul 2026 01:13:22 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Sat, 18 Jul 2026 01:13:22 GMT
USER jetty
# Sat, 18 Jul 2026 01:13:22 GMT
EXPOSE map[8080/tcp:{}]
# Sat, 18 Jul 2026 01:13:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 18 Jul 2026 01:13:22 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9becf5794b858448d7ba68186dd01bc99512a25b9710bf28ee703889ab5d05`  
		Last Modified: Sat, 18 Jul 2026 00:13:25 GMT  
		Size: 187.3 MB (187326464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e1f23ade735be7e0f882582844012503ed9ffb7d3af6abb562d78d91fa1cc4`  
		Last Modified: Sat, 18 Jul 2026 01:13:42 GMT  
		Size: 79.1 MB (79109625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971941317324ebbe36125abbf58333ecdb41599f4faf12f7dce50aa0852fe83d`  
		Last Modified: Sat, 18 Jul 2026 01:13:40 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:89f4ef6643af3b296479560624803a9ec20117ebf0a2ed1c2e20b4ee03186eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7472308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8600e17e1ee6111b2dbe76c7c5e8f1913a300ddda550b27a111a7e3544a8d0f7`

```dockerfile
```

-	Layers:
	-	`sha256:1cefdab1369d482ac67a8352463c41037fa8cacd09061ca0e21ecb41ff4c5981`  
		Last Modified: Sat, 18 Jul 2026 01:13:40 GMT  
		Size: 7.5 MB (7453855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12779e2ebd895bcced94d654e3dd51e6f30cea4773e92ed7f3d5d2f8d8b29aca`  
		Last Modified: Sat, 18 Jul 2026 01:13:40 GMT  
		Size: 18.5 KB (18453 bytes)  
		MIME: application/vnd.in-toto+json
