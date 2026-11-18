## `amazoncorretto:17-jdk`

```console
$ docker pull amazoncorretto@sha256:9f2fde515fa060e6218b680d0f5045940d915af43af266145586344bddb30320
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2d19f2886bb72f2705c4f6c6d9e3e6f34c52252bbc4cc563c9f63cccf63107c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212001884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346329902b4053300f28009e17526432c8cf936d46377d2a9165a1c15ca52744`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:24 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:33:24 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:24 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:33:24 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:33:24 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d16c2b968026abf38a4b7ee08382bdf8747afe248cea5bbfac63b0c9e4c7c2`  
		Last Modified: Tue, 17 Nov 2026 21:33:44 GMT  
		Size: 157.4 MB (157432591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c679ecd5f8314bae28494317bf7e1ba0e66d99fb75131d1c47b5bbeae1698289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e811d917757708309ffe340eac955364a1bae22167497dbde1087b016215b7`

```dockerfile
```

-	Layers:
	-	`sha256:4bccc2228774b7bbd262aa40f50c7534d64177b23d3b947bebc895b7223a53cf`  
		Last Modified: Tue, 17 Nov 2026 21:33:41 GMT  
		Size: 5.3 MB (5329501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4462f10059206bb45ef199eaa1a0c4ba40d71314af2fa97af45d196ecf85d47`  
		Last Modified: Tue, 17 Nov 2026 21:33:41 GMT  
		Size: 10.7 KB (10716 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c94f35a36be24d65c5b7297b783a45ac1a985c038ef5c66d5d459188e956ee87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209749869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ca06d2f080f28e39d5147c4c4f91c95ca0ab5fb1a61d561991d1c58bd78317`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:21 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:33:21 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:21 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:33:21 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:33:21 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d18260505a1dcdb4351f6ab389e54fe3b5074ba7c5c039a2394f22168d987b`  
		Last Modified: Tue, 17 Nov 2026 21:33:43 GMT  
		Size: 156.3 MB (156296792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:31c2778290708b6d795092f29edfa0c9756922bc155f72bf065ae5786fe6c7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:490cb3eca63fe10491f2583ab5b97a90a82eea263a9947424df7ea6b954e55c1`

```dockerfile
```

-	Layers:
	-	`sha256:ef0e58068b66a419cf5007f879004abe2b5da48c259d68125354c553711911b9`  
		Last Modified: Tue, 17 Nov 2026 21:33:40 GMT  
		Size: 5.3 MB (5328468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:441e9dc6954ef921adf649932fe10a152c94192a6be29bf0c364c4aa8e6a3ad9`  
		Last Modified: Tue, 17 Nov 2026 21:33:40 GMT  
		Size: 10.8 KB (10844 bytes)  
		MIME: application/vnd.in-toto+json
