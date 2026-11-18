## `maven:3-amazoncorretto-11-al2023`

```console
$ docker pull maven@sha256:5ec3783dd88629076820b6657924f9888fbb235c0a22169d9068786deb75be58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-al2023` - linux; amd64

```console
$ docker pull maven@sha256:8a9111522f1f68847a0e34e2ba976f02f1e99c102c3f94ef94655c1eadef52be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.1 MB (398102957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ef822448afdec24f063aea1c07d1a0ceabcd997fdad3c29e6fbff4b3ed57dd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:00 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 21:33:00 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 21:33:00 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:00 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 18 Nov 2026 22:01:52 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 18 Nov 2026 22:01:54 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 22:01:54 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 22:01:54 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 22:01:54 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 22:01:54 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 22:01:54 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 22:01:54 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 22:01:54 GMT
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
	-	`sha256:1c5c9660bde8c253ee142cba4a690993c2cc3042ec916c6ec00770dc6b0f6ac8`  
		Last Modified: Wed, 18 Nov 2026 21:33:20 GMT  
		Size: 153.5 MB (153546249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29fc9519307b1cfc2df1352250a343eb416d5f4f118edf8abd7e3866d8530297`  
		Last Modified: Wed, 18 Nov 2026 22:02:14 GMT  
		Size: 166.4 MB (166398590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07f5db954901660679585a3bb31681f5d457cd0deb0be3d2524a2625dcf12ce`  
		Last Modified: Wed, 18 Nov 2026 22:02:11 GMT  
		Size: 13.5 MB (13529004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbd3e80f495ae7febf9780a824a13311779ef277d2b146676978bfd0036ea8b`  
		Last Modified: Wed, 18 Nov 2026 22:02:11 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d3e0f727db1721922c711affe426d4e32e7761edf59c1d4a014b07d2da3525`  
		Last Modified: Wed, 18 Nov 2026 22:02:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7529821c00fc7a50098b20cf3c30fc579b02f718d0a6518d309a261ae59b00f5`  
		Last Modified: Wed, 18 Nov 2026 22:02:12 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:fe15239aa65eb893891f37c6c9394acac1b10e723167a14b2c3c93399427a2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db2e8835646712b4cd093adfa440441843f6bd5ac2936d188010f664aa365d92`

```dockerfile
```

-	Layers:
	-	`sha256:c741b175b4701812bbdc456852f67e5921957fa3fe9b8c5bc1417b9b2a56b5cd`  
		Last Modified: Wed, 18 Nov 2026 22:02:11 GMT  
		Size: 6.3 MB (6277293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b85615f5604aee76ba50becb84b277feac3342ca3aca0e52aa5f63f2e682a0bc`  
		Last Modified: Wed, 18 Nov 2026 22:02:10 GMT  
		Size: 17.3 KB (17302 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4a2698d141f37219bcd1d418f36ed662785f01e1867a16b47f238bdf76cefdc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393848162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb104948f7f9105dbd9fca6eefbef8cf299ef3c424cb383059e77361697464`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:33:41 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 21:33:41 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 21:33:41 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:33:41 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:33:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 18 Nov 2026 21:55:19 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 18 Nov 2026 21:55:21 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 21:55:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 21:55:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 21:55:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 21:55:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 21:55:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 21:55:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 21:55:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:55:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 21:55:21 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 21:55:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 21:55:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 21:55:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29dde512d23b04084e430e74d8700bd2484e6073568d2b0270cfd43a8b8de212`  
		Last Modified: Wed, 18 Nov 2026 21:34:03 GMT  
		Size: 152.1 MB (152135882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06428109e400e5165f72aca0a102994b6f09caff5fb17ea52e79a1130fcdda41`  
		Last Modified: Wed, 18 Nov 2026 21:55:43 GMT  
		Size: 164.4 MB (164426117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ff0cd6e97d8c542a339d1456b4a994aeed226ffb48258fef65e0ac1fa4928f`  
		Last Modified: Wed, 18 Nov 2026 21:55:40 GMT  
		Size: 13.8 MB (13772597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfe3db8e15d74474eed92901fd6fbcab305057ef56a244f69864c747d99983b`  
		Last Modified: Wed, 18 Nov 2026 21:55:40 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2426b89abd0de1ad047bdd639dbca610225029054bf1e48aba6dcde83b30ec`  
		Last Modified: Wed, 18 Nov 2026 21:55:39 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293fabd586e202ffca473ca19d36c1801e35f0665ca91d83de4fa8211608f327`  
		Last Modified: Wed, 18 Nov 2026 21:55:41 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:3993bdaeb8445d1586a876362b9f67f8101379e8b337690dc37a097ebf38dc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ba8454ee161ba5bfb4247f464662b24cdf58deb5860e99f6d816b48a2a5394`

```dockerfile
```

-	Layers:
	-	`sha256:cad394dc986522c4637881563813e36f5d5a1aa31ca68609f3b553732cca58b3`  
		Last Modified: Wed, 18 Nov 2026 21:55:40 GMT  
		Size: 6.3 MB (6277103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be08624c362f7562924bf9f8cce06e09f1b8385b6ff8fdc5798fa2272aba2c46`  
		Last Modified: Wed, 18 Nov 2026 21:55:39 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
