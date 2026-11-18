## `amazoncorretto:27-headless`

```console
$ docker pull amazoncorretto@sha256:318ff16d9fac539f15994414be5b1f121c64ab57093c113ff4e58bd8fea71945
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b139633f584644f4d5c651583d57066759ec2839a7c7c9aef476200538db4123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159810444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baf9a1a8efb4cef58e6b5abcaa4e31184777419427cb6433870094c45bc3c611`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:35 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:35 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:35 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:35 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e9b6e85fdbd3a3e908c986e9c011174ea07c2f8bcb0ce392a9c6bedba0bca2`  
		Last Modified: Tue, 17 Nov 2026 21:35:55 GMT  
		Size: 105.2 MB (105241151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ac90a073f8ffbda6b68cdf7951ceb18e2ff46872b87217e9c7ac6b20d8dd56ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81cb91a498f7070cb353b7671156f1c1277cbc02c6dd8aacda44f63a26587a30`

```dockerfile
```

-	Layers:
	-	`sha256:0fd7bce8b64baad8644d924ca71beaa1a3a1e31d8d73aa095c8baca7c9a181ec`  
		Last Modified: Tue, 17 Nov 2026 21:35:53 GMT  
		Size: 5.2 MB (5205418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a19760b75d5a2281e222ad6e5c9dafe114d6c6d27a062e3707f1cd2b805cb48`  
		Last Modified: Tue, 17 Nov 2026 21:35:53 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7778a6950382d5433bae4fe9af43482b413a6efbecdfb8f90ac404dff7e1223f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157754411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fba15d2fb41b4398c8a4972914baf6b0b4197b8f0aedbd8c21470bf5a310123`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:43 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:43 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:43 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:43 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:43 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2407e654ce52391343b8f549692c8c9f24c3583215c4c6a535f0549c5da7ebec`  
		Last Modified: Tue, 17 Nov 2026 21:36:04 GMT  
		Size: 104.3 MB (104301334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f9f342f088d2290a10f7392b98f00bbc61926a6ec6f13ea733cad928e4841eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e06b18a435c5c4559abba7e3c25698be4bcd522acbb277a4084b50b395eace`

```dockerfile
```

-	Layers:
	-	`sha256:6f8fd6142974cc0c1d2f9a4c789431c4b84cdd6c5e90fd054ef540a4fe5e7339`  
		Last Modified: Tue, 17 Nov 2026 21:36:02 GMT  
		Size: 5.2 MB (5204226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6be1c6c54637d4d9824e62e53a208625f7ec3d6a13d7af0459d034f1d76cded`  
		Last Modified: Tue, 17 Nov 2026 21:36:01 GMT  
		Size: 9.3 KB (9347 bytes)  
		MIME: application/vnd.in-toto+json
