## `amazoncorretto:21-headful`

```console
$ docker pull amazoncorretto@sha256:b7f02763bd457b2b7c8ad4b72c0ea768a63a2e8f41d23d0a14c1581a33ca6cef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8b77946af3dd4eb5386fbb51caa03a71d4c4427063b3c40dbc568726a107a49b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144889834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45dfc72648741d7b2e3bbb9183824bfccc0c32f16d4e545ad4fdb87c9f812780`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:18 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:18 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:18 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:18 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1808e54b4b5242a67a3fdfdc83974606023580b447c3873a132927fce4c82b`  
		Last Modified: Fri, 23 Oct 2026 18:09:35 GMT  
		Size: 90.2 MB (90240914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2a1150e5c0a4fcaf21be48d099d35c3ef07ca13a546f0fc35b7a434d57cae8b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265e7ca03b52544360b360e5a67fa5981b6cdd9ae69c9130789664f9cf6a4ee4`

```dockerfile
```

-	Layers:
	-	`sha256:cbecb36609ef199488d5b61cd3b06683a7e559230b7eb4f97cba8dddf14bdad7`  
		Last Modified: Fri, 23 Oct 2026 18:09:33 GMT  
		Size: 5.2 MB (5224169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8dfb01da805755058d002faf4503df3fc529bb6b93e1f3bf269d8842d580e77`  
		Last Modified: Fri, 23 Oct 2026 18:09:33 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2838a3c1e2b498cf2fa8804d970f04f24d9fe6a8b3d12eca4e1d73d0d4e8c7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142917051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f3a7ef3d2a6f830ceff0476503e7ac1945bd98025e356f8fc5987b771174bd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:17 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:17 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:17 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:17 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:17 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7d392be56274c87f653f0efee5619086d8ff648ddee3d170f4f331815be0e71`  
		Last Modified: Fri, 23 Oct 2026 18:09:36 GMT  
		Size: 89.4 MB (89387735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5e18d8bd213ecddfe04f73f0432c71dcacb7e9c903d1f6a765612ca0c4dd55ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53b57192e7e12d3039460bce950d9e25be11299190b3fb94d93e80b1621ef03`

```dockerfile
```

-	Layers:
	-	`sha256:c26bdffb4d1949d1dac15db7baea7d8fd66a5b1f0268b850057c3e6f38ccafb9`  
		Last Modified: Fri, 23 Oct 2026 18:09:34 GMT  
		Size: 5.2 MB (5222975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dac16a7f795749295ea295cd2fa9313f6917b9e215000a06e02b92c733cac61`  
		Last Modified: Fri, 23 Oct 2026 18:09:34 GMT  
		Size: 9.5 KB (9525 bytes)  
		MIME: application/vnd.in-toto+json
