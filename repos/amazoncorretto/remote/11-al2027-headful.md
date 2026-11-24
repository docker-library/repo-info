## `amazoncorretto:11-al2027-headful`

```console
$ docker pull amazoncorretto@sha256:461ffd564619e6dda49c507cd99ca38a67f9358334baa239376b2556e6ecf5f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2027-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4a09c36deeb1939f8f03f937e2f34fe333f688ce827428174ea9960877450bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122822482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0f489d9e62891d2481419e252848ae950e1c35fec7417ca0a6c204b7e59d2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:49 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:49 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:45 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:09:45 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:09:45 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2027.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2027.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:09:45 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:bdceceab54920e1a52dc75125e21a5666f649ffa911a955836eced3738f0159b`  
		Last Modified: Mon, 23 Nov 2026 20:29:01 GMT  
		Size: 45.6 MB (45644195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0143d30ed89ae1d18f65e647d2389ec8b6629b543ad089c3da140bdcd4198b`  
		Last Modified: Mon, 23 Nov 2026 21:10:01 GMT  
		Size: 77.2 MB (77178287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cd10412cc9b692382484c76febb215993111bfdc0cf686c8f0858521774de19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3174032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd75f00dae82ca63e415f4b794c941eea2314e4a510c70126fcf6f4895af66f`

```dockerfile
```

-	Layers:
	-	`sha256:b761a18ddf5c7c857ce27dbc8f2956c070e82427c6babfb9f9b7aaf738eff1d7`  
		Last Modified: Mon, 23 Nov 2026 21:09:59 GMT  
		Size: 3.2 MB (3165047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:921afa880f6c24b4c32ecdce52de019d16a0b8f1dbd681dc824e558f192694fd`  
		Last Modified: Mon, 23 Nov 2026 21:09:59 GMT  
		Size: 9.0 KB (8985 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2027-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:88c5c9a6e8fe23aefda4d579a228b54faacf446b378ffc703625e905265b85cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118517250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660c49aba8d268337ef8a20cd57a126b22b63f15582d5bb52d865a97b415c678`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:51 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:51 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:49 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:09:49 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:09:49 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2027.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2027.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:09:49 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b3916e2369ad5254dc0f14f340f147be4b3ff439fa2e783b908d3db25e969e4b`  
		Last Modified: Mon, 23 Nov 2026 20:29:03 GMT  
		Size: 42.6 MB (42646231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5097ada8e00782ae08f6d807fc61a3208fe8e4b4de517ba0c5fc5435cd28d52`  
		Last Modified: Mon, 23 Nov 2026 21:10:05 GMT  
		Size: 75.9 MB (75871019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fd5196834581d37c5eb1d77c677b8de4c884549904b85953540f10c2b1ffb17f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3174268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e803d36d1178a8939a5989986b836520823f869186c1df523c102e923633e513`

```dockerfile
```

-	Layers:
	-	`sha256:05d0791b97acfdc39dbfeae318f2343d8eb41171bb181cb1fef24cdd6958a546`  
		Last Modified: Mon, 23 Nov 2026 21:10:03 GMT  
		Size: 3.2 MB (3165203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ad8faf354c98e99badd3f6926b61aecd494c293daa49a62002e622ee9290bd9`  
		Last Modified: Mon, 23 Nov 2026 21:10:03 GMT  
		Size: 9.1 KB (9065 bytes)  
		MIME: application/vnd.in-toto+json
