## `maven:3-amazoncorretto-21`

```console
$ docker pull maven@sha256:56c7800dada0a02e9cd8207fed40aa85bb76d0c118744691bba42ab103dc91e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21` - linux; amd64

```console
$ docker pull maven@sha256:0c9233905293564c4af1ed45496aeba15b2abac425425cd8b55245e8dd4814f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.2 MB (391214871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c205d8fc127942a7de6fddc6e58dd2268c6057aaef063c897cec5439a77f5d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:43 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:22:43 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:43 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Sat, 26 Sep 2026 00:23:10 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 26 Sep 2026 00:23:12 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Sat, 26 Sep 2026 00:23:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:23:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:23:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:23:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:23:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:23:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:23:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:23:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:23:12 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:23:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:23:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:23:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c3afdc4eda7856dc6ecfd297cc96f1039477171bba7a7a4a25acbe38a4d74a`  
		Last Modified: Thu, 17 Sep 2026 22:23:05 GMT  
		Size: 170.4 MB (170436407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6505ff60bc7e519dd7d895cd1da83fe5ef07cff389c5bc4d00e0a9475eff202`  
		Last Modified: Sat, 26 Sep 2026 00:23:31 GMT  
		Size: 143.3 MB (143306254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e984ee6e5c4458aa27925aaa21ba9f72576cba304a70390e270cd45ac14c43ec`  
		Last Modified: Sat, 26 Sep 2026 00:23:29 GMT  
		Size: 13.5 MB (13524943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1654d63394c18dd058048185cd54790b67e2794e5729120e51e916b5ac99ffb`  
		Last Modified: Sat, 26 Sep 2026 00:23:29 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bf22acf24cc83e29d720f307a0e32b69b63f671730d5a8a5b4c5312cf0933e`  
		Last Modified: Sat, 26 Sep 2026 00:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710cdcea7f6eb48687c7cfb524d28841fbabebc2ee35242edb9ed08ff1523a48`  
		Last Modified: Sat, 26 Sep 2026 00:23:29 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:ef529a608710b287849a1bc7871a223c00e06a65dfe8725af6b22e5740485d53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6266590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1622483ef0b2dce205ea8db6dd6e845a2bfad2a7d59007db80de3a01096ddb1b`

```dockerfile
```

-	Layers:
	-	`sha256:ac7e305338ca1181eb93b78752eddff5be9300d0213d6ede804d2258627bad1d`  
		Last Modified: Sat, 26 Sep 2026 00:23:28 GMT  
		Size: 6.2 MB (6249295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdd94a8b6e4026576167c88d2b4f63cca93d24221d87d482829bfc1a5ad1f2bb`  
		Last Modified: Sat, 26 Sep 2026 00:23:28 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:70991b8a07e2f8ca0a18c19e91550db68c9cc1cb434cb0a7fe71ad4376bff3fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.9 MB (386915255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2dadb95a2e7e122fbadf81ef306ab30ffe35fe4c6be60bcb016219efdb8a975`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:57 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:46:57 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:57 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:57 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Sat, 26 Sep 2026 00:18:55 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 26 Sep 2026 00:18:57 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Sat, 26 Sep 2026 00:18:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:18:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:18:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:18:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:18:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:18:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:18:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:18:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:18:57 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:18:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:18:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:18:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1368bd2c0308c8749e0e929bfb7617366275d180131c4480d5ae82ab72fdb6`  
		Last Modified: Thu, 17 Sep 2026 22:47:21 GMT  
		Size: 168.7 MB (168685849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e832bc46c5534c8adc24e80c3c0d808315ced226e03de3fe6749f409d22d669c`  
		Last Modified: Sat, 26 Sep 2026 00:19:19 GMT  
		Size: 141.6 MB (141645831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0864e2d6ec3a80052529915f4a2cca1adaf2d7c9b3a2a22e8b67450c6d7c33`  
		Last Modified: Sat, 26 Sep 2026 00:19:16 GMT  
		Size: 13.8 MB (13770023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f158528b6252401b0fcc662010d7e733af8cbc89eee0f1dda6cfb4a4472318`  
		Last Modified: Sat, 26 Sep 2026 00:19:16 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94775c72b426a9c10dcfd0f529423c3efca276cff541690a9d238ba57de01c66`  
		Last Modified: Sat, 26 Sep 2026 00:19:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9050d17ba55004bed9aa195a6a3c3364249a6477f293896899c774d471b88af2`  
		Last Modified: Sat, 26 Sep 2026 00:19:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:58c95a0b8d3809e3b90dd4058cbe3f04cb223b307373bb95c6abda6b8479d0ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6265743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91107001bfdf2540165494bfbc0a496bd076dc48ca53391ad538681248c210c6`

```dockerfile
```

-	Layers:
	-	`sha256:5b029093c46be0f2fd897459a8d9bf6505dfe8f8da6973d577b8e02eb1dff952`  
		Last Modified: Sat, 26 Sep 2026 00:19:16 GMT  
		Size: 6.2 MB (6248265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17e3042d06328ea3696cb7f6ce0ed8b1165da595f96aa81ecfe559166925edba`  
		Last Modified: Sat, 26 Sep 2026 00:19:15 GMT  
		Size: 17.5 KB (17478 bytes)  
		MIME: application/vnd.in-toto+json
