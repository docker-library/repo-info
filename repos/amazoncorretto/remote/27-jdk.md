## `amazoncorretto:27-jdk`

```console
$ docker pull amazoncorretto@sha256:95d651262e5a4dd7230cf2fbf3a18c39ebb7931593b45907a48ae33a9277d4ae
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
$ docker pull amazoncorretto@sha256:7b219439483bc18a0f30f98242976ac7133bec50e13e89cb9d093cb9c12d762d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243645340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fae278d582327939ef7f7a7459eed6181a2a4ba7466be057a1f545bd035282`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:17:02 GMT
ARG version=27.0.1.0.11-1
# Thu, 05 Nov 2026 20:17:02 GMT
ARG resource_version=27.0.1.0.11
# Thu, 05 Nov 2026 20:17:02 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:17:02 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:17:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:17:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9373949680b28e5d232910ba302af54b76af3c7cbcd382e5257129b296d693d9`  
		Last Modified: Thu, 05 Nov 2026 20:17:27 GMT  
		Size: 190.2 MB (190189217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7b8f6a71820d188b796cfe375603169bd6b77b7de002d80e0c4e3fcf907c181c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5345075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f28b4e0d9edad97410af532597a29ce3c7ccadfddece7f103503ef640ad9cd`

```dockerfile
```

-	Layers:
	-	`sha256:f3e3169b330adfebef81500c2297318bb6955da31fee5454b64f1abdc5f497fa`  
		Last Modified: Thu, 05 Nov 2026 20:17:24 GMT  
		Size: 5.3 MB (5334236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97aa728c7d33aee4cea2f3573f698e6a561a09e5c83eb4cd5f2027460d07b9a6`  
		Last Modified: Thu, 05 Nov 2026 20:17:24 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
