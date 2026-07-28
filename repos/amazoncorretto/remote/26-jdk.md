## `amazoncorretto:26-jdk`

```console
$ docker pull amazoncorretto@sha256:dc98b5a706a11c48143f54cd7e552a6ea10ea5fef12b9331dd8ac79711201655
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c63cfa99cf9ad5bb51ee67d3c4779e25fec8fc131c7072a6810d2b517f10148f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248203375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34cc0f64e1ea964d3a751053ff3fbb225f2b9c94fe47cc23a029bed177296e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:44 GMT
ARG version=26.0.2.10-1
# Mon, 27 Jul 2026 21:37:44 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:44 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:44 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5499e072fe67990e9724d4ee0f506ca032e74eef6288cab6e0574e812c9c4e`  
		Last Modified: Mon, 27 Jul 2026 21:38:09 GMT  
		Size: 193.6 MB (193630691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c2794757d56710245e697b9634f2c65c725887a36b1e1d2514ebdf2c878ad2f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5350023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004f52e476c71aa6c6791a5d4da4d496b0882e1b392d407d217cccf3920781b8`

```dockerfile
```

-	Layers:
	-	`sha256:79e62214b8202011e02993845b0c4a45eedd0953bbf43b236d902bb1880c799c`  
		Last Modified: Mon, 27 Jul 2026 21:38:05 GMT  
		Size: 5.3 MB (5339372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9688f0aa365e3606b9c99edf4bc973f67aa4404faf6c2c1d63cb99587fca7d2a`  
		Last Modified: Mon, 27 Jul 2026 21:38:04 GMT  
		Size: 10.7 KB (10651 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ffb9e33d04d87ac04509a2c2c3ed079c575e45db8910b0ef08dec32bd1844cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244897060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6084abb2439ab10e3312adf5592f46410645061e6b2a231355c788f01b9b5f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:57 GMT
ARG version=26.0.2.10-1
# Mon, 27 Jul 2026 21:36:57 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:57 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:57 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f23bf7c514f014f2402772f327f567c9bc93e5a8f1fdd8ff4a757eccd70d18c`  
		Last Modified: Mon, 27 Jul 2026 21:37:23 GMT  
		Size: 191.4 MB (191447449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0f7e748d338a8791d093aaf16b961f5b0eabcefec90f2a45d20dca281e1fe618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5349127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36018efc4deb24b345aa319bdb7fc1ce02a9a9a110aaff82afa505428c68159`

```dockerfile
```

-	Layers:
	-	`sha256:9b1e295b0379677dcfcefd69b598c603aa0b44d3337d54c9239fad234ba3a6d5`  
		Last Modified: Mon, 27 Jul 2026 21:37:19 GMT  
		Size: 5.3 MB (5338348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:528c4c48d31cfea7edd4fa641af46f299f457f3c4e4bd4ab2c8bc24a3e11ba72`  
		Last Modified: Mon, 27 Jul 2026 21:37:19 GMT  
		Size: 10.8 KB (10779 bytes)  
		MIME: application/vnd.in-toto+json
