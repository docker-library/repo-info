## `amazoncorretto:27-headful`

```console
$ docker pull amazoncorretto@sha256:563683610dea5fda8523cf6d92890e431ce6ac8f8638cb21151bc54cd9e3671f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1750f7bd6d7fbab124a9066956b8ad76c8235110a5deb3249ad92fcd64b5824f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160384915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc9ea12d1d4fca2d27ea057018238c67815f9326cf6a40394ac3d221940a501`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:45:01 GMT
ARG version=27.0.0.35-1
# Mon, 05 Oct 2026 18:45:01 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:45:01 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:45:01 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:45:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0494bbfbf7913aa6cdf160e91cfc7ee5f08edf354ac263f72a16e33762251a`  
		Last Modified: Mon, 05 Oct 2026 18:45:21 GMT  
		Size: 105.8 MB (105754145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f9c7d284b14c90cde37f8f17cf6db338ad1574c159ab915640270eb63acd1a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bafb0b45d23676f0ba18db89fa24cddf7266479f0b8a7d4730506a929d0422c9`

```dockerfile
```

-	Layers:
	-	`sha256:2e3b16766418c511dc70fe8b1545e370ac6dffc2124fe895e8b6dc00279f05db`  
		Last Modified: Mon, 05 Oct 2026 18:45:19 GMT  
		Size: 5.2 MB (5230817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f05bc634b9e610fb8faadd0a4d30cbe09ba0b3400e4186a0dc24c18a816b0a60`  
		Last Modified: Mon, 05 Oct 2026 18:45:19 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:62833c551d5b348ba388bf33e5210d0366444bb8997d19ed6db3ba9e650f0822
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158183653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8158c0553e7e52e8d0b8f8b6b4327ffc482dca06175a37429da0fbc6ee8e9562`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:12 GMT
ARG version=27.0.0.35-1
# Mon, 05 Oct 2026 18:44:12 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:12 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:12 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bb6d383d31f4e781cab99ae0698ea8d5503d596f41d470bc9891bdcfbe587c`  
		Last Modified: Mon, 05 Oct 2026 18:44:33 GMT  
		Size: 104.7 MB (104679255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cae886f8860a8df10301616bc2a113a522c496d67634a0d1fbbc7f863bae63a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f1c44a3dc4f420f172ecfa1bd92e297565c97222e8d2eee81bd68b77e8b15c`

```dockerfile
```

-	Layers:
	-	`sha256:37eb41c1514a872ce8a9e668af8293f56d520aed146fc601a3153b2e206fb2f6`  
		Last Modified: Mon, 05 Oct 2026 18:44:31 GMT  
		Size: 5.2 MB (5229628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32cf1272fa966dca41a35e1a9c1be6c4db6f922abc372d84c1b9cd640792bacd`  
		Last Modified: Mon, 05 Oct 2026 18:44:30 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
