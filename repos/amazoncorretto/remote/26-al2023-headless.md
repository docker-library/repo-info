## `amazoncorretto:26-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:d738e6ee644e7005ab2c612fb3c14a52a91fe97e668ddab7662f0f50738abaff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7a2463866c2c0c7c039a3ce9806b1f08b1f93d3f4cb0747811f2d7c61f93fcdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160569121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b69980a756739dab9570479ac0e906bd09c67e24553466791c4064247abd6f33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:13 GMT
ARG version=26.0.2.11-1
# Wed, 21 Oct 2026 23:29:13 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:13 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:13 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7798bb74d8c5ff20d365746ea06eab68d0b46e818c4e77bb4a3750bdc06cf9f`  
		Last Modified: Wed, 21 Oct 2026 23:29:31 GMT  
		Size: 105.9 MB (105938351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bae27c52f1b433752efb949029c1965567dd46ed789d51765f90c971e7c60e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9a1f611057e1208be9aa5b7ae016b43c64ea476211ffd470f2be443d58f9a0`

```dockerfile
```

-	Layers:
	-	`sha256:39748e4a710ba6e3c83c52fa02faa094345a145de9a16619701235c5edf9cfce`  
		Last Modified: Wed, 21 Oct 2026 23:29:29 GMT  
		Size: 5.2 MB (5207037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9005d93c72d0b59acf2e09bcee41a16bfdfb07986d7bd87d742461b0b032e42d`  
		Last Modified: Wed, 21 Oct 2026 23:29:29 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fd2664b25cbb399fef6fac05f3ae5d190174cb93ea27c2553c572f8f9b39132e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158329176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7956714890700cc3f9037eef1b76a186fab3ad270860d22df3dc2216ef352c8a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:58 GMT
ARG version=26.0.2.11-1
# Thu, 22 Oct 2026 00:20:58 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:20:58 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:20:58 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7634eea3088c87cd1d5676db286a718211d70cc0beaa24edd8ebae934c3d4fa8`  
		Last Modified: Thu, 22 Oct 2026 00:21:19 GMT  
		Size: 104.8 MB (104824778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a69cd45d57694d2ab56f76b4608cd1ce9e5cb702dc50c0487ab63e09e957472b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78fbfe6a58c42633ade3feaf4f641e7fa9820b040a8be9dc0327a3679d5a65e`

```dockerfile
```

-	Layers:
	-	`sha256:9a9a1a473d7d594189967dda8800f40ec14af754554bf972fcb10a38902068ca`  
		Last Modified: Thu, 22 Oct 2026 00:21:16 GMT  
		Size: 5.2 MB (5205847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa578992e3caa62e79558a6ef9c01f9cc347671aab53e7121a1ffc0061ca8340`  
		Last Modified: Thu, 22 Oct 2026 00:21:16 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
