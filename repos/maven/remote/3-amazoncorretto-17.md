## `maven:3-amazoncorretto-17`

```console
$ docker pull maven@sha256:ef6f665cbbfa3540e3cc433eb799b29eb6e9a36f1f556f75bf567d636438ce16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17` - linux; amd64

```console
$ docker pull maven@sha256:4b25d4c89318cd244c0ded193ef534cae582266064a6394b50f5e66d0b462e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.2 MB (396243281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cbe97186e0e46466d8c8d86fb238844425c29857e0047b75ce31188f0daf141`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:02 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:11:02 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:11:02 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:02 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 02 Nov 2026 20:45:55 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 02 Nov 2026 20:45:57 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:45:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:45:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:45:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:45:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:45:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:45:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:45:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:45:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:45:57 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:45:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:45:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:45:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f4df9cd25431f7f7e688d1d91119f0cc4008a6fcc2917c42c308df850fbd13`  
		Last Modified: Mon, 02 Nov 2026 20:11:22 GMT  
		Size: 157.4 MB (157424747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f999251b140cd0cffe737d7e5347e4ef46f949e965eb37c8041209deb0d9e2f`  
		Last Modified: Mon, 02 Nov 2026 20:46:16 GMT  
		Size: 160.7 MB (160654948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7368ba158ac5ddec43ac67688509bb134944b41473b5427dd2bf5664a2bca7d8`  
		Last Modified: Mon, 02 Nov 2026 20:46:13 GMT  
		Size: 13.5 MB (13533946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6e22868275e719237f4f5888a06c4c54bd36c3f4e3782ca9eeac5d59614d7b`  
		Last Modified: Mon, 02 Nov 2026 20:46:13 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf93c73ade22d863b42571bb26c38de5c3b85937def32c4702af0063ec34287`  
		Last Modified: Mon, 02 Nov 2026 20:46:12 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319acf6bc9c620d42eab909933c3d47aeed9f5a77a5ece671660e4ffc434338d`  
		Last Modified: Mon, 02 Nov 2026 20:46:14 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:faf49c1b8b855ac41ef02599480da42b8abcdfaf8c4cfee2b3c9c5a57b712c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f180fef465d0ed76ca4251a1ee3a67799dee598d00e2f589b69c78dea9674c6a`

```dockerfile
```

-	Layers:
	-	`sha256:c6563da24b4da4e073abec1c31cd4224f1cc8aebf5100667dc3cd824fbd0b8e1`  
		Last Modified: Mon, 02 Nov 2026 20:46:13 GMT  
		Size: 6.3 MB (6252598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac163745ed69a6a839d85960502facb1a2ca2f2a39530fb22e2230822674aec0`  
		Last Modified: Mon, 02 Nov 2026 20:46:12 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:6c0fbfcc6d94043f3f52ad1f3256c9d34da475a470091925d62c8714e2e2809e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392303672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b200d21873691dcffcf6eca0725d4e0acf787671ef75cd7a20e84996dc7ef579`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:19 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:19 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:19 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:10:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:19 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Mon, 02 Nov 2026 20:45:58 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 02 Nov 2026 20:46:00 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:46:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:46:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:46:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:46:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:46:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:46:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:46:00 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:46:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:46:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:46:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d2be6781a9c3e02dd7a813a63a217383fd661de4342d350e94f23698e53c86`  
		Last Modified: Mon, 02 Nov 2026 20:10:42 GMT  
		Size: 156.3 MB (156294835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd038f27620d2d603179fe6fcdd2d63173a0b30c1c15ebbe1d6cd5f7eb2938f9`  
		Last Modified: Mon, 02 Nov 2026 20:46:22 GMT  
		Size: 158.7 MB (158720155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988501be302adf521c62e1da5357f4bec71a40fe96f3a9c5ac9eaf00c70aeec4`  
		Last Modified: Mon, 02 Nov 2026 20:46:19 GMT  
		Size: 13.8 MB (13772539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904c628797507e8d699ea6876e5ab15484ad3a7ddcc06777ae3c796da6288a9f`  
		Last Modified: Mon, 02 Nov 2026 20:46:19 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ae9c431e2f5ac23f5eb75f1b0581b8a06e46d86069bdb5e51705f635b5611b`  
		Last Modified: Mon, 02 Nov 2026 20:46:19 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ddf5496dbf88dc1223136c500600c2e7ae9b0c0e1d5645f186ef7e17c00173`  
		Last Modified: Mon, 02 Nov 2026 20:46:19 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:4cc6f31bd26d67eec4c05f3e0211e7a0da23648f6852f4f8eacaa796a6012c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73a7cbcf59badfb35c3883a5ba967e841d9c449209ebdbe3db8957693ae62cf`

```dockerfile
```

-	Layers:
	-	`sha256:f45dd156fcd7d66528e91b6418c5fdb0338b546bdf3eb236cc6fe2066f2433f5`  
		Last Modified: Mon, 02 Nov 2026 20:46:19 GMT  
		Size: 6.3 MB (6251565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07dd1ec6aad14b1e84f1ba1ee9c2ded47b39c39403c4503d0223a30ec9d99c52`  
		Last Modified: Mon, 02 Nov 2026 20:46:18 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
