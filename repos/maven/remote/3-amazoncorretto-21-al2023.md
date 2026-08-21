## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:81de222c1f34ac467bf968e1800b73fb41e714427c0212ba004296ea972e808a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:f6a1f460979b32db4739c445b5cf9834c7dd1ea52e419131f577aeb5a65590d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.3 MB (388262721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aab617362cd1b7432796b92d6001937dfc249cba08b0d9f52e330e24bacb919`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:53 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:20:53 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:53 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:53 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 21 Aug 2026 20:39:37 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 21 Aug 2026 20:39:39 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 21 Aug 2026 20:39:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 21 Aug 2026 20:39:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 20:39:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 20:39:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 21 Aug 2026 20:39:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Aug 2026 20:39:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 21 Aug 2026 20:39:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:39:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 21 Aug 2026 20:39:39 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Aug 2026 20:39:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Aug 2026 20:39:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Aug 2026 20:39:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7443020b403141e1f17fca248791abf7bce88cad1fbf13bf52b35819044cb757`  
		Last Modified: Thu, 20 Aug 2026 17:21:14 GMT  
		Size: 170.4 MB (170436187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1457c1cea4177f8fbd606eefb8a00ff2232371c807ac3db32d98b195a7810ade`  
		Last Modified: Fri, 21 Aug 2026 20:40:00 GMT  
		Size: 140.4 MB (140357748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a2d9582e312f095c719ba9ee614e08308d2d0c0c4a65fd44b6f0c2712889e6`  
		Last Modified: Fri, 21 Aug 2026 20:39:57 GMT  
		Size: 13.5 MB (13523955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e20a0b39fb48cfb9383008645bb2e767486543b89924a9ca0e2625b2354c105`  
		Last Modified: Fri, 21 Aug 2026 20:39:57 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766e92ce38af977580e9bc1a5e9425d6a60b1269cb0960f7197a476a382cbf4a`  
		Last Modified: Fri, 21 Aug 2026 20:39:56 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:355bc8da977bde10e858842809c096f1b43fea63a7fa7244953e1cf3a0af4005`  
		Last Modified: Fri, 21 Aug 2026 20:39:57 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:1985874cad9a411e9ab51a94d60b19f832dde27b471836844fec420ccb191dba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6266590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331dcb1e8e82688f3bd6c9cb387abf739001dcf58e8b23dcd6335c53b9d0cb4b`

```dockerfile
```

-	Layers:
	-	`sha256:1b37a8fbb51c9750cf529e5c90a068676d85852f687a26925ebc0214645b5489`  
		Last Modified: Fri, 21 Aug 2026 20:39:56 GMT  
		Size: 6.2 MB (6249295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f09553869ad07613293e187b3c13c179b65ef82e8a442689bf2c72a6d1d315d`  
		Last Modified: Fri, 21 Aug 2026 20:39:56 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c1123fb3e1818ebb42836859e70be2494237284385f0b2777557b47deff1b054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.9 MB (383897636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b362323483f7239063548fe6dfbdf9bd1eb54499badf861497d30450b12e6c34`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:58 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:17:58 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:58 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:58 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 21 Aug 2026 19:24:52 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 21 Aug 2026 19:24:54 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 21 Aug 2026 19:24:54 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 21 Aug 2026 19:24:54 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:24:54 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:24:54 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 21 Aug 2026 19:24:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Aug 2026 19:24:54 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 21 Aug 2026 19:24:54 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 21 Aug 2026 19:24:54 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 21 Aug 2026 19:24:54 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Aug 2026 19:24:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Aug 2026 19:24:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Aug 2026 19:24:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a82bf7ad78016387234a023b428081248669526a23fc20057cf2e4b0c105b6f`  
		Last Modified: Thu, 20 Aug 2026 17:18:21 GMT  
		Size: 168.7 MB (168685777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871458d9241c23c26c0bc5e053dbc6459f3be10131f5f2f375fb3925f4102d0c`  
		Last Modified: Fri, 21 Aug 2026 19:25:18 GMT  
		Size: 138.6 MB (138631296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e56e6d43c96dabd7ba0a9139cf8de00be656cb101bad07f3a0df8cfb5072267`  
		Last Modified: Fri, 21 Aug 2026 19:25:14 GMT  
		Size: 13.8 MB (13768700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc49d140d2400d3410ae2f6e79b397176ad9ee545256dcd92fc07f9a65a3276`  
		Last Modified: Fri, 21 Aug 2026 19:25:14 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a25e9d6267198e44045fb721265981591f7b432bfd2f7832fcae48eef8fc976`  
		Last Modified: Fri, 21 Aug 2026 19:25:14 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ac8232f0940f66c32e110e43f0387c78bbe84f9c609925d7b8f2b9083a168e`  
		Last Modified: Fri, 21 Aug 2026 19:25:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:96cfd64db1c857492f818c45562b78d9cdb0c500b79dbd7ce38e8c581815087c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6265744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c14d6f0a45791b9f1ff9e20f9a51a36560c0d1f52a0c575be5685abfadac62`

```dockerfile
```

-	Layers:
	-	`sha256:bbb65057544c71b1ba3e39c893166a52962e56311f8c07e332ce2dd7e180fdc9`  
		Last Modified: Fri, 21 Aug 2026 19:25:14 GMT  
		Size: 6.2 MB (6248265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:845d609bc5ad408fc106da8437d7870d9936c8ea59b7a63bbdcb543675bb101a`  
		Last Modified: Fri, 21 Aug 2026 19:25:14 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
