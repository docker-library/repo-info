## `amazoncorretto:25-headful`

```console
$ docker pull amazoncorretto@sha256:35822ddf02bf9c2a5dfadd7309561d8d6a4c3587e492251e9e591651428edfe4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f78e9d4c4f715176da87311f479e62b2f24211879384c9ab565dbd6d21062a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159138157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7839e943406b1f980a1fc013d2ec94c96e225daf5e657c079a8772110414ef9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:05 GMT
ARG version=25.0.5.0.10-1
# Mon, 16 Nov 2026 23:11:05 GMT
ARG resource_version=25.0.5.0.10
# Mon, 16 Nov 2026 23:11:05 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:11:05 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:11:05 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1883733d414dae51d70f559e9f2957fea646c6b04d7ed04346ef802d2e87358d`  
		Last Modified: Mon, 16 Nov 2026 23:11:25 GMT  
		Size: 104.6 MB (104568864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fea20e76dd1ef2a5d2ee175ed9c9b44e9365176ba1c192438c1164ffe34fde43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67af74ff0aa7a2fdfe2f28423147e943c691260c8a3fcf9f4e3efc28ec5fdd90`

```dockerfile
```

-	Layers:
	-	`sha256:25c7624e54814b7c42134918edd6c18b2b3de6b14af663883a6f7ce987c4b987`  
		Last Modified: Mon, 16 Nov 2026 23:11:22 GMT  
		Size: 5.2 MB (5234124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:beee03afae6aa2097ce8b1ffd15ab59f3a0730eee17b221f85a8eaf740428005`  
		Last Modified: Mon, 16 Nov 2026 23:11:22 GMT  
		Size: 9.4 KB (9430 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:852633823ebc472f31231d7e91ae13b9d4e756ccfcb19a8f4bb78c2b931ae91e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (156953107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089871dbbe487ec769ea25157d58afbf1455ff2b7f0e0350d32ae5ad943defd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:11:09 GMT
ARG version=25.0.5.0.10-1
# Mon, 16 Nov 2026 23:11:09 GMT
ARG resource_version=25.0.5.0.10
# Mon, 16 Nov 2026 23:11:09 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:11:09 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:11:09 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:11:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce1f1a0c74dfd1caf0b86ced6f8d468bff1040e59a405d2ce1e0965676c2fcfb`  
		Last Modified: Mon, 16 Nov 2026 23:11:30 GMT  
		Size: 103.5 MB (103500030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:15a7d0cbc0ff28de9a6356aaa796b91ffc818f622b62b535d960f57d4f0cdd69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf0248b079ae3c8924136c934c940842b9541612b57095b4b45087ff3a6c3ed`

```dockerfile
```

-	Layers:
	-	`sha256:ee04399de64c86ac09e8dd8af4af890c6c46521c2d0a5919e14ee718663745cd`  
		Last Modified: Mon, 16 Nov 2026 23:11:28 GMT  
		Size: 5.2 MB (5232939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5625a4dd1abf79982e9f10431e591ce4f243d4236b51b783d45ccb905568e6c`  
		Last Modified: Mon, 16 Nov 2026 23:11:28 GMT  
		Size: 9.5 KB (9520 bytes)  
		MIME: application/vnd.in-toto+json
