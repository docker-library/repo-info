## `amazoncorretto:26-headless`

```console
$ docker pull amazoncorretto@sha256:3098b4589ab4f7902ce4c7931c4cbbf9d20f5cb7f69cf44e9d72b675cee9c76a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:55b0a64162eff27402448fdd0e6a540d0c200731c62ee7436791604275a09010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160569055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a64fc04db8ddb9594f847e799699231a811739f88ccb89ee3a8773720ee3df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:45 GMT
ARG version=26.0.2.11-1
# Mon, 05 Oct 2026 18:44:45 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:45 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:45 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec7447da2e4a4647e33560561934117e0d42898e0d2a8d72a4bbf62a41cb19a`  
		Last Modified: Mon, 05 Oct 2026 18:45:06 GMT  
		Size: 105.9 MB (105938285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9a08c51be6e59aeffb55b0b0aac2e48bd23235575420129f934763ff56f78c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af2f0eabb2530ea6a88f7504a8e63cc3a7133e4a0d636db47e70759b6947b27d`

```dockerfile
```

-	Layers:
	-	`sha256:4b7f45a08f55031c44caafae7599ce729ae79e937cf1f1cc3a87f685a34b3e0f`  
		Last Modified: Mon, 05 Oct 2026 18:45:03 GMT  
		Size: 5.2 MB (5207037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6238ba36c4f3dc48429b3075c3f82fd9682e6d1ae8e9253649cd4d4b1603d5e6`  
		Last Modified: Mon, 05 Oct 2026 18:45:03 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0b0f42f134566bd38fba691e2b4bf68a2d9ad60938ceadc19586f06976e00d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158329235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c5c370f1c000365b6daa2a2c1b87656cf76070517f5aa5a0c6f38b7795651b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:56 GMT
ARG version=26.0.2.11-1
# Mon, 05 Oct 2026 18:43:56 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:56 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:56 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575012197fbc3bf9697284152501cabc71632ec5c2ba6ff1d5f48dbdba367a84`  
		Last Modified: Mon, 05 Oct 2026 18:44:17 GMT  
		Size: 104.8 MB (104824837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3cfc76fadbdc8f9b7ff68db379e86711b199490e91c92c42439fce75a86d8e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cae09cb259224c9a5471726cac33893c2b3d8545631be41593272171cc349a`

```dockerfile
```

-	Layers:
	-	`sha256:e8c38df598a69cfc7a41f44c044520021d1eef6a8dcf7c669192ca04b8b5e5fb`  
		Last Modified: Mon, 05 Oct 2026 18:44:15 GMT  
		Size: 5.2 MB (5205847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5994cc98cb9372c2ba9d0f2f29ce5ffe49593c918c255140a4bc6ab9c00e7cc6`  
		Last Modified: Mon, 05 Oct 2026 18:44:15 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
