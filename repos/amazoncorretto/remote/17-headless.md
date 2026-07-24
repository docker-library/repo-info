## `amazoncorretto:17-headless`

```console
$ docker pull amazoncorretto@sha256:1ffff1b7c9605656224e4c29ce5feab74ffdd0b205facc59bbae59cac598f84e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:78e861c2fb332d8c80d503de19e0da53f2515a44423611785b90b173a6a70ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.0 MB (137045368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207004569b5a060144645f11297cfd93956d184d7f38ef27e6c9d32918bd2bdd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:01 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:12:01 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:12:01 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:01 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b3220c1a00ace464488d1c696a92ed8f41827d212c6bcf6a0a8ceb40d8a6468`  
		Last Modified: Thu, 23 Jul 2026 23:12:18 GMT  
		Size: 82.5 MB (82471104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:564e9be806c29f857ab2b450c687028a5d9b8ef6dc7c81d604d19f4c7ab73337
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c48dca302332c65b5dc2692b1f20a64969e7d09cdc178c7b02948f1248b01e0`

```dockerfile
```

-	Layers:
	-	`sha256:b07603b5b0bf776134004f8ba87c54683f52183d779076475d492c84a0ef148e`  
		Last Modified: Thu, 23 Jul 2026 23:12:16 GMT  
		Size: 5.2 MB (5197027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5744e96fafd83baa0a894ee5941ca91b2b1dde542e72b4006b552f4d851e0e65`  
		Last Modified: Thu, 23 Jul 2026 23:12:16 GMT  
		Size: 9.2 KB (9201 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3e50825ea2fd243df34f2827ced6572f43af9dd56ee8bb0a70bb796b17edd130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135328779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a8e836444487a03948046a63636faccee6827f976f9cf9447555c0dc6fe3b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:45 GMT
ARG version=17.0.20.8-1
# Thu, 23 Jul 2026 23:13:45 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:45 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:45 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eba9e70a626ae03f93cf4569366691351d130be869d208004e4033d02c26e4`  
		Last Modified: Thu, 23 Jul 2026 23:14:03 GMT  
		Size: 81.9 MB (81879547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:09d90c2d936dfc30017e96d028dd63fc167a969661446c26c71df3229aa1e37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b2b571641c4075a1fa1ca65154739ad5cadb67f5360567c1355113c3b3d7d6`

```dockerfile
```

-	Layers:
	-	`sha256:08b343fc38b4f59a89aabae187bf8f80baadddb2cabe4551eed8ae885d9901d4`  
		Last Modified: Thu, 23 Jul 2026 23:14:01 GMT  
		Size: 5.2 MB (5195828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a2affa07a3a509be7f102bf194bda0daa5df9a9a9df185426212e352ff1d63`  
		Last Modified: Thu, 23 Jul 2026 23:14:01 GMT  
		Size: 9.3 KB (9293 bytes)  
		MIME: application/vnd.in-toto+json
