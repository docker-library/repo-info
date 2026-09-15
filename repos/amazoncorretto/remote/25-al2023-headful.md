## `amazoncorretto:25-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:555db2c75a794dd594a683f2a4e1004cf7e40bdcfd20b6f6cd4c6fde772141f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ed811d2d1ffaf7ad7fe292076235ac3a11bce8803784a4ad7fa1e1a1887193a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159065950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c09e5250df8610f3fbc71a7a34aac1c3b20cc2117a16dbfe6ff1e3125bd13af`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:40 GMT
ARG version=25.0.4.8-1
# Tue, 15 Sep 2026 00:12:40 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:40 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:40 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57fd0b26f18e38e106aaf5a5ed7f8d50da3689c56ee6e95eac5d985fbf9fb30`  
		Last Modified: Tue, 15 Sep 2026 00:13:02 GMT  
		Size: 104.5 MB (104479668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4bd7b212c979a42fa2ad8cc369a84d2b86f14465354b69e0b419da1a365f922c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12506159fa6f6499a9da47cae5eb241d66e56bca1ef7eeb3ad0bedfe11548398`

```dockerfile
```

-	Layers:
	-	`sha256:b38fd77fc38aa3c4a364f4606aada73917acf674bfd88915eb71af2e42ed92b3`  
		Last Modified: Tue, 15 Sep 2026 00:12:59 GMT  
		Size: 5.2 MB (5234099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9dc5270e0c1d10abbf41993866eb5f96631a7f5971e7f3125026f35dfd489bc`  
		Last Modified: Tue, 15 Sep 2026 00:12:59 GMT  
		Size: 9.4 KB (9368 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:23ce45f3c6877468202eb913e2c195a46b268ef794e90de6ab2d052a260a9e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156839675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8331f40e87a2ed774e10b46c0f3e382606447c9d81ad726d167386b581e74e33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:16 GMT
ARG version=25.0.4.8-1
# Tue, 15 Sep 2026 00:12:16 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:16 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70304d8054c47566db8d3d3ead52a5abedf2e59e4f6421c44f453e53478da3c2`  
		Last Modified: Tue, 15 Sep 2026 00:12:36 GMT  
		Size: 103.4 MB (103387102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:96695dc00b84bb53460fcca9c0a5395d446b5ba5cc23be2d95fc6faf8b3f3e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ec66e88cd90494fc029b9f6081c8c26ae803dab080e248d710b7c879421243`

```dockerfile
```

-	Layers:
	-	`sha256:79d9ab8a7ae91f1135108aeb9e2f5f530b4babedf1ac36a25c152e8d7f30102b`  
		Last Modified: Tue, 15 Sep 2026 00:12:34 GMT  
		Size: 5.2 MB (5232914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96504937b6a1bf5bd1b9742e5aedb6ad62668ec3299f84b1a360bf3f6c649525`  
		Last Modified: Tue, 15 Sep 2026 00:12:34 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
