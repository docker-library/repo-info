## `maven:3-amazoncorretto-11-al2023`

```console
$ docker pull maven@sha256:b92d053574f4ad46d3d63736703c2843a660edde3c8a0ddb6d508f45212478c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-al2023` - linux; amd64

```console
$ docker pull maven@sha256:a20750db186ab92080df7cdddc042967c1e2963836d0b88d30a818c666daa891
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.4 MB (355412131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c46446d42695460b08270d238260b36f20c541a8c6afd29b356777d20de2b27`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:34 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:34 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:03:18 GMT
ARG version=11.0.31.11-1
# Mon, 22 Jun 2026 18:03:18 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 22 Jun 2026 18:03:18 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:03:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 02 Jul 2026 06:44:16 GMT
RUN yum install -y tar which gzip findutils # TODO remove # buildkit
# Thu, 02 Jul 2026 06:44:17 GMT
RUN yum install -y openssh-clients # buildkit
# Thu, 02 Jul 2026 06:44:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:44:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:44:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:44:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:44:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:44:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:44:18 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:44:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:44:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:44:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:43a4ccfcda545d0357b8595db01c68db022db4283c68d08e06427e6c91ac7063`  
		Last Modified: Sat, 13 Jun 2026 02:07:52 GMT  
		Size: 54.6 MB (54574183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b86e893760418631bb758ba7596a4f62c94cb9b2a50a89142f128dcddcf769`  
		Last Modified: Mon, 22 Jun 2026 18:03:40 GMT  
		Size: 153.5 MB (153472915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c729d1555fffd2504f6823f3da67b755d2a3229b1020f4476c3c09579c244a`  
		Last Modified: Thu, 02 Jul 2026 06:44:37 GMT  
		Size: 125.5 MB (125474206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46deb8aef5b64ab6584bf85d10644abbdb8f09e6045a92472143054f5593248d`  
		Last Modified: Thu, 02 Jul 2026 06:44:35 GMT  
		Size: 12.5 MB (12529842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd94bf52231b3d5f12e649f3f0da842c7da4e18789cfa51e87a40d40ba98ccb1`  
		Last Modified: Thu, 02 Jul 2026 06:44:35 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412511ecb1f2ef17a760415bfcc85dbf63e917bdd503170777603dbff44e15f6`  
		Last Modified: Thu, 02 Jul 2026 06:44:34 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e3c5426c793d3d2dacbd54b5def4502f208b781b70cae4c224b1a203c02ede`  
		Last Modified: Thu, 02 Jul 2026 06:44:35 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:fdab40c6a1444202916d69189f03b8fdab8911af5408d8155cf828e0906fb6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6286026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62a508f909150536e624b4b307c1186cbb55114fc1c2490f6425829059e95f03`

```dockerfile
```

-	Layers:
	-	`sha256:634f8de5246e0f287623e97ed16a5262a79e5055c85bf590b41499ba16384450`  
		Last Modified: Thu, 02 Jul 2026 06:44:34 GMT  
		Size: 6.3 MB (6269738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8b733e9784b1bc3da80680562fafa5824f3f14a95ffdb58661fcdef018e4e5e`  
		Last Modified: Thu, 02 Jul 2026 06:44:34 GMT  
		Size: 16.3 KB (16288 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e2a9bda931e89fd0e0717cefb92d28b5e261c6006519aa1dd962f98211ed52b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.6 MB (351627334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c00e2426d29bc99decd3304959d4bf2923d08192f5b991d45b10a129dc85fd7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:55 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:14:10 GMT
ARG version=11.0.31.11-1
# Mon, 22 Jun 2026 18:14:10 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 22 Jun 2026 18:14:10 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:14:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 02 Jul 2026 06:34:51 GMT
RUN yum install -y tar which gzip findutils # TODO remove # buildkit
# Thu, 02 Jul 2026 06:34:53 GMT
RUN yum install -y openssh-clients # buildkit
# Thu, 02 Jul 2026 06:34:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:34:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:34:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:34:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:34:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:34:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:34:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:34:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:34:53 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:34:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:34:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:34:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9d73cc96eee98f0257861d2c8c5e7eac1d4fd5e92dd1ed16608b0040908eb5e0`  
		Last Modified: Fri, 12 Jun 2026 22:22:20 GMT  
		Size: 53.5 MB (53450686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edde251e78ae931471e2eec1d6090d2888ad7ce776de98251a52827dff5f3dba`  
		Last Modified: Mon, 22 Jun 2026 18:14:31 GMT  
		Size: 152.1 MB (152050355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66158a8711ab6e0b8d2c82d867cab8aae5420857dc1305db1e3bb96c1819a6e2`  
		Last Modified: Thu, 02 Jul 2026 06:35:14 GMT  
		Size: 124.0 MB (123975276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6ab71aca22718655a2c145ccd69860da69d97dc53b0b81a55511db1d8a1533`  
		Last Modified: Thu, 02 Jul 2026 06:35:11 GMT  
		Size: 12.8 MB (12790041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4540e7fa55edfad1e8d945d09c0e28c709a55e73d510f9363089181cda3c439`  
		Last Modified: Thu, 02 Jul 2026 06:35:11 GMT  
		Size: 9.4 MB (9359965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc0b3d5280caa57d448e3f675700476389ecd2d21eaaab2362a4b7e7154c59f`  
		Last Modified: Thu, 02 Jul 2026 06:35:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68006d1b2595bbced4b0045dd3b36a277c7b511b240fe3ae6e1365f730e857b`  
		Last Modified: Thu, 02 Jul 2026 06:35:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:c1eec42593e8c9099035d63cefcc37c90cc5840a2c6f8af30664f845351c6c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6285949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c2d6a1cf2150ba501be0bcb9e21ecefb34340ab497d661e9f3068e9704eeef`

```dockerfile
```

-	Layers:
	-	`sha256:68a26aaccceb1f32a1435ecafd808e01ab0e127f9365c2e459ce59348f26a5ba`  
		Last Modified: Thu, 02 Jul 2026 06:35:11 GMT  
		Size: 6.3 MB (6269512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd6d98c37bd20e001e613c9a769377a52ecfa2217a442a2492bfc9c088c715ad`  
		Last Modified: Thu, 02 Jul 2026 06:35:10 GMT  
		Size: 16.4 KB (16437 bytes)  
		MIME: application/vnd.in-toto+json
