## `maven:3-amazoncorretto-21`

```console
$ docker pull maven@sha256:0eb6f17ecd408ea43eb51b7d2b158e5b9467b90504e2801e2e02bb9f454ebe12
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21` - linux; amd64

```console
$ docker pull maven@sha256:e8d9b8a8ec66f6c48ee7df7126236669e426d5f01b5c4ea9436a50dda736f740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.3 MB (415294274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a81716d05965fd78ca3eaf434b20903ce651444e3df3c817fff2cda4c8720a5f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:45 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:34:45 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:34:45 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:45 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:45 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 18 Nov 2026 22:01:51 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 18 Nov 2026 22:01:53 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 22:01:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 22:01:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 22:01:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 22:01:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 22:01:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 22:01:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 22:01:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 22:01:54 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 22:01:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 22:01:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 22:01:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 22:01:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3b37b567ba37447551098e207cac872bc7a58e4f0b180820e734a23f5b3200`  
		Last Modified: Wed, 18 Nov 2026 21:35:08 GMT  
		Size: 170.7 MB (170743289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6423926ef8263218632867747a1002e7ccb68be50ae5a7ed032644045a3ae9ec`  
		Last Modified: Wed, 18 Nov 2026 22:02:15 GMT  
		Size: 166.4 MB (166396737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7449030fbf00fb673a11c872c646cf6c49438f1bc44e06c5bf6b81c858fd7e79`  
		Last Modified: Wed, 18 Nov 2026 22:02:11 GMT  
		Size: 13.5 MB (13525138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132fe380130bd80557817efbf96d941798237e07b3f3778de2d58b2101a11215`  
		Last Modified: Wed, 18 Nov 2026 22:02:10 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246899f934713c5f708abf8d5a5faa68861b33396784fbe6df7f6225ab28f99c`  
		Last Modified: Wed, 18 Nov 2026 22:02:09 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7529821c00fc7a50098b20cf3c30fc579b02f718d0a6518d309a261ae59b00f5`  
		Last Modified: Wed, 18 Nov 2026 22:02:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:db70b06b04f61f4496e0409a0a317515cb445e709e01e2282799f818eb7e129d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6272331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b59ff90b3d712e7c3080fc14f3ab3943ff367d824c79381b18d4160a5a2314`

```dockerfile
```

-	Layers:
	-	`sha256:09f287bc328dc2f71d4ab43c9d694c3c30e37682aff56804a197ae5d0fbc027e`  
		Last Modified: Wed, 18 Nov 2026 22:02:11 GMT  
		Size: 6.3 MB (6255028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74d8bf9a64a1d3342acc836c0f18ce9bd054aae007491132c49624dcf28af02c`  
		Last Modified: Wed, 18 Nov 2026 22:02:10 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:db9cb56902b9863abea0e3cb0c21a8ecac69e75753aeef39daaba8f9a5680146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410745568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7321489063ba84b82f0940598ef73e446c8c5dae37006e563ecdea84c9ca93b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:24 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:35:24 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:35:24 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:24 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:24 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 18 Nov 2026 21:55:52 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 18 Nov 2026 21:55:54 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 21:55:54 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 21:55:54 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 21:55:54 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 21:55:54 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 21:55:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 21:55:54 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 21:55:54 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:55:54 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 21:55:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 21:55:54 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 21:55:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 21:55:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f300ae6bc19c11a6f167b2d270c42dacc545845a1bd945c60ab38bb4c87ea4ad`  
		Last Modified: Wed, 18 Nov 2026 21:35:47 GMT  
		Size: 169.0 MB (169034352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a97e86505ad44eebe5c776a3ab3ba4ae3e3c59d6d2327f4f8ae13cb87197cb9`  
		Last Modified: Wed, 18 Nov 2026 21:56:16 GMT  
		Size: 164.4 MB (164425737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e590031e007320f98f7f6ef656fabca20e03f68ccda66937f5f79d6b3ed8d4`  
		Last Modified: Wed, 18 Nov 2026 21:56:13 GMT  
		Size: 13.8 MB (13771912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e69df511f374da6a099e06845b57be30a28fda1cfe77c636f62b1ae225ec5c`  
		Last Modified: Wed, 18 Nov 2026 21:56:13 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2e4088c81ab7d33c60f5a16d1acddfac1cd5c7ea0beee58e6f6e67a1e64b39`  
		Last Modified: Wed, 18 Nov 2026 21:56:12 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c55289416283351fb801fd603b6f20ef9efa6b46670a2a8e50b6fdbbf990a11`  
		Last Modified: Wed, 18 Nov 2026 21:56:14 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:3918e590af3f7ee8fc531c7de4cd9de9d80ba02c030cfe392c6acd49f352a1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59fa27bd751c0c2d1a172a33e462183638c4d550691151f3cf217129f8a3226`

```dockerfile
```

-	Layers:
	-	`sha256:f0b33183dd484b1b49d116afa0bb97f7169a4c52236bc9c18228e146168426ac`  
		Last Modified: Wed, 18 Nov 2026 21:56:13 GMT  
		Size: 6.3 MB (6253998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12234e073605f73ad2f94d3808d2a5e301f78838a137e046ffc714671e65587c`  
		Last Modified: Wed, 18 Nov 2026 21:56:12 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
