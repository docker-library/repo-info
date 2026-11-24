## `jetty:12-jdk17-amazoncorretto`

```console
$ docker pull jetty@sha256:85771670359dc2c20b1708d0675465170232bc82bd5932d433db607795ce704e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:26948d270444525b147ca5cd62b6f9625a34e89721eee0267ae15b63d3e75a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290554114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92bd2e8640eb0093b835d64a0d24f962eda4e9b2741fff9f483e9296712db36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:31 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:10:31 GMT
ARG resource_version=17.0.21.1.2
# Mon, 23 Nov 2026 21:10:31 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:10:31 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:10:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 23 Nov 2026 21:30:33 GMT
ENV JETTY_VERSION=12.1.15
# Mon, 23 Nov 2026 21:30:33 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 23 Nov 2026 21:30:33 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 23 Nov 2026 21:30:33 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 23 Nov 2026 21:30:33 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:30:33 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Mon, 23 Nov 2026 21:30:33 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 23 Nov 2026 21:30:33 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 23 Nov 2026 21:30:33 GMT
WORKDIR /var/lib/jetty
# Mon, 23 Nov 2026 21:30:33 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 23 Nov 2026 21:30:33 GMT
USER jetty
# Mon, 23 Nov 2026 21:30:33 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 23 Nov 2026 21:30:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 21:30:33 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b44d6529d3caa0fcb41a364e0ef760f10afc5823e13f0ca2301e3dd98832a778`  
		Last Modified: Mon, 23 Nov 2026 21:10:51 GMT  
		Size: 157.4 MB (157429062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb1dde067f4289d502a6ff95927f9c94694b99aca0ad5a6a0aab74dac06ffcd`  
		Last Modified: Mon, 23 Nov 2026 21:30:51 GMT  
		Size: 78.6 MB (78558007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71d59d268194907c6735cec7a1f36d1ae66388065966bd64be6a9f8f3d00fcd`  
		Last Modified: Mon, 23 Nov 2026 21:30:49 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:036d6171b4551e497990f92bf6399d5167b159dac0201b2cfd774898c57ff29e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8717428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86f7c96a6c2f8d7dfed65f0ae1ee1b75bddc97b87b94824eae5c3a6c5c917b7`

```dockerfile
```

-	Layers:
	-	`sha256:2f7e06ab36994e3ff21bde6a7ac8aaffc51ac469fa64219b231a4874495690a2`  
		Last Modified: Mon, 23 Nov 2026 21:30:50 GMT  
		Size: 8.7 MB (8698727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af73c366060ad7bcf6ccdea378393053bb986f56f77e478296fb6e87a161ddcc`  
		Last Modified: Mon, 23 Nov 2026 21:30:49 GMT  
		Size: 18.7 KB (18701 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:38beef234f5943819f12902f167c42ce5352f8c57540d23f64f18d8a798d0f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.2 MB (288237493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d28a6c1c363994556b8408b91b2e07a83239b0c03739da83484628dd92152b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:40 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:10:40 GMT
ARG resource_version=17.0.21.1.2
# Mon, 23 Nov 2026 21:10:40 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:10:40 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:10:40 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 23 Nov 2026 21:31:41 GMT
ENV JETTY_VERSION=12.1.15
# Mon, 23 Nov 2026 21:31:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 23 Nov 2026 21:31:41 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 23 Nov 2026 21:31:41 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 23 Nov 2026 21:31:41 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 23 Nov 2026 21:31:41 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.15/jetty-home-12.1.15.tar.gz
# Mon, 23 Nov 2026 21:31:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Mon, 23 Nov 2026 21:31:41 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Mon, 23 Nov 2026 21:31:41 GMT
WORKDIR /var/lib/jetty
# Mon, 23 Nov 2026 21:31:41 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Mon, 23 Nov 2026 21:31:41 GMT
USER jetty
# Mon, 23 Nov 2026 21:31:41 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 23 Nov 2026 21:31:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 23 Nov 2026 21:31:41 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e33c73016e1d6b3bc81bc6d12ff14660c126e269d5dcf85457e97bf178a75ca`  
		Last Modified: Mon, 23 Nov 2026 21:11:03 GMT  
		Size: 156.3 MB (156291177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3784de5c0cde62f32545737ddb07c142d875f3e15aaf06b5fcda7f87396a719c`  
		Last Modified: Mon, 23 Nov 2026 21:32:03 GMT  
		Size: 78.5 MB (78494855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9634dda7146efc9a2a0bb572fb60791d469d682944d8ce9e5a18b02c8b9bd0`  
		Last Modified: Mon, 23 Nov 2026 21:32:01 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:5b95d86f1c07d8845bb46512c60049286c850e20ec45de8c158d409c1f792258
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8716523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddcb2899d3c72a39bc37b8338bbab54574ac0d4ebb0a43fd5336ebc2a953369`

```dockerfile
```

-	Layers:
	-	`sha256:ce50948055c5a0b75c54db8f27726edf9b843f6ec69395f9cc17f2e631b92576`  
		Last Modified: Mon, 23 Nov 2026 21:32:01 GMT  
		Size: 8.7 MB (8697694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d4e6198d24943e4eb102900ab9b0cd9a4ca27e8ae115e6a28e9914def0baa0e`  
		Last Modified: Mon, 23 Nov 2026 21:32:01 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
