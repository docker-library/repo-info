## `amazoncorretto:25-headless`

```console
$ docker pull amazoncorretto@sha256:d43cc2b87faf3e80d04659d315dd9f1dba2c1176cc9b48d9daed285856ac056c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:38f9c3d622498280fb176277084aa95c14ecc25d0ef2a03bdcef8d927540e249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158419045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3178b4bcaff485fe248198662e6ce7993b05ee85a0d066b801491e0984ea01`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:59 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:34:59 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:59 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:59 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:523741f17fbb42dd08f85d0af7c2c08361b46426de5e016e2c8a30f96077313a`  
		Last Modified: Tue, 17 Nov 2026 21:35:19 GMT  
		Size: 103.8 MB (103849752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bab8799cef4ba7528a299aea49cefb44a8fcd7308f3c2b625c214afe79cbb54c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4f7178ffd5c2bd159312068992876294f0993f9d034ca81d78e5e14a93771a`

```dockerfile
```

-	Layers:
	-	`sha256:1c46362391a5b0e11958acb2566573a5315d0c6ca695b138dd998cadb9187aa0`  
		Last Modified: Tue, 17 Nov 2026 21:35:16 GMT  
		Size: 5.2 MB (5208695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e98c34218cc58496fa44d1ca89527b4e89d653ccf5337d7fa9fd8f2bd48a2a0`  
		Last Modified: Tue, 17 Nov 2026 21:35:16 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:27a1b09cb2d64cb3ed46c9d1d21d7e7012a06287e4d05a9f0172b7aabc9eb757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156215984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1626d3424ff3c9f28a499d392e4fca006e30a3394891451c4195e48add45df1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:59 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:34:59 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:59 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:59 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4674c2d5589c89bc9a0f6e3133be525aa81e81b3fcd55a39b549b3ab58452f0`  
		Last Modified: Tue, 17 Nov 2026 21:35:20 GMT  
		Size: 102.8 MB (102762907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fdc825d8d73b2fa20f0da83c81b71e4eb96286752f3631a99c55ea08d9dcbda7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89307526d7d822398ad91a0bdd391fad579ff9aca3340b36bbb7f3cc4b226dd4`

```dockerfile
```

-	Layers:
	-	`sha256:c366417755f56907742a3a8f979d5a1814a7242624bdfb3ef14003e1a35b03ae`  
		Last Modified: Tue, 17 Nov 2026 21:35:17 GMT  
		Size: 5.2 MB (5207507 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51ad0c1f2ab30efaadebe56a720c815f2cffc03730dd6af1c596451dedc32dc2`  
		Last Modified: Tue, 17 Nov 2026 21:35:17 GMT  
		Size: 9.3 KB (9347 bytes)  
		MIME: application/vnd.in-toto+json
