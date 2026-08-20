## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:d0e851ebfe77eb60816cd7e0f3762ce19eb668885f0c455ddda3f6239a03261e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:80d9800bc9b2319ecb9751aaf0b1dda8eaf72b50afe5f8f661cde367d4c2e160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137768352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e3941c6cd3e00c08d00e4e8fbc0fa596472753c3c2524a61323c443aa59a00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:19 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:20:19 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:19 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:19 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae7b06ba5c261450979d5988179ca55ac6da610683d45cc950cd29ebf63f0cf`  
		Last Modified: Thu, 20 Aug 2026 17:20:38 GMT  
		Size: 83.2 MB (83184505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fc79f8d1f5146838d9b9c3b81689071fddb05e7c8e511676c76edf7747f072a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f9f1938fae997d518c54c97da7cd29bd0bfc13be2fa93df38bf6ae1b305343`

```dockerfile
```

-	Layers:
	-	`sha256:0f8a1b76c874c2da97ddcd1b74ca2f963aaaaaca03cb82d48710322e7500e2d8`  
		Last Modified: Thu, 20 Aug 2026 17:20:36 GMT  
		Size: 5.2 MB (5222540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fe594a69b90e42e01067385d4d5b8129b071eed79420c5956855411d5c9f6b1`  
		Last Modified: Thu, 20 Aug 2026 17:20:36 GMT  
		Size: 9.4 KB (9375 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9fd4b37d6ca65d56790188f50f9b65e82c270d2fd97eb6bbab90e89eeb4c1cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136065193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb19575de17d0a3512d7b539b7311a898d11c02533c8c58202851974f2638b05`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:04 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:17:04 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:04 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:04 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389a57e0b41846ac89df71905084aebf58f1602ecf03ad2a5fd56bcf5f2b6810`  
		Last Modified: Thu, 20 Aug 2026 17:17:22 GMT  
		Size: 82.6 MB (82614306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c8d8698433813ab3974af31e47901c03ab48e1f06d053e967b275560f9fbcb50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6361327aa94c3d7e6e43caa5a583b75b15694f32fc34ed90ff25eb761bfeaa67`

```dockerfile
```

-	Layers:
	-	`sha256:574032cbd01dc6a7e81426aa4929ec4ccfb8d79e06a14cdd594f7cc8f8c1a0f8`  
		Last Modified: Thu, 20 Aug 2026 17:17:20 GMT  
		Size: 5.2 MB (5221344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd70b169841964d9fcc4278d778cbab057f3efaba6a6801663db77e792359f55`  
		Last Modified: Thu, 20 Aug 2026 17:17:20 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json
