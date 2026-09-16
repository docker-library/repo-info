## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:e98293b3e59b4d77d8a5986883128c0242eb5cfc8dad13c8b1f0460653eaae96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:32505a8d6c59c71f280d9f37993b3a7f48c27aaf353d94608996c66d2e6fc8d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.2 MB (391215000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aeddef40bfedbc36d21391966c829c6df1769868aa5e13977b155c349a911e2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:28 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:28 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:28 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:28 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 16 Sep 2026 05:22:31 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 16 Sep 2026 05:22:33 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 16 Sep 2026 05:22:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:22:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:22:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:22:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:22:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:22:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:22:33 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:22:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:22:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:22:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:22:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:22:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aabe83a1b6f319f59d1ab8b8de8ae739cd285e3baf9391f1ec0d1cb96d5075c`  
		Last Modified: Tue, 15 Sep 2026 00:12:50 GMT  
		Size: 170.4 MB (170436461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0025cc9ab32db632339b39f222b86441b6905bc4777777f19b642145378eea`  
		Last Modified: Wed, 16 Sep 2026 05:22:53 GMT  
		Size: 143.3 MB (143306497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305327f568c78f4dd2d07902ee981bdac7d75d4c6088da61416765a84f313fab`  
		Last Modified: Wed, 16 Sep 2026 05:22:50 GMT  
		Size: 13.5 MB (13524773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca8eecc3420a1db89ac7cf8e6afda72aefc1aad2b9c5f398752c3d749f8aafa`  
		Last Modified: Wed, 16 Sep 2026 05:22:50 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a2734ff580f8a0fa39696a85a399ba75ec28ebecbf7bd82183449db4519f06`  
		Last Modified: Wed, 16 Sep 2026 05:22:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de1d032aefb555e2ea768f06312c4a8c569664bfbffad98f9f93766f61e9a23`  
		Last Modified: Wed, 16 Sep 2026 05:22:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:61feb7ca08fc2780274d38ee3a071b38680f876cd702f71a2a7bddf90332b0ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6266590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c304ecdec54666d73706bf6c8fa13ecb69b6e4dfba38a5542eefbb4a8fec3282`

```dockerfile
```

-	Layers:
	-	`sha256:49150374269601043c60fe72308579eaaabb746e264f7a38424ce5a219787913`  
		Last Modified: Wed, 16 Sep 2026 05:22:49 GMT  
		Size: 6.2 MB (6249295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c604d89c688545d9422092cdc07163a698092557c06f71795b9833bd7ceeeb2c`  
		Last Modified: Wed, 16 Sep 2026 05:22:49 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:404acd4db5be3f7cdb4885a90a28a024f5f9b3dd0726837e025f16b45df3496c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.9 MB (386915543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84438f83f29beddef1271d7a9d9bdd218a8345edabf4806de2b01d2ae45e723d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:05 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:05 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:05 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:05 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 16 Sep 2026 05:22:14 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 16 Sep 2026 05:22:16 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 16 Sep 2026 05:22:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:22:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:22:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:22:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:22:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:22:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:22:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:22:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:22:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:22:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:22:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:22:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5fb1f4dba5c82b104bac792d11a75a29127e69aa846bbd18b2ca5f728f655e`  
		Last Modified: Tue, 15 Sep 2026 00:12:28 GMT  
		Size: 168.7 MB (168685717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ed2428f439b726cfa6cd70dfcd9d5fa8a850061c0a0c5c741cb11869fa71bf`  
		Last Modified: Wed, 16 Sep 2026 05:22:37 GMT  
		Size: 141.6 MB (141646203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891fc4ffefb42bcf4d43966ff579f7b5e185c11da0673f8fe3d1749f427e9f73`  
		Last Modified: Wed, 16 Sep 2026 05:22:35 GMT  
		Size: 13.8 MB (13770058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0475fa11ae652a2ce19df4af504858b19e508192539b0e86100a40b8886004ef`  
		Last Modified: Wed, 16 Sep 2026 05:22:34 GMT  
		Size: 9.4 MB (9359980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088a2a3443417849469ea947955192ea2a4fe21280af8fc486d91ce185a88de8`  
		Last Modified: Wed, 16 Sep 2026 05:22:34 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115bed5f32d18ca0809104d83e1c7d7e1383c2ab8296eac163de352a336a2518`  
		Last Modified: Wed, 16 Sep 2026 05:22:35 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:49c924cec83b9cfbf15c26fba0022ae6610dbc4a67478477be3b1ed29eb43586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6265744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cda23a8f61e8623c8b29c272e548aedef0d6fcb648cf976857c0727011988a4`

```dockerfile
```

-	Layers:
	-	`sha256:26148a07117063bed0a70ad08108898bc700b058afdea91d79d25cb70ec251b5`  
		Last Modified: Wed, 16 Sep 2026 05:22:34 GMT  
		Size: 6.2 MB (6248265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b42b833d5dad5b54c5461a1e15af7427ef5461c0288564582c7e1d18ac46f15`  
		Last Modified: Wed, 16 Sep 2026 05:22:34 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
