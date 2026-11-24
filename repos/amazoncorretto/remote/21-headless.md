## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:f8a793166c52b283f647980492ca88312d2de60f30849c1db98b4da3015d1c9a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4c5080eee9ca4dae9adb1e7db02ffec1914c26f64367748e8aee727aa4009270
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144076046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c96de8587a94f9b7f86047f3aa21c5aedba908514e2419d261fbe2afbead34`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:11 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:11 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:11 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:11 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:11 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8193f019ce29ec20a976dcc0699c70b8e1b25fe4ceb9bada5f5c57a7924e8c`  
		Last Modified: Mon, 23 Nov 2026 21:11:28 GMT  
		Size: 89.5 MB (89510877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:99d0a4dfcea48b9c50969792e9664708c8e7642125d60c32b9afeae549efc0a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f709997bb727165faece6dcf65e5810f7d9142f73a2db80e24e4d006bbebf43a`

```dockerfile
```

-	Layers:
	-	`sha256:5c4638394deca57ff97288e1c3f69efbe0605f16170a27e95434d49f96e36364`  
		Last Modified: Mon, 23 Nov 2026 21:11:26 GMT  
		Size: 5.2 MB (5198754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:978574de22d9d53595a6eaac2203c6c21e93b16914c9e6c3a39362593421442d`  
		Last Modified: Mon, 23 Nov 2026 21:11:26 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e0d9caeb28b6ddb9e493c9cae0cf6f30356be44b28c0cada1c781388ea89a78f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142093418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7db82d060f18abe8b4792d4e3125cdec6bcde9eb23ca733200c2065bfcd9e6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:30 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:30 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:30 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:30 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:30 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41633a7e831f5dc7d8ae96c32136b7222c0cf2ebdfc8ef2026ee87f0244af361`  
		Last Modified: Mon, 23 Nov 2026 21:11:49 GMT  
		Size: 88.6 MB (88643834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ad0e1967ec8ac95ca68cebd213d6a54de3ba6c7864c01056230ff0bd4cc6f787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6fb394a23b50b25e3b75b20abeafd32a17cf2cc97d11f3974cfa475f04f936f`

```dockerfile
```

-	Layers:
	-	`sha256:0ede9a838c0c4d0a51adde3363e36f2a25a77992cc8ae5a1ed7902d7d5e8b107`  
		Last Modified: Mon, 23 Nov 2026 21:11:47 GMT  
		Size: 5.2 MB (5197557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90ed82314347fa242b489178bf846cc0d710ce7d5e825148832e3aa80a03229b`  
		Last Modified: Mon, 23 Nov 2026 21:11:47 GMT  
		Size: 9.4 KB (9354 bytes)  
		MIME: application/vnd.in-toto+json
