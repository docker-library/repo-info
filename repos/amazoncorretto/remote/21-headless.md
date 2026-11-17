## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:991deb593574c5952eb7e5793dbe88a0173cc6848a9f15927cbdafd4716db15e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:21a9456bd7fee7045c545bf089e63ffc69ceb7d594b3c5bfb25bace199d3f566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144072898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:339e83ae17ab4f4f268a4a9d568bb802471d3d2bc823894ba0c8855d51931eb5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:55 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:55 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:55 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:55 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:55 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5167d7c884ed98c810d6109e7ee3bcf13f8dcf3f40ab2d188fc07153528f54e4`  
		Last Modified: Mon, 16 Nov 2026 23:11:14 GMT  
		Size: 89.5 MB (89503605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4ebbfb8d7cbd108dcb058f894627c255f01b2732357b8159f5356b5eb0281c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709607f323b8d9627d88e0ee6802362241f705f35ba13fe639a8d2d45d6f7335`

```dockerfile
```

-	Layers:
	-	`sha256:96bc34ac53a4d5388b7b69ea30280c956b7f0231fe258311d6d00d2c239539de`  
		Last Modified: Mon, 16 Nov 2026 23:11:11 GMT  
		Size: 5.2 MB (5198754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:395a187f9e728bdaeb0c0044bcbcaf1b05ee23fc02270bb4346b6304ab4ce2a9`  
		Last Modified: Mon, 16 Nov 2026 23:11:11 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5e59f4d5f93d82156b91d5b8628cce43c95a31f93f99736ecac5747f517777a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142097453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8ad3b7f974393768744dd554c9598c91e6e873b6e87ab4ec6f9e1baf8b8dcd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:43 GMT
ARG version=21.0.13.0.11-1
# Mon, 16 Nov 2026 23:10:43 GMT
ARG resource_version=21.0.13.0.11
# Mon, 16 Nov 2026 23:10:43 GMT
ARG package_version=1
# Mon, 16 Nov 2026 23:10:43 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:43 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77abb7d21c27061b8ea8172b9e40c46a129b4c397239520064af23435e33b730`  
		Last Modified: Mon, 16 Nov 2026 23:11:01 GMT  
		Size: 88.6 MB (88644376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eb4a319402928b4a2ccc321d6475ad227e6bf710996bd4804cd87cc17973931f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd865b05871bf62eb889f3852a32a8e4db518d478b5a1eba89244f97bcd9ce55`

```dockerfile
```

-	Layers:
	-	`sha256:0baeb97e486fd052b40c91265bedbd4aaa0e595a1f47e18cb79448e20b536d75`  
		Last Modified: Mon, 16 Nov 2026 23:11:00 GMT  
		Size: 5.2 MB (5197557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82f7477736090123d50985c52329f046411ac7793615505011e896c5911bd5ff`  
		Last Modified: Mon, 16 Nov 2026 23:10:59 GMT  
		Size: 9.4 KB (9356 bytes)  
		MIME: application/vnd.in-toto+json
