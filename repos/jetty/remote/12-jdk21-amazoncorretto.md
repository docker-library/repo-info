## `jetty:12-jdk21-amazoncorretto`

```console
$ docker pull jetty@sha256:68d5d0ad2a8aa77ac32811a552471c9720d620bdd062ca1e9f62ee3852c93024
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk21-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:089da37d2421a4c063248394126862d6d7badc4fdfe20a7338335a9ee3dd6f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.5 MB (313486447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abfec6548930c46f5376af01367dbb6f63f93a40e9edc57fa50c47f34640a9e6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:26 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:26 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:26 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:26 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 14 Oct 2026 18:13:51 GMT
ENV JETTY_VERSION=12.1.14
# Wed, 14 Oct 2026 18:13:51 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 14 Oct 2026 18:13:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 14 Oct 2026 18:13:51 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 14 Oct 2026 18:13:51 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 18:13:51 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Wed, 14 Oct 2026 18:13:51 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 14 Oct 2026 18:13:51 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 14 Oct 2026 18:13:51 GMT
WORKDIR /var/lib/jetty
# Wed, 14 Oct 2026 18:13:51 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 14 Oct 2026 18:13:51 GMT
USER jetty
# Wed, 14 Oct 2026 18:13:51 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 14 Oct 2026 18:13:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:13:51 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6584a5c3a7909ba4c18b6d037cae759229ad37eb6e00ec036d91269a0056827`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 170.5 MB (170461938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6042a702c50b51d2194344845e4ecb06ccc09fb555b21413efd2999829bab6f`  
		Last Modified: Wed, 14 Oct 2026 18:14:11 GMT  
		Size: 88.4 MB (88391862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1890b7a51e7d4597d81a987f413bbac8ab962e24f0a349c95389eeae7aaf2471`  
		Last Modified: Wed, 14 Oct 2026 18:14:09 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:78ed0766ca37078e7857300f17ddb164808cecc42df0a6a4691c880b3dad9ab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8736769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa9704344b745e69c471b518b0da5e4aa38c5746e68909b314848fca5bc0004`

```dockerfile
```

-	Layers:
	-	`sha256:00923506582e5d5cd74c1e2d03afa1cc231207b7972d8bd9168dc1c8aa97bf7d`  
		Last Modified: Wed, 14 Oct 2026 18:14:10 GMT  
		Size: 8.7 MB (8718068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82e4648c2a7eb2857135614cecbf6f4a7a8110d1fba85822a2d4af9f8b66a033`  
		Last Modified: Wed, 14 Oct 2026 18:14:09 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk21-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:e0ee5e38a93df1e4a2e10dc49e9980ac217cb5feb4678ef668048245dd76eeae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310573366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccde63254a2cc2e0bd5da3ce13a0f8da26a2639e63d80658eff2d16106f4b349`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:25 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:25 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:25 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:25 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 14 Oct 2026 18:13:56 GMT
ENV JETTY_VERSION=12.1.14
# Wed, 14 Oct 2026 18:13:56 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 14 Oct 2026 18:13:56 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 14 Oct 2026 18:13:56 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 14 Oct 2026 18:13:56 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Oct 2026 18:13:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.14/jetty-home-12.1.14.tar.gz
# Wed, 14 Oct 2026 18:13:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Wed, 14 Oct 2026 18:13:56 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 14 Oct 2026 18:13:56 GMT
WORKDIR /var/lib/jetty
# Wed, 14 Oct 2026 18:13:56 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 14 Oct 2026 18:13:56 GMT
USER jetty
# Wed, 14 Oct 2026 18:13:56 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 14 Oct 2026 18:13:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Oct 2026 18:13:56 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca7d2b9a32ce878e9a6c9c4e2beb047fcb9a3c39d653ebcc56c7e27564da16e`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 168.7 MB (168745656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6696522f398d651540b0ee081f95522482313fcb93248c2370b1b40539f2b67c`  
		Last Modified: Wed, 14 Oct 2026 18:14:17 GMT  
		Size: 88.3 MB (88321435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c474fe0b8b76a83d5aa3f7cefe0c089ea9850902b6de8aa279a682f1b2870c27`  
		Last Modified: Wed, 14 Oct 2026 18:14:15 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk21-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:fd7202e69e74e850f2a443a10f808e257079f9efab8110584eb1903d5c21d0d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8735867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e8dd398f51fddc2b5027c7e25fa8a10793f204944c520dd169e47032296132`

```dockerfile
```

-	Layers:
	-	`sha256:db6a9cb7b76d36798bb7a8894df8c5ec88c1e7df0e1375f9dc92ac6fa03c9f7f`  
		Last Modified: Wed, 14 Oct 2026 18:14:16 GMT  
		Size: 8.7 MB (8717038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f8c5261122e33b6fd05ae95f2abf54a1a46f31e7300d64349bfcc0f87ef9b75`  
		Last Modified: Wed, 14 Oct 2026 18:14:15 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
