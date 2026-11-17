## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:acc191eb1b0b8cc3fe9b88ae662a0ce7e15f6dd09e4b998a7b9c1a16e517ceaa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:93fd72186dd9c932122b866a3796147dae6e5e00acea6e2870eeb0a23a6d86d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.0 MB (414017404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4840fe23288cb9252b6ac342d810f7e7a0f32ea529ae7333880763f533db28`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:58 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:58 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:58 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:58 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:58 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 17 Nov 2026 00:11:30 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 17 Nov 2026 00:11:32 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 17 Nov 2026 00:11:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 00:11:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 00:11:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 00:11:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 00:11:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 00:11:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 00:11:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 00:11:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 00:11:32 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 00:11:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 00:11:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 00:11:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc4c67523f8432bcce75484df2c30a8c327080dd82f76f95d82bdd0c740a8430`  
		Last Modified: Mon, 16 Nov 2026 23:11:22 GMT  
		Size: 170.7 MB (170743030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4926252e6593cefcd1b7122637e75b83c8775e275b02249854f29c1c830faad`  
		Last Modified: Tue, 17 Nov 2026 00:11:54 GMT  
		Size: 165.1 MB (165119750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a792c4d0d0a8e28018a035abd291900c52682d47dc76c7bb40aac9f6172fc2c3`  
		Last Modified: Tue, 17 Nov 2026 00:11:51 GMT  
		Size: 13.5 MB (13525304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:033ecb75afe87f8848f7c1320e2ee21f23b88487cd775e92a0affaa6638f1fa8`  
		Last Modified: Tue, 17 Nov 2026 00:11:51 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d94d36abcc30141243388ee7f1e48e9c35019a5ba610bdc03bfbee54f28c85f`  
		Last Modified: Tue, 17 Nov 2026 00:11:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415e46100cba2e85f3db6fe0b9f68b35488a7235339e3ad9b27dde9bb343f1bc`  
		Last Modified: Tue, 17 Nov 2026 00:11:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:bfc90cd340d885c47c00fc2c35742b81b5681b390edb1eaec482bdde57ea83f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6272337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e7ad23ddbf61705551e1148ce2c5b823d7dc64d29aac6c26a2560ddbc092da`

```dockerfile
```

-	Layers:
	-	`sha256:82870aea21df8fef0e4dcfb57c4605d8c14c38f0564c80afa557497409d8509d`  
		Last Modified: Tue, 17 Nov 2026 00:11:50 GMT  
		Size: 6.3 MB (6255034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8282cdbad04aba9a1198b884602822d1f9b98ad12ab743dcd46a28375dd115c1`  
		Last Modified: Tue, 17 Nov 2026 00:11:50 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:2b75903bb5b8ffedfba700b8b3edd08a141a7f6599ff9cc79f5f3d8e7b67c95a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.3 MB (409271524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df442151c15bb8d7692741a38eeff748873f1b27abd4592c9cfea1b7e3f6f96`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:46 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:46 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:46 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:46 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:46 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 17 Nov 2026 00:11:49 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 17 Nov 2026 00:11:51 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 17 Nov 2026 00:11:51 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 00:11:51 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 00:11:51 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 00:11:51 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 00:11:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 00:11:51 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 00:11:51 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 00:11:51 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 00:11:51 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 00:11:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 00:11:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 00:11:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0092060c684d3bb3c08d3629c24e7718d1d4b526405b64cce47c3aceb0695c3`  
		Last Modified: Mon, 16 Nov 2026 23:11:10 GMT  
		Size: 169.0 MB (169018937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cae4829cafed92dc169b4c6375113758cc4a1e685e02f79a2a10fe7bd5057ac`  
		Last Modified: Tue, 17 Nov 2026 00:12:13 GMT  
		Size: 163.0 MB (162967443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017d976c414d0b9034157dccd7616faf564f4c30dea3b155017615ea598824b5`  
		Last Modified: Tue, 17 Nov 2026 00:12:10 GMT  
		Size: 13.8 MB (13772036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce18d7a2f18c6c7745fc95a1303fc5d912c5f6df0ef7cffcb7cfdb7a89ef531`  
		Last Modified: Tue, 17 Nov 2026 00:12:10 GMT  
		Size: 10.1 MB (10059022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e75f22859696fa566e0b31480acaa421734a51e9c9236476f66c81fd7e3a8b`  
		Last Modified: Tue, 17 Nov 2026 00:12:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1161dfeb7c0705d1133058886fb1ed08eb82b4959415f9345d590faa4035c956`  
		Last Modified: Tue, 17 Nov 2026 00:12:10 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:b69542f38c6494fe22ee5687b93d37b5bbffd09d60db6f64f4d5bc4086253a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151475d6835a7a5e81b5c9f3009415334a2ccc15017039e12a051d890e5598f1`

```dockerfile
```

-	Layers:
	-	`sha256:081ceab84bebb1ad6d208c0b0e64996bc6aaeb08b5a41a9837a392ddaa551a6b`  
		Last Modified: Tue, 17 Nov 2026 00:12:10 GMT  
		Size: 6.3 MB (6254004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12d5e594d3cc1638d78a8952c8064bf72942396c10cfd10b912be3134ccb1864`  
		Last Modified: Tue, 17 Nov 2026 00:12:09 GMT  
		Size: 17.5 KB (17486 bytes)  
		MIME: application/vnd.in-toto+json
