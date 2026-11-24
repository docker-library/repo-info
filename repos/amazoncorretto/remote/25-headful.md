## `amazoncorretto:25-headful`

```console
$ docker pull amazoncorretto@sha256:18d877afba2a37ecdc045d091ae02ee773ec4de00c06ef941311868b78cec9e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:20e9e4b6741b22967927342aaac231fc171ec46698bb2a52e321fc12f1f77057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159138957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e6088af299c93bf6287e3f9fc056b44995172b10d8e5f5c335b3cac144cbfa8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:46 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:11:46 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:11:46 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:46 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:46 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7329ae87209ae9af5ea871742534bc9ff16c8808d3ff8bc59f521f668199d67f`  
		Last Modified: Mon, 23 Nov 2026 21:12:04 GMT  
		Size: 104.6 MB (104573788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8a6f23625abad314308708ec54f2fa15e102443b52003a9979c8111797c176ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04eb2c2f6852793a4aadf38b64f28cfe1cb7d812ca42e9bfdab4e9539b36429`

```dockerfile
```

-	Layers:
	-	`sha256:4b0d9471873e3b0a31f76a57c80bbd25af0c5d5e4885c551b4e7c3441efc12c1`  
		Last Modified: Mon, 23 Nov 2026 21:12:02 GMT  
		Size: 5.2 MB (5234122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11f1442f6fe6416df6b6c71eb500706ac432d1c223db209419e71a3b5fcb4b31`  
		Last Modified: Mon, 23 Nov 2026 21:12:02 GMT  
		Size: 9.4 KB (9424 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:750ac7787eec2c4843fd760af6b47a85cba5fba98b5b9bdf6b2ae09c1689c766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (156952719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5331746afa6fa0cc0ab00ad8abb9dab3a2cdc78147192971943f3ebf72166c23`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:12:10 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:12:10 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:12:10 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:12:10 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:12:10 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:12:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e331ae492662e28adafe6d0d7c169c4a4f99e97d1c44a064a8beab0d003c2eb7`  
		Last Modified: Mon, 23 Nov 2026 21:12:31 GMT  
		Size: 103.5 MB (103503135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1ddbaa76480f6154f642334dde94ec83aecb4d8aa4ad976f96773c80f642ad86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0783db8766f252e3af0fe7c0a109343a4549ab8e9e42b27a1319359b56bb01f8`

```dockerfile
```

-	Layers:
	-	`sha256:544ad0597fa3a0cb499e9142383be7e2c9d8a2e1a718ecb77a73f3282c1e4561`  
		Last Modified: Mon, 23 Nov 2026 21:12:28 GMT  
		Size: 5.2 MB (5232937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:060d4f8bf3ec18d491f84d0c8b6d41e0a19b3d89ed971a4285b545d76410d610`  
		Last Modified: Mon, 23 Nov 2026 21:12:28 GMT  
		Size: 9.5 KB (9515 bytes)  
		MIME: application/vnd.in-toto+json
