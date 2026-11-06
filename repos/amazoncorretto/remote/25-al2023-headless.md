## `amazoncorretto:25-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:c1c47b8011594d89c5c2b78744158b4fe5059379679e3bff8bdb011731e0a863
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8e07be07afb483f33210702a2d92e4bbdee88403e4a630136661cba2aaf90b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158427419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35c00986c2257ba506801c001fca2bb935d98b9e30cabf19e5de1b13c4c04d1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:02 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:00:02 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:00:02 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:02 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14d63a34b81c5f0bd5e473e947a54994692efb23cceb49e329e615795c933b3`  
		Last Modified: Thu, 05 Nov 2026 20:00:21 GMT  
		Size: 103.9 MB (103857804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:242f8237e07978a1687e41052e1618084b6647ad2b315f8d1e2a06690eafa32d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d635375c7d41769681648c7b622a8701eaf7a267a8bc0540f29ab2257d9c14f6`

```dockerfile
```

-	Layers:
	-	`sha256:7fc90cef34b153e2b148432da3452f8964adeee250ec230345d8dfea487872fb`  
		Last Modified: Thu, 05 Nov 2026 20:00:19 GMT  
		Size: 5.2 MB (5208685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d92ec36ccf69dd7cc404b3ab7e632d493ca3c97772617e2d8da6caa3dc1d95f`  
		Last Modified: Thu, 05 Nov 2026 20:00:18 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ac518b1263535364798847c0ad65ba11a14daf8918f47788ff714991aa579ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156224393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9667cc4fcd737c4818cf2e404fafd55f87453700dea86045dda25f44a0842948`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:16:42 GMT
ARG version=25.0.5.0.10-1
# Thu, 05 Nov 2026 20:16:42 GMT
ARG resource_version=25.0.5.0.10
# Thu, 05 Nov 2026 20:16:42 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:16:42 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:16:42 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:16:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8947a50ff6295f63ce87a351d58e4af7e68a37240d6995e19a87b2538ce71307`  
		Last Modified: Thu, 05 Nov 2026 20:17:03 GMT  
		Size: 102.8 MB (102768270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9b84a24fb1edbdd64a0d47185b923bac8ca9ffe63618d74eb698bd719f55d5db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4eb7391ae1e0c3d5448b4f4f908006117d3c9d1f941d97091ddfcda9447c45`

```dockerfile
```

-	Layers:
	-	`sha256:dbc9f019aebc6f03584e7ef869759360cfc214641ab8dd34a876b7ba48f0c580`  
		Last Modified: Thu, 05 Nov 2026 20:17:01 GMT  
		Size: 5.2 MB (5207497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b2908b5f166400a898844c824ff6f623f7848b1eb5ae1597bda3b8787d613af`  
		Last Modified: Thu, 05 Nov 2026 20:17:01 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json
