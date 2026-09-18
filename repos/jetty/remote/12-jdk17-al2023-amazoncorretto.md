## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:96997d86a915dee58e2354be48d92c2aa0cfaada21dcb7431a07b9f63507d28c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:2e39f4b82e90782cb33ec21dbec43bd5e83f8baacf8f32176a48fbfcbcc1fbf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.1 MB (291146412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20f3b761026d3f5d53acc91b007d9c11f1e07d792ac94b784a15286d57080fe1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:08 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:22:08 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:08 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 17 Sep 2026 23:23:23 GMT
ENV JETTY_VERSION=12.1.13
# Thu, 17 Sep 2026 23:23:23 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 17 Sep 2026 23:23:23 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 17 Sep 2026 23:23:23 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 17 Sep 2026 23:23:23 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:23:23 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Thu, 17 Sep 2026 23:23:23 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 17 Sep 2026 23:23:23 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 17 Sep 2026 23:23:23 GMT
WORKDIR /var/lib/jetty
# Thu, 17 Sep 2026 23:23:23 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 17 Sep 2026 23:23:23 GMT
USER jetty
# Thu, 17 Sep 2026 23:23:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 17 Sep 2026 23:23:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:23:23 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a410bbbb64f05c7a2fe656c5316d43d139e3c4f15d9616eaebc721f36de3c7b`  
		Last Modified: Thu, 17 Sep 2026 22:22:29 GMT  
		Size: 157.1 MB (157139807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b494cb7d0a8456833ecf34846602dc59f03dd039928579a82d928b002beec898`  
		Last Modified: Thu, 17 Sep 2026 23:23:42 GMT  
		Size: 79.4 MB (79418447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ae0bdbbfd1b1cf83dbedf70de7718d16c5cdc8a94a85e87ab4950db4940fda`  
		Last Modified: Thu, 17 Sep 2026 23:23:40 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:a72754d58bad0a18dadc1f266843755aefd1eca60179a7440342c09bd64b223e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7462447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b463e13ce6d7e5fdfec6c026539e7581d9688f248b33239d9b3230c3b514ed20`

```dockerfile
```

-	Layers:
	-	`sha256:1fba5efca9617a893d52b5feaace7838955f5d95b70aba74aeb8d59ae4a0d999`  
		Last Modified: Thu, 17 Sep 2026 23:23:40 GMT  
		Size: 7.4 MB (7443747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e21459a0ce61dabbb23da382f0b65c2e54c187e8c7e6b688a551a49f25210e1`  
		Last Modified: Thu, 17 Sep 2026 23:23:40 GMT  
		Size: 18.7 KB (18700 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:000b1ae775ea76645729444cdac37844b8c4fa0bc5ff1d753ea082458d5d96d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.7 MB (288697052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfdd5bfc1604699940f1e3b206e0c13828aa2332cf8a80afe16d16c5f4237abb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:33 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:33 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:33 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 17 Sep 2026 23:26:11 GMT
ENV JETTY_VERSION=12.1.13
# Thu, 17 Sep 2026 23:26:11 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 17 Sep 2026 23:26:11 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 17 Sep 2026 23:26:11 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 17 Sep 2026 23:26:11 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 23:26:11 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.13/jetty-home-12.1.13.tar.gz
# Thu, 17 Sep 2026 23:26:11 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	716EE302674CDBB2E660E1B44DB5EA09F2E3C800 	CD38A1DADA3413BE96DF547F3D146A4A1C58367E 	75DE085F73C1223260663C245663FB7A8FF7E348
# Thu, 17 Sep 2026 23:26:11 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Thu, 17 Sep 2026 23:26:11 GMT
WORKDIR /var/lib/jetty
# Thu, 17 Sep 2026 23:26:11 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Thu, 17 Sep 2026 23:26:11 GMT
USER jetty
# Thu, 17 Sep 2026 23:26:11 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 17 Sep 2026 23:26:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:26:11 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff79e1d5af020f98faf12385f3d8aaea81dafb18e71b354d73027f091e09984`  
		Last Modified: Thu, 17 Sep 2026 22:46:55 GMT  
		Size: 156.0 MB (155950320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6eee746e21ffd4b25c99a100f6b0e6618ece062c4174fc51f262cc45e54495`  
		Last Modified: Thu, 17 Sep 2026 23:26:31 GMT  
		Size: 79.3 MB (79292282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f900f51eaf288072f551f5be47de88cf2954f3cfb3e989674ed6f1144058e7`  
		Last Modified: Thu, 17 Sep 2026 23:26:29 GMT  
		Size: 1.8 KB (1845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:42ad23b4202ee82e74c0979520d3e2003fe6f73b422621281ae55dd9bfcd8393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb13e46fdf88f7a204ec80f8d704b7d8a19928996384c0ab2338d6bb7403523`

```dockerfile
```

-	Layers:
	-	`sha256:6537469008663b01f167a99cc9ac25be4233b0a57a897b6eb1b56a063f689942`  
		Last Modified: Thu, 17 Sep 2026 23:26:29 GMT  
		Size: 7.4 MB (7442714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87c40c95778f05cb43f15e270a8df45343befc8b3daf4f11a7fc03e876fb46da`  
		Last Modified: Thu, 17 Sep 2026 23:26:28 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.in-toto+json
