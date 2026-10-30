## `amazoncorretto:25-headful`

```console
$ docker pull amazoncorretto@sha256:1f04e5a8966989d7b7330efee6a866bccd8170a101a57da13398957feaa33954
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bf9ebd7cda55ba79bead74ec763e4b75a395f272a2c331960e5103d81b92df0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.2 MB (159217257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc0a89cc3dc96cd39f885eb4473a0a1c45f31edebd6f16aa9174d96432401c00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:45:07 GMT
ARG version=25.0.5.0.10-1
# Fri, 30 Oct 2026 19:45:07 GMT
ARG resource_version=25.0.5.0.10
# Fri, 30 Oct 2026 19:45:07 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:45:07 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:45:07 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:45:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f930a37649678488d83e431a3daaf3266582228e60eaf139d71880bc42764e76`  
		Last Modified: Fri, 30 Oct 2026 19:45:26 GMT  
		Size: 104.6 MB (104568337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b00cfa7090230a63be3ef1625cd078a8323411aa8d14636052296494d5f7ea7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3444dd18e76e0d4c7b9d44159c70960df0d4f8d6a0cdbb190d8badd32ff6790`

```dockerfile
```

-	Layers:
	-	`sha256:b8d6b7fc3d87a8883bc6dfed75492603fc865fdb9d423498bae5ea5a128af080`  
		Last Modified: Fri, 30 Oct 2026 19:45:23 GMT  
		Size: 5.2 MB (5234108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0d3afae9fe68371e6c745680e61d68e6c0929f080b7d8cb756bbf5d41633964`  
		Last Modified: Fri, 30 Oct 2026 19:45:23 GMT  
		Size: 9.4 KB (9430 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:50f075013e8b126139b3781f680c78c74e0f7294a12c8218ef0b44e1069bf43d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (157028701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2733941a4a275baa3505f51600bbdedda07eba5801fddb5c6ca285f5e294a2a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:45:13 GMT
ARG version=25.0.5.0.10-1
# Fri, 30 Oct 2026 19:45:13 GMT
ARG resource_version=25.0.5.0.10
# Fri, 30 Oct 2026 19:45:13 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:45:13 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:45:13 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:45:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765e76e174f9a6eaf9e89860ae092d1ccf40f7bf2c26b17b7391b84a70609fc0`  
		Last Modified: Fri, 30 Oct 2026 19:45:34 GMT  
		Size: 103.5 MB (103499385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:aa24439c498103a6f82928b39bdc60ce48b7262489656580f10179efef7bf016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db13f785000fe6c34001432578133708b611cc9b32e809a1944bed83af3e645`

```dockerfile
```

-	Layers:
	-	`sha256:84c8c3a29fa8a98bcedf831c5e01c43448bf989330e6431a67a9c3a6a5169972`  
		Last Modified: Fri, 30 Oct 2026 19:45:32 GMT  
		Size: 5.2 MB (5232923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9330057609e2a878901786db189950225fcc8b8d9d0fd48b4ec21462c630f6ae`  
		Last Modified: Fri, 30 Oct 2026 19:45:31 GMT  
		Size: 9.5 KB (9521 bytes)  
		MIME: application/vnd.in-toto+json
