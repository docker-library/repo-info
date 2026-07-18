## `amazoncorretto:26-jdk`

```console
$ docker pull amazoncorretto@sha256:5613b8efee471d7390226ed889765462291aa357cafc7109fc59f1296a1d2bcd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9c69b521edcf6b253904539751e8e0f75b6b148cab0b56ce919153f3ff1a482c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.0 MB (248020066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a4517eedcc4cd9080cbd77887f48ab1e5ad183caada41c780cd0b4f4268ec42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:19 GMT
ARG version=26.0.1.8-1
# Sat, 18 Jul 2026 00:13:19 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:19 GMT
# ARGS: version=26.0.1.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:19 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba43242e56112696d1cb18b5271fce482ca651ee751009e7264c5f2b51a59ec`  
		Last Modified: Sat, 18 Jul 2026 00:13:45 GMT  
		Size: 193.4 MB (193445802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7c02536abafc56b0a0b5fe02b78c9f9334e67fed8dfefd3b234964b0c7c31dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5349936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a198fbe272326a7d764576abc97cdb0c65f62e6791b159bf0c29c70c7d0c309`

```dockerfile
```

-	Layers:
	-	`sha256:2d5470ac2e22e6d245e2bac8b8b2ed59c697f71973f75e814f29f72e5c14f3fc`  
		Last Modified: Sat, 18 Jul 2026 00:13:41 GMT  
		Size: 5.3 MB (5339286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7fe893e2026caeddd479341a81f8f7b352a578bc033ea665c4a0efe5d080b97`  
		Last Modified: Sat, 18 Jul 2026 00:13:40 GMT  
		Size: 10.7 KB (10650 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b00c848ef62190852061fc4acfd85e5f8b03cd5a6ef0fbeb0f26156e63d6f1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244718096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8da352eaa1418a10396ae650e3fcd57f8c8d9c8834f84a5c303d379d818a756`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:01 GMT
ARG version=26.0.1.8-1
# Sat, 18 Jul 2026 00:13:01 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:01 GMT
# ARGS: version=26.0.1.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:01 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e131bd407f067981cc132fae4b7c7a4ebefb638c3061a477c4c0fbdcae9f690`  
		Last Modified: Sat, 18 Jul 2026 00:13:27 GMT  
		Size: 191.3 MB (191268864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f409b8675b7b585d8c2bafb63d5346dd2c55109b2c79143a844541cfe1e1cad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5349040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25308189dbc870dae614c10ccabba5e3fa838a89cb76d7efe41090b607733c8f`

```dockerfile
```

-	Layers:
	-	`sha256:b481efa9a737a24441cde6c4abf59d5e999b3a7485e5fa75878b5e2ef238d9f1`  
		Last Modified: Sat, 18 Jul 2026 00:13:23 GMT  
		Size: 5.3 MB (5338262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffe7fe2b814db6ba2c2547178917a1bdf1c6904df1c5961af381775163070e8f`  
		Last Modified: Sat, 18 Jul 2026 00:13:23 GMT  
		Size: 10.8 KB (10778 bytes)  
		MIME: application/vnd.in-toto+json
