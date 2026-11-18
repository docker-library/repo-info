## `amazoncorretto:27-jdk`

```console
$ docker pull amazoncorretto@sha256:e267eb8f39647b96a379303748c1d43291a58d9fefdcf2a3996f0a0650fca765
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3b258e8f723d4c32e46518f89b3614d56b498a4991a6d28509f054407bd029f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246597916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d5b065c2cbd4d66e7c532cd74b40bd58106e6baf829329b5a3d619d284b39e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:33 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:33 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:33 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:33 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc48d1141cc3bde419fe9959885188cc98b88c79efcf3bb38ab7c61599a2903`  
		Last Modified: Tue, 17 Nov 2026 21:35:55 GMT  
		Size: 192.0 MB (192028623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6e9224fb678f8be1f7217e80b9f1d858366b422fa5fb843dd18df4f4371aba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5345975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a70f5d18429df67013ff4d328054ceac9bc84138c561233fd154fc468ba7936`

```dockerfile
```

-	Layers:
	-	`sha256:a4632c74520758473f68ac0ee687bb1168bdc57d7010854a78a5e6e7ffc4e6ea`  
		Last Modified: Tue, 17 Nov 2026 21:35:52 GMT  
		Size: 5.3 MB (5335269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:791120b5aa9296ecfa95558cfb8c9e8758af904166399a859f70523008b38dc4`  
		Last Modified: Tue, 17 Nov 2026 21:35:51 GMT  
		Size: 10.7 KB (10706 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ea0d2762aec7c2f3431066098ac01ab3396bfe9080ec2699c52df5cd4840d7ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243648401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11fdad1b995915781529dab1430d417e9188348e81eb46c98a49efda09ba28d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:48 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:48 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:48 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:48 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e805f71b8bf46b1d584a5b0485c37f42d8bd7facee703339bc20e1eb229a72a4`  
		Last Modified: Tue, 17 Nov 2026 21:36:14 GMT  
		Size: 190.2 MB (190195324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:96a44831e32923c52d735920b365252ba46a206ba6ac5702faecc9da707ae6b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5345074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a0998e4d8253a4fa33c4397ad783b7b6ec99b848a17c02632117c1ce09f5c3`

```dockerfile
```

-	Layers:
	-	`sha256:fa22cc7255b01d22d2e6205c2c2d5b7a6c55f46003eacb5b7e213579614ddca0`  
		Last Modified: Tue, 17 Nov 2026 21:36:11 GMT  
		Size: 5.3 MB (5334240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c576864e7e096b1a94714ac84551b4877b6bee7ec4b942bb8edb96d64edd7332`  
		Last Modified: Tue, 17 Nov 2026 21:36:10 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
