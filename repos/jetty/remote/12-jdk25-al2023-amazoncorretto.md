## `jetty:12-jdk25-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:46db60f78d7caf42365d9f6495452ca9aa2134fb279bc8396cbe1ce638f7acac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk25-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:7fcf15c97161114cc20f82fad0f755b4a7237f45cd71230f9fc49923fcfb4669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.8 MB (322784915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c71ef534e2d5a1f3752d52076394e1ed3adffbd0f7c4378006f5fea357ce7ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:04 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:00:04 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:00:04 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:04 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 10 Nov 2026 18:55:15 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 10 Nov 2026 18:55:15 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Nov 2026 18:55:15 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Nov 2026 18:55:15 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Nov 2026 18:55:15 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:55:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 10 Nov 2026 18:55:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 10 Nov 2026 18:55:15 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 10 Nov 2026 18:55:15 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Nov 2026 18:55:15 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 10 Nov 2026 18:55:15 GMT
USER jetty
# Tue, 10 Nov 2026 18:55:15 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 10 Nov 2026 18:55:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 18:55:15 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9334640a845dbaaf881b7f899922e1bba1bd1bc75d150d0b3e9ba0548aa0ec`  
		Last Modified: Thu, 05 Nov 2026 20:00:28 GMT  
		Size: 189.6 MB (189627364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9218096a824e7b8dd182b51c38ba69054266658f1f22c9ea5a9bd746101847ed`  
		Last Modified: Tue, 10 Nov 2026 18:55:34 GMT  
		Size: 78.6 MB (78586060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f0409eba396c61d855e557e3af5c7916ea9402befac3d7984baba0bc899628`  
		Last Modified: Tue, 10 Nov 2026 18:55:32 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:37a465a3631a3dedc59bfc2cc5862c5747408222fb461b41b48f6f070c805826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8735365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b763c5d5efd3b4c1e7f4009fcb838cc8d11445b8e0b5fccccb69a86dc6f041`

```dockerfile
```

-	Layers:
	-	`sha256:150dbf4cf5ac94511412acffae5c3a9b5dc69d9f63ba333d93e39db1d30b871d`  
		Last Modified: Tue, 10 Nov 2026 18:55:32 GMT  
		Size: 8.7 MB (8714686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9ae7eec53b11e670fde9b5b7fe4f6a7fd8bc74ac9365548208bf11a5df97c8e`  
		Last Modified: Tue, 10 Nov 2026 18:55:32 GMT  
		Size: 20.7 KB (20679 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk25-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:37c6561351070d166668db484b9a743fb7fcdaf708f9b024fb208da59f238dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.5 MB (319504955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2bf0decfbf023299119f2f36e59668af1fcef5e6fb1d6b44c3d414c89f53e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:16:45 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:16:45 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:16:45 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:16:45 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:16:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:16:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 10 Nov 2026 18:53:06 GMT
ENV JETTY_VERSION=12.1.15
# Tue, 10 Nov 2026 18:53:06 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 10 Nov 2026 18:53:06 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 10 Nov 2026 18:53:06 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 10 Nov 2026 18:53:06 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 18:53:06 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Tue, 10 Nov 2026 18:53:06 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Tue, 10 Nov 2026 18:53:06 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Tue, 10 Nov 2026 18:53:06 GMT
WORKDIR /var/lib/jetty
# Tue, 10 Nov 2026 18:53:06 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Tue, 10 Nov 2026 18:53:06 GMT
USER jetty
# Tue, 10 Nov 2026 18:53:06 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 10 Nov 2026 18:53:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 10 Nov 2026 18:53:06 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12298a717fb0eb4a25b2f9a0a3e09bcfee4a6a58768458e397d2f0c023bb6dab`  
		Last Modified: Thu, 05 Nov 2026 20:17:10 GMT  
		Size: 187.5 MB (187523627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf03af4a7b32825ec2672df98252afe7b5d5ec4017d6bb78ad8e495df8e9032a`  
		Last Modified: Tue, 10 Nov 2026 18:53:29 GMT  
		Size: 78.5 MB (78523328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ad1488bb190926673caf7c16a0fd4e13c38a8b2d48ec1da0028c668840175e`  
		Last Modified: Tue, 10 Nov 2026 18:53:27 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk25-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:4ba8ee93145b29b05d915a87d868c5e6f93b3ab97bb20037f62059e5738bd6dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8734618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f320a02f0e4ffcde8ccec34c4414025fbebb708ef9ac512c6ff0a4698cb30466`

```dockerfile
```

-	Layers:
	-	`sha256:2094e3f386c29de201bd4cb421dd5932730950cf7d6068493c972ca953f2d5e6`  
		Last Modified: Tue, 10 Nov 2026 18:53:27 GMT  
		Size: 8.7 MB (8713739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2fc7f097491a3db3303cc7c44651033195ce75bce0061da4dbc5b6ec4d6b4af`  
		Last Modified: Tue, 10 Nov 2026 18:53:27 GMT  
		Size: 20.9 KB (20879 bytes)  
		MIME: application/vnd.in-toto+json
