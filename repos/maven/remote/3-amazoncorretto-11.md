## `maven:3-amazoncorretto-11`

```console
$ docker pull maven@sha256:3160cb034b2ba4b5d2d3ae4abb914500c001be6d76db2e65ec4bddb5c5518500
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11` - linux; amd64

```console
$ docker pull maven@sha256:3f1bffef16f14cd454535e32446f923b8cf1bfcbe24cc5457988550264888471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.6 MB (386601996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc46ce6b710f19aa7b5977a1cfd12e56900de58c03ca18105346968dd397f44`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:50 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:50 GMT
ARG resource_version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:50 GMT
# ARGS: version=11.0.33.0.9-1 resource_version=11.0.33.0.9
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:07:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 27 Oct 2026 02:18:01 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 27 Oct 2026 02:18:03 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 27 Oct 2026 02:18:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:18:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:18:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:18:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:18:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:18:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:18:03 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:18:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:18:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:18:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cdf13232737ea23018f769b58a91e67ebcac774b5a3e68b96168c430205496`  
		Last Modified: Fri, 23 Oct 2026 18:08:12 GMT  
		Size: 153.5 MB (153540316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8468975df7bae5cbdffc654fc0dca4d4f5ad49d36d8ad7c8a655d445769cc1c2`  
		Last Modified: Tue, 27 Oct 2026 02:18:24 GMT  
		Size: 154.8 MB (154824532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4672548ae2778f17d43c41b4c3443d2df1049e731ae418067539feba7347431f`  
		Last Modified: Tue, 27 Oct 2026 02:18:22 GMT  
		Size: 13.5 MB (13528204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771115e0e3406f3e9e9705a4fc19f05bdf1f78148c66ee20a7f1bdc8a6e0773a`  
		Last Modified: Tue, 27 Oct 2026 02:18:21 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba88ba5485e2e23093df4aa49337d8b33f7a67b524c4cef3319642d7ea4f3cf2`  
		Last Modified: Tue, 27 Oct 2026 02:18:21 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f594886dd06866c502df65ac10d84baad429833d76723dc1ec7504de5f1bb8e`  
		Last Modified: Tue, 27 Oct 2026 02:18:22 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11` - unknown; unknown

```console
$ docker pull maven@sha256:03776d59c5e17b0c0af1614fd0fffd2a6b65153f5aa5b3ca4dbb5707dfefd881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6293922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81eb218652e6ae334c80398b43deab0b904571a320c88665c76d11df5a91cc76`

```dockerfile
```

-	Layers:
	-	`sha256:f13a41c26b022d226e9a84cb7fac4ea572c7f8a95e9827ac2edd54ba1705ee43`  
		Last Modified: Tue, 27 Oct 2026 02:18:21 GMT  
		Size: 6.3 MB (6276619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04c8a18f39f64d5f3bf65a00f3ffa41301645ff89b9ebafd6106d6be8fb7ffe6`  
		Last Modified: Tue, 27 Oct 2026 02:18:21 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:cf55e7998c4db110774c34625c374384119cf6e05821cb340493c006f7ef99b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382415637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3dda6998257563ae2b754457a201765b4b4c8764671fa3654d50d7105fa0d47`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:51 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:51 GMT
ARG resource_version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:51 GMT
# ARGS: version=11.0.33.0.9-1 resource_version=11.0.33.0.9
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:07:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 27 Oct 2026 02:15:40 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 27 Oct 2026 02:15:42 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 27 Oct 2026 02:15:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:15:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:15:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:15:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:15:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:15:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:15:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:15:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:15:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:15:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:15:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:15:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061cac72722a6f12ac230f39d106f99cd2e7ea87aeee474d0e7621a017063d3b`  
		Last Modified: Fri, 23 Oct 2026 18:08:13 GMT  
		Size: 152.1 MB (152123166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c995bade398eccd61e893792d162b3b74e01fd6e9a6772eb87185d5cc463478`  
		Last Modified: Tue, 27 Oct 2026 02:16:04 GMT  
		Size: 152.9 MB (152931777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f1b345f484befe2c63a0dd9a97da195b9d410a9d60ca6dde98314f1e18b7e0`  
		Last Modified: Tue, 27 Oct 2026 02:16:01 GMT  
		Size: 13.8 MB (13771350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6b7ceb8c5522cab77c171ed10d36229db1653381861c4f014ad4197ea0c6af`  
		Last Modified: Tue, 27 Oct 2026 02:16:01 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2f50fc5572e90c17cc5a7d4fd7e67877830f0fbc06b560f10f66a2a4b4fcb0`  
		Last Modified: Tue, 27 Oct 2026 02:16:00 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0301c8b98046fa02725410c6cd48152cb830aec999212d2c836ccc39d846c37`  
		Last Modified: Tue, 27 Oct 2026 02:16:02 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11` - unknown; unknown

```console
$ docker pull maven@sha256:e601fd6878ef362003c4a7d1c8bc46e6ddd05ae8b5f8d7a3ea6c758385f8414f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6293915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01a70785773390c1acdad94ce86b721ba2e469878304b0e52b481757699e0f1b`

```dockerfile
```

-	Layers:
	-	`sha256:b89788170050cf908f384d02792872fa15d74405c2527d5f4bc4ea9a60992a36`  
		Last Modified: Tue, 27 Oct 2026 02:16:01 GMT  
		Size: 6.3 MB (6276429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d9f81c56e6088152459f1eaf547c5d1f8717a2bd134891ab8a71b2a904f86d`  
		Last Modified: Tue, 27 Oct 2026 02:16:00 GMT  
		Size: 17.5 KB (17486 bytes)  
		MIME: application/vnd.in-toto+json
