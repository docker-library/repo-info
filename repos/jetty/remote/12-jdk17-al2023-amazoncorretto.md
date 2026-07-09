## `jetty:12-jdk17-al2023-amazoncorretto`

```console
$ docker pull jetty@sha256:1f72d36b9290e1d64a2c52df527680a09d5c848560fb78480b01a7cb8b114ce8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; amd64

```console
$ docker pull jetty@sha256:b18f89f6c49a3ee3d25bfe609a71c48804a946f277cee4baebcdfa3c4c9579a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290963397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8296a4043ccf9a88b9f7aa4eb3b378650410ce5b87bc363653b38fc8c12a295`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:51 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:11:51 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:11:51 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:11:51 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 08 Jul 2026 22:12:58 GMT
ENV JETTY_VERSION=12.1.11
# Wed, 08 Jul 2026 22:12:58 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Jul 2026 22:12:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 Jul 2026 22:12:58 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 Jul 2026 22:12:58 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 22:12:58 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Wed, 08 Jul 2026 22:12:58 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Wed, 08 Jul 2026 22:12:58 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 08 Jul 2026 22:12:58 GMT
WORKDIR /var/lib/jetty
# Wed, 08 Jul 2026 22:12:58 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 08 Jul 2026 22:12:58 GMT
USER jetty
# Wed, 08 Jul 2026 22:12:58 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 08 Jul 2026 22:12:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Jul 2026 22:12:58 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd2570f78f45e1a267d45ec9ca8b08ded70e923b608e12496eace38dc37c9092`  
		Last Modified: Wed, 08 Jul 2026 21:12:12 GMT  
		Size: 157.2 MB (157155412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c408bdaaf9fb9a05811c00feeae7dbbf7ffe7a4862ec3423ce86757c4859d40e`  
		Last Modified: Wed, 08 Jul 2026 22:13:17 GMT  
		Size: 79.2 MB (79231956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549cf5cd986fb8e59fe5a1b4bfd6f9729afd8e793abf157ce89e04c824449ccd`  
		Last Modified: Wed, 08 Jul 2026 22:13:15 GMT  
		Size: 1.8 KB (1842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:2fa8aaa091c669073c79c0b8698785fea29597f8c7d3aed6731ae58f265bc57e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7457411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181966c0acccf3a4db9d3ab46ede1753a6d708a3855becba0196305244f6c9c0`

```dockerfile
```

-	Layers:
	-	`sha256:5ce05fede5003add13baa216c823961197a7ede6f11c1d1806071541745bfac6`  
		Last Modified: Wed, 08 Jul 2026 22:13:15 GMT  
		Size: 7.4 MB (7439971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d4bb5fe8b5dbce9b18488c66ef956fda24187b4b58aaecf2c6e1b0b3435eacc`  
		Last Modified: Wed, 08 Jul 2026 22:13:15 GMT  
		Size: 17.4 KB (17440 bytes)  
		MIME: application/vnd.in-toto+json

### `jetty:12-jdk17-al2023-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:e316d0ac7e9512d81602863e5db4707a10405470f5bee80a3df8a84745375685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288538345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49bca0470c9157c416e342c6a2bebce432abdc337258e94e3f391ce13c99d8c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:38 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:11:38 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:11:38 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:11:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Wed, 08 Jul 2026 22:13:14 GMT
ENV JETTY_VERSION=12.1.11
# Wed, 08 Jul 2026 22:13:14 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 08 Jul 2026 22:13:14 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 08 Jul 2026 22:13:14 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 08 Jul 2026 22:13:14 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Jul 2026 22:13:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/12.1.11/jetty-home-12.1.11.tar.gz
# Wed, 08 Jul 2026 22:13:14 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	F254B35617DC255D9344BCFA873A8E86B4372146 	E22488CC94F63E3FC928536C4241C08270D999C3
# Wed, 08 Jul 2026 22:13:14 GMT
RUN set -xe ; 	mkdir -p $TMPDIR ; 	yum install -y shadow-utils tar xz gzip which && yum clean all ; 	command -v dnf && dnf swap -y gnupg2-minimal gnupg2-full && dnf clean all ; 	export GNUPGHOME=/jetty-keys ; 	mkdir -p "$GNUPGHOME" ; 	for key in $JETTY_GPG_KEYS; do 		gpg --batch --keyserver "hkps://keyserver.ubuntu.com" --recv-keys "$key"; 	done ; 	mkdir -p "$JETTY_HOME" ; 	cd $JETTY_HOME ; 	curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz ; 	curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc ; 	gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz ; 	tar -xvf jetty.tar.gz --strip-components=1 ; 	sed -i '/jetty-logging/d' etc/jetty.conf ; 	mkdir -p "$JETTY_BASE" ; 	cd $JETTY_BASE ; 	case "$JETTY_VERSION" in 		"12."*) START_MODULES="server,http,ext,resources" ;; 		*) START_MODULES="server,http,deploy,ext,resources,jsp,jstl,websocket" ;; 	esac ; 	java -jar "$JETTY_HOME/start.jar" --create-startd 		--add-to-start="$START_MODULES" ; 	groupadd -r jetty && useradd -r -g jetty jetty ; 	chown -R jetty:jetty "$JETTY_HOME" "$JETTY_BASE" "$TMPDIR" ; 	usermod -d $JETTY_BASE jetty ; 	rm -rf /tmp/hsperfdata_root ; 	rm -fr $JETTY_HOME/jetty.tar.gz* ; 	rm -fr /jetty-keys $GNUPGHOME ; 	rm -rf /tmp/hsperfdata_root ; 	java -jar "$JETTY_HOME/start.jar" --list-config ; # buildkit
# Wed, 08 Jul 2026 22:13:14 GMT
WORKDIR /var/lib/jetty
# Wed, 08 Jul 2026 22:13:14 GMT
COPY docker-entrypoint.sh generate-jetty-start.sh / # buildkit
# Wed, 08 Jul 2026 22:13:14 GMT
USER jetty
# Wed, 08 Jul 2026 22:13:14 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 08 Jul 2026 22:13:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Jul 2026 22:13:14 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42526636ebe8a5fcc23b56c43794d229a6c84a67a381c9210bb4804cf83ca411`  
		Last Modified: Wed, 08 Jul 2026 21:12:02 GMT  
		Size: 156.0 MB (155984937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc075f5087d8b20f8ae1499253db6fcf06d2d833035f19955328e4402652b5f7`  
		Last Modified: Wed, 08 Jul 2026 22:13:33 GMT  
		Size: 79.1 MB (79102598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1843e1304f599886f889e7976e2f1eec999f52430a2a631b66786aeb62b09dd`  
		Last Modified: Wed, 08 Jul 2026 22:13:31 GMT  
		Size: 1.8 KB (1844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `jetty:12-jdk17-al2023-amazoncorretto` - unknown; unknown

```console
$ docker pull jetty@sha256:cca51adffaf0a13b6101373b885bb8ff310328f57dcb85fc21c9533e8da3b59a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b02b67a2095572f3aa21ae4c714f6d471c4d3343a4edb03597da7db04cb377a`

```dockerfile
```

-	Layers:
	-	`sha256:7bf808c3fec554ce4538d03b86f6e03528da6a226ac81965ab60f3f19c02cab3`  
		Last Modified: Wed, 08 Jul 2026 22:13:32 GMT  
		Size: 7.4 MB (7438902 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1911c1193ffc40b682dc65c81d4d06fd46483975a4702268386a939aa937ea91`  
		Last Modified: Wed, 08 Jul 2026 22:13:31 GMT  
		Size: 17.5 KB (17532 bytes)  
		MIME: application/vnd.in-toto+json
