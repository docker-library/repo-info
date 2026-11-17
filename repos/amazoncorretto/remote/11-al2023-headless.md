## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:06f9039801141d4b37dd1804076f319f207bc05d2881944f596713742927ca1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c20042ef4d9ea0d5317cae9bd37f550ca3c0364f4c4373670704bf4717a547e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130671177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50fd94952237e35cf60ad207b4ad99fac2535887efa0e20ffa3c4bce725b135d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:05 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:10:05 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:10:05 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:10:05 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1620c8c2ef128d2d713403899cde975d6e14235cc32924a542190b42fe59f680`  
		Last Modified: Mon, 16 Nov 2026 23:10:22 GMT  
		Size: 76.1 MB (76101884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7408b15f6aba0a404c25b62773ebc51fc95b65be39e3c0b71522348d543fb050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c0b4e2fe4ccb3444b8c5070308945e3a9e65478c77fa0d607e0cbce6acb182`

```dockerfile
```

-	Layers:
	-	`sha256:e6dbb11177bb1e7d6870965f912c9021d98b4bb7107cb3474a4dd5621f40be2f`  
		Last Modified: Mon, 16 Nov 2026 23:10:20 GMT  
		Size: 5.2 MB (5210236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5babe362bc0af7b4faf3b207da01be27fcceb6b218facc1ee12feda3711cb75`  
		Last Modified: Mon, 16 Nov 2026 23:10:20 GMT  
		Size: 9.2 KB (9165 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4f5b6bc9aae79a01359b9b64194ce641435a52000d85d1f64504a12aeef68237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128808172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfe988ef0d2bc2ca14cf0c4efe71ffc6d04b66c10c5522209cbfcd124f31a36`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:52 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:09:52 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:09:52 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:09:52 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eedef51892033bcfef50eb090dc9cbdb178d030aa5ae8495f9a82800c57a02e0`  
		Last Modified: Mon, 16 Nov 2026 23:10:09 GMT  
		Size: 75.4 MB (75355095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e5935c35393e913820779aef1931cd1f6704d986a0004fb5d8e88d620ee8d05f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ddb5a493b8223551075ea2ad3bb3a87ee90f93d59f07edc9a25c3aff94a9fe`

```dockerfile
```

-	Layers:
	-	`sha256:441362c28068302d08080ed88aaacded884f32ec1c6fa9aa07eeadb655e5a362`  
		Last Modified: Mon, 16 Nov 2026 23:10:08 GMT  
		Size: 5.2 MB (5209866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4e0f192dcf1fe6e85b1bb282165b8f469a17c5c71237ddcaff8a6630a6cbfb4`  
		Last Modified: Mon, 16 Nov 2026 23:10:07 GMT  
		Size: 9.3 KB (9257 bytes)  
		MIME: application/vnd.in-toto+json
