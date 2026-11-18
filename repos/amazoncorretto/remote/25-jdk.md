## `amazoncorretto:25-jdk`

```console
$ docker pull amazoncorretto@sha256:8b82be5adeabd374f5438e90635a120868e07ea8e85be6b691eb1c994d53f1e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a37ec1ae1b846006e8fbb40fb36a6845f905c8bd3b1793354dddb8aee20e5947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244221903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb0d4fb9704dd7850c7111df5344aac3a2296e336e4b3674c0f7dcbe69ee2a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:51 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:34:51 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:51 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:51 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:51 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d660831c36d9b04c25c338353b69ba69895ce28e7c8fe96890ff8ddb18a3d1`  
		Last Modified: Tue, 17 Nov 2026 21:35:14 GMT  
		Size: 189.7 MB (189652610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:33a382a9cbe43208c0fc3e8fae84843df3ce3e6017e6f58679d5eb60ba171cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5354189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb65552750eae1afc1b228b6d85266856ea5c8f4260d8e2f11be545b8332cf82`

```dockerfile
```

-	Layers:
	-	`sha256:0b469e811a53fc55b3dd8e701af6c7a8c43abc0267f045c584083ba4f6ac9ffa`  
		Last Modified: Tue, 17 Nov 2026 21:35:10 GMT  
		Size: 5.3 MB (5343484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc1cc3cc1cb9d7186c565624b1f71b834c77f8eaf203487c7653c2b2452e5c16`  
		Last Modified: Tue, 17 Nov 2026 21:35:09 GMT  
		Size: 10.7 KB (10705 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fbc7a491bc665e2309e900938f84a77822a59fafde1c722f70b965513d2bba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.0 MB (240993205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379adb49ce7aed4f167fea28487db6aa2ccc36a91beef4528769b3435f63d90f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:57 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:34:57 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:57 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:57 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:57 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12ca9bdf610fdaa9db8bf1928514118b73146715b46118d3d6a4c02e66fdcf7`  
		Last Modified: Tue, 17 Nov 2026 21:35:22 GMT  
		Size: 187.5 MB (187540128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6eb39e02d2302187340d68a18901701c676016cb53abd52e3b128848d4ea84e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5353299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cfb2b35b815d8ee73b8092340a3f315555b4edc1eb49946bec0c030dc637a4d`

```dockerfile
```

-	Layers:
	-	`sha256:3b6dc9ea29ffd9c3d1c4975a8a51d807b3e8c9b2756adef04296c2b6ddf01267`  
		Last Modified: Tue, 17 Nov 2026 21:35:19 GMT  
		Size: 5.3 MB (5342465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0132c4701bf58c00b84f0f0d1fd13d2d0407afb98add2f5ee2b8838f0eb8435`  
		Last Modified: Tue, 17 Nov 2026 21:35:18 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
