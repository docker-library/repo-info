## `amazoncorretto:25-headless`

```console
$ docker pull amazoncorretto@sha256:770e291fe5d1bc20254c49489a6762095fa93937c11fa5e7408c3a3e4e04931e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:aafac5b1ccae21ca089448d747faee0d30cd1f6e3dfc06578849167f0e17e882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158337759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2627cc5738aca1105fd795094a21ba0be934c50c73cb68a55f344aca28e30408`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:21:14 GMT
ARG version=25.0.4.8-1
# Thu, 20 Aug 2026 17:21:14 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:21:14 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:21:14 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9526b1857c2850d98e7eef2104b3f8c947a7754554b2d2cf8cabfc2238e082d`  
		Last Modified: Thu, 20 Aug 2026 17:21:34 GMT  
		Size: 103.8 MB (103753912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4cdcd95c01398ab5beaa48e06befc8330741afece1804c8c8c34e79c5444bab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1723cf063e02ba4881434a783eadfc14e1ba9485a5880ffa9a5a63a96231117`

```dockerfile
```

-	Layers:
	-	`sha256:89ee3b8f0d40edd49c56f585cdb873ca789de6b45e49d80a3c7a7e4ce9b3333e`  
		Last Modified: Thu, 20 Aug 2026 17:21:32 GMT  
		Size: 5.2 MB (5208674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:189865c43ae74ad30ffcacb666d17effb37f7c592d2da5445cba71b51ada6818`  
		Last Modified: Thu, 20 Aug 2026 17:21:31 GMT  
		Size: 9.2 KB (9197 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ce6cc30d3cf6dbfaf07d1e7c24514647a75b106b0cc7ffc394a8f926ceebb808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156130810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d744a71b20e644c21fa89451791ebe1795ececca1be331e48d54173b4731b18`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:18:06 GMT
ARG version=25.0.4.8-1
# Thu, 20 Aug 2026 17:18:06 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:18:06 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:18:06 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a9e80e082ad02d41ab5cbdba394043fd3214cb232c8f1379c77b42603069c0`  
		Last Modified: Thu, 20 Aug 2026 17:18:25 GMT  
		Size: 102.7 MB (102679923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c008e5eadc466735c8787ab6a17ac4674ed1dca43c4a1fe907b27e7f017e3a51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352633669c4d5ba183912461ef2e541553474e73c25e1b65b453cf3c72846a8a`

```dockerfile
```

-	Layers:
	-	`sha256:5a5294eba80fa9a559a89640a9b14e94b658d03dfbd691bfa98b980036ba58d0`  
		Last Modified: Thu, 20 Aug 2026 17:18:23 GMT  
		Size: 5.2 MB (5207486 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dc0f1dd88adc60ce28d74cc3e34451c0d7e9639d9f3596ef1ae6b5f9f983ddb`  
		Last Modified: Thu, 20 Aug 2026 17:18:23 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
