## `amazoncorretto:11-jdk`

```console
$ docker pull amazoncorretto@sha256:1d66918825e8a3782149c81cd578c6a4d70154713285d830810ba7aeb7db9832
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:139461a5dfb9e26bcfff550616e5e38baa1a2dee063ad543b8af00f8a66f2583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208140206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af54d6833f970eb143f8f4ef959eb4a6d36e705f4f7e10cd32bb6028be0a71eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:27:49 GMT
ARG version=11.0.32.13-1
# Wed, 21 Oct 2026 23:27:49 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:27:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32110b8b235ca4270f7ee49534eec961205a27c8beac3b7fe61ad5383bb4ef3b`  
		Last Modified: Wed, 21 Oct 2026 23:28:08 GMT  
		Size: 153.5 MB (153509436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c48447c305f453d273051230e61f5aa18cf22c006c627b5352fecf344b9e4bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5364606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3849d0bff10897bafa6e613201e7051edc78ca99ea755f28e6f78621783ae35f`

```dockerfile
```

-	Layers:
	-	`sha256:78b04207e51b0a80234d5e5af7b024616644d968057f4530ae8bb81bb07433ab`  
		Last Modified: Wed, 21 Oct 2026 23:28:05 GMT  
		Size: 5.4 MB (5354176 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4344c08794eea43ade1f116b63e1b6b43bd4fd1c2be0dfcd99b5738b45394d7e`  
		Last Modified: Wed, 21 Oct 2026 23:28:05 GMT  
		Size: 10.4 KB (10430 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f7d1fbe5cb859fc14a335b2e7c6ef1d1c8734a0f324582c9b1b888fb5f91f819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205587842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4799a1331d4d2f752b66b73be0bbd842e036c463ac893e56e5f61a0a04bca99`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:19:23 GMT
ARG version=11.0.32.13-1
# Thu, 22 Oct 2026 00:19:23 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:19:23 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:19:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c579a1002bcbbeba43fd8d7b7f13239ec0ec81c31bef47c50053303fbe29ed0`  
		Last Modified: Thu, 22 Oct 2026 00:19:46 GMT  
		Size: 152.1 MB (152083444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f205be778edb7afea4c6aa181e21aa45d697b4933ef78bacba969a526b47f8fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5364543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aeb356d7da2d5f06d9d291606491d79510793acbb14434c17b682c3b6fd5e1d`

```dockerfile
```

-	Layers:
	-	`sha256:b9d53912f7d51f59799f19695af6d913ab46e21715fc1663679e588e66df7f71`  
		Last Modified: Thu, 22 Oct 2026 00:19:42 GMT  
		Size: 5.4 MB (5353986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:513ca4a0056410c87e6c05a326f3acb4644c634d9d3318cdc65c8822f7056f4e`  
		Last Modified: Thu, 22 Oct 2026 00:19:41 GMT  
		Size: 10.6 KB (10557 bytes)  
		MIME: application/vnd.in-toto+json
