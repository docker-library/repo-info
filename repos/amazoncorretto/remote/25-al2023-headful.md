## `amazoncorretto:25-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:1e0e4294c6cb32e814a431cc7029d0cf2d1e1a4afa3ce508424c0f5d694f9594
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:920cc09a9527c0170b21ac62e0fe52bc27725b1452ab767e19a548b11fdb896a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159148461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07705e89c1c0c4975dbf18218f73f5fb083b5075bbe71a3f4236d5f7f8815863`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:01 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:35:01 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:35:01 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:01 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:01 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1f7f8693977f478860fd21fa7da8e97d4f1f700cfcc8bc161248c0cac4eef4`  
		Last Modified: Tue, 17 Nov 2026 21:35:21 GMT  
		Size: 104.6 MB (104579168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:090960e168b3f791be25242a702c2eecc7b043be42ac3bcf4e374c561d0b1233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ff6c9a236d353454a754f1d73a0911b1169e8ea739a82972d898a4e735fd3f`

```dockerfile
```

-	Layers:
	-	`sha256:13efc58b0cfd4e849ce6c1a164252eeef01a2af3148d36917b02e3c8d9681fa2`  
		Last Modified: Tue, 17 Nov 2026 21:35:18 GMT  
		Size: 5.2 MB (5234122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13800ccd51578b3fddf8bb65f702ac4dad8ba64e142c415a478a4ba5858e90d8`  
		Last Modified: Tue, 17 Nov 2026 21:35:18 GMT  
		Size: 9.4 KB (9424 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:737eec0a35a1ad1bff60d97fa8da571cb08632bac5d1eaffc05f7c3c709ece04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (156960432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ca513eb0d36b8f863fee4276bb631f49d55d2978e32b2068c5b99f30cc5297`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:02 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:35:02 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:35:02 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:02 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f290d76c0020b37b02252a7ddee18f56029027469d3e55431137a91bc243e64`  
		Last Modified: Tue, 17 Nov 2026 21:35:23 GMT  
		Size: 103.5 MB (103507355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8629f64b0dc411de0c2f5d022a31b97f5ad933fd0fe569f93c15cf992301c4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c32746b8e8d36b04596949e06a8e44e366655a5b584ada2a83e4512bf963ba`

```dockerfile
```

-	Layers:
	-	`sha256:e20d641c24f854d963ebbd2f3eb599ec7c746bdd68249d636f45574a0bbbf4ba`  
		Last Modified: Tue, 17 Nov 2026 21:35:21 GMT  
		Size: 5.2 MB (5232937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea07aeb76ab36cd256b6d9a3033596e7906c21ed1fe71fd899fe9e940d512d77`  
		Last Modified: Tue, 17 Nov 2026 21:35:21 GMT  
		Size: 9.5 KB (9516 bytes)  
		MIME: application/vnd.in-toto+json
