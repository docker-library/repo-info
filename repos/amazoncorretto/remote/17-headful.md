## `amazoncorretto:17-headful`

```console
$ docker pull amazoncorretto@sha256:eb1527d717513c73140ef358a563634ba2043a076f09bb19611e1bf6fde8b210
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:21691f259bf8518f8709c28d80a2abc4e43ca082812066775aeb19206bc5c48f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137912765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38aad8b67d50b4df1fbb756323a4ff9ab8766422f6110dfd4c52462fc0242fd7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:32 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:10:32 GMT
ARG resource_version=17.0.21.1.2
# Mon, 23 Nov 2026 21:10:32 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:10:32 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:10:32 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b253b9aade35cee51cce3e0e91700d2ee6f1cbc4cb399aff71d9919f41c08ec5`  
		Last Modified: Mon, 23 Nov 2026 21:10:49 GMT  
		Size: 83.3 MB (83347596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9e8134cdcf03143d881b779ea6bad3928c6e1f38fa08464ed468910e405f8b2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99275ce1e1c11b2cccb457758027b3bcc5739347045c45e1ecde0268b9323e1`

```dockerfile
```

-	Layers:
	-	`sha256:919de2e80c545bed5890303778a01c9e30ce7577aa3d50a022b178b96dfed94e`  
		Last Modified: Mon, 23 Nov 2026 21:10:47 GMT  
		Size: 5.2 MB (5222557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d113f8845bf771d1ec88044aa91457879452681747a4d37b9571ad3a9854cb5b`  
		Last Modified: Mon, 23 Nov 2026 21:10:47 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:679e668bbd4bd5a1854e2d44178fc034f03cfb627239422971fe51656b29b0f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136241367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1270adcded726f002ad2acb91c12e613473bfe3dce8f5bc6050a96a18b607220`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:40 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:10:40 GMT
ARG resource_version=17.0.21.1.2
# Mon, 23 Nov 2026 21:10:40 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:10:40 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:10:40 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c37a1cf0dbf3ce0dbd36e4cf1148f9c3759fe651a51721e155ef1115b97d29`  
		Last Modified: Mon, 23 Nov 2026 21:10:58 GMT  
		Size: 82.8 MB (82791783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7634745d960941458c5130def974e97b31eed23bc080a408fe8e7071d8e00148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68179f9cbb7c359c2fead1500840eda69ef818ced40dfa30d34f47a5d3541515`

```dockerfile
```

-	Layers:
	-	`sha256:b5dde49e31984d9e290ad664717855372f948cd4babb73bf8bd5e7ed341bd27a`  
		Last Modified: Mon, 23 Nov 2026 21:10:56 GMT  
		Size: 5.2 MB (5221361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ed969e3bc823b883aa83939a9760aeac7c1a389181cf609d82e11196b9fd3ed`  
		Last Modified: Mon, 23 Nov 2026 21:10:55 GMT  
		Size: 9.5 KB (9523 bytes)  
		MIME: application/vnd.in-toto+json
