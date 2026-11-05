## `amazoncorretto:27-jdk`

```console
$ docker pull amazoncorretto@sha256:4298e7027c79d827838ab69e3bacbabdad58d52c573a7958a5becd056b2abbb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bf0548b7348b6f1cf2ca19229ef189b8cc0414c1041541bf082fc963f0956f8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246603156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d7681a8937530c972b7320b3d5c4a8440618c9a4f4b19084477a7b552ab18e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:15 GMT
ARG version=27.0.1.0.11-1
# Thu, 05 Nov 2026 20:00:15 GMT
ARG resource_version=27.0.1.0.11
# Thu, 05 Nov 2026 20:00:15 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:15 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b6feab879a4ab6addad34c4bf88920bb189e3d3479c91f11a6b0fa836d6428f`  
		Last Modified: Thu, 05 Nov 2026 20:00:40 GMT  
		Size: 192.0 MB (192033541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:334a976c2396dd880ce5c4b711ecffd24fef386f38c9777f93045463f6f0d19d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5345977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f13547945d26047dec5499492fd248ffb87ddc38abf05ec509e3e3f5ded40c`

```dockerfile
```

-	Layers:
	-	`sha256:9c21808be2e5810236c138ef25238bed01078851e9152e8a1e2ebc3210604ffc`  
		Last Modified: Thu, 05 Nov 2026 20:00:36 GMT  
		Size: 5.3 MB (5335265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010ddf41b8dd0d4f0683633b3f34d64a7b5c4b3db29b9a4a114dab6147f46e1d`  
		Last Modified: Thu, 05 Nov 2026 20:00:36 GMT  
		Size: 10.7 KB (10712 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f9e0e1bd7b36113abf1564edebafd791fcf307025e06315653dd4a63ca8af56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243645587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85442e6ad625ee4c2cdfc66ec4601f96fdfcbf6f61dafd3bf1621a6ff921b0ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:45 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:11:45 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:11:45 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:45 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:45 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a555f30fafccc7b5c5f85b3e4775b393ba84b4049465ca7df320f81af6c974`  
		Last Modified: Mon, 02 Nov 2026 20:12:11 GMT  
		Size: 190.2 MB (190189464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c7e1fef5bd37f49641c21a5ce0bdf65b8dce6e1ab63b9d187e2bd992b19beaab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5345076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9f9cb9bf35d750ed4b54c0a5c7b25338b4bb151c5b9649f6d9d24d68475f37`

```dockerfile
```

-	Layers:
	-	`sha256:0c81319ef227b8c74000a36eb25865a2dcf7ec23ba2deece12fc80d21e90fb67`  
		Last Modified: Mon, 02 Nov 2026 20:12:07 GMT  
		Size: 5.3 MB (5334236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967d44f0f8365da6789445472afef8c650f26cc40584f38c8e4ef83cfa2b894c`  
		Last Modified: Mon, 02 Nov 2026 20:12:07 GMT  
		Size: 10.8 KB (10840 bytes)  
		MIME: application/vnd.in-toto+json
