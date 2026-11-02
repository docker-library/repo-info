## `maven:3-amazoncorretto-27`

```console
$ docker pull maven@sha256:117ce76cea0d0304df32f62322d21a9914212a0c1b0558b2fdc81f750608032b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27` - linux; amd64

```console
$ docker pull maven@sha256:742ffaac1f38f68ee76e13341aba2eb11977d56ee607931e9a9ca9363ef8f9e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.1 MB (428139689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9900a45df7d8f5632c95e826a830d9a17ebbbda0e0a5a28278b4b5172171597f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:12:04 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:12:04 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:12:04 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:12:04 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:12:04 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:12:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 02 Nov 2026 21:00:07 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 21:00:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 21:00:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 21:00:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 21:00:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 21:00:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 21:00:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 21:00:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 21:00:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 21:00:07 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 21:00:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 21:00:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 21:00:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ee8e1fd9fa9f27542e9d1e475de8f003aac40251ae3acf930380091cb51963`  
		Last Modified: Mon, 02 Nov 2026 20:12:29 GMT  
		Size: 192.0 MB (192033700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff599f436ec1b103b1b25f3d2eab2c9fa9f64907f30b9eee0a7c1b733d0c357c`  
		Last Modified: Mon, 02 Nov 2026 21:00:33 GMT  
		Size: 171.5 MB (171476360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1a617a320b1a7b01f43f3be86fff817989021c045f36154efa6ab1ed31f31d`  
		Last Modified: Mon, 02 Nov 2026 21:00:29 GMT  
		Size: 10.1 MB (10059005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edce78740a43b6b2f7ef08d990eec78078863fa38d5de7a046868a2f2ba2963e`  
		Last Modified: Mon, 02 Nov 2026 21:00:29 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e473c9b9399e651bf1efba64b910ff8e53d2a9cf3838f16c923ac4a89aff97c0`  
		Last Modified: Mon, 02 Nov 2026 21:00:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27` - unknown; unknown

```console
$ docker pull maven@sha256:b8a432601aee450a71ea8b4f63a3c726e586c1f54940c240c187da310624cc09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6238216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1bd023b759802d419d0dcb1a2b4b053aa57cd6bab4b1dc87f66611dedf9e622`

```dockerfile
```

-	Layers:
	-	`sha256:39195a2c12d9847062db346cb01007cf4a818b76af0a136cab511d5bb412dd8b`  
		Last Modified: Mon, 02 Nov 2026 21:00:29 GMT  
		Size: 6.2 MB (6221419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a85f02c1a4df78a2051f0c07e160f1be40c161e18369c4d4d8e90126dc1d11c`  
		Last Modified: Mon, 02 Nov 2026 21:00:29 GMT  
		Size: 16.8 KB (16797 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-27` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:6aa2bd8acfae1b819ca8bbd7fb70859dc787aa492109d31ff701a4a1bef423aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.5 MB (423506696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432ce50395a897cef79ea71cb79c8a92a4fbbcdcec9404d866962d4bcf88db29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:45 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:11:45 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:11:45 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:45 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:45 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 02 Nov 2026 20:59:48 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:59:48 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:59:48 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:59:48 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:59:48 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:59:48 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:59:48 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:59:48 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:59:48 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:59:48 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:59:48 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:59:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:59:48 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a555f30fafccc7b5c5f85b3e4775b393ba84b4049465ca7df320f81af6c974`  
		Last Modified: Mon, 02 Nov 2026 20:12:11 GMT  
		Size: 190.2 MB (190189464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3946f6b93f65d373a0cff43c561fff6fe0eb2255071256af95c10091f0be8da2`  
		Last Modified: Mon, 02 Nov 2026 21:00:13 GMT  
		Size: 169.8 MB (169801085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b3b80e69049cf1d57f062312db1c86135514cb5f3d0883b28cf94bdcd63df5`  
		Last Modified: Mon, 02 Nov 2026 21:00:10 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a01960cfe411925b8e7e1d059e697a8ec798b2c8bc71421f0637d15f80682a9`  
		Last Modified: Mon, 02 Nov 2026 21:00:10 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91aaecdafb1efcf9f8473549321352cbb8dff938b154048c8a1e004e19fc583`  
		Last Modified: Mon, 02 Nov 2026 21:00:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27` - unknown; unknown

```console
$ docker pull maven@sha256:dd6fb0cf0f31e7b10a17b35845bd809a0bc48d5b75eccbd5158d2476531a2333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9aec5dc7b7ca696bfe2c02759b036cc9d38f81362366d985ec455cdd87d8ab`

```dockerfile
```

-	Layers:
	-	`sha256:f722d5fd421dc696a3c3279b4f988b22e2f237ffff851f239bdb77576d8f2b57`  
		Last Modified: Mon, 02 Nov 2026 21:00:09 GMT  
		Size: 6.2 MB (6220438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bc9b12a5c3b00255fdbbb483510a402805e6cdc609f305a3dacea6d602b3e61`  
		Last Modified: Mon, 02 Nov 2026 21:00:09 GMT  
		Size: 17.0 KB (17014 bytes)  
		MIME: application/vnd.in-toto+json
