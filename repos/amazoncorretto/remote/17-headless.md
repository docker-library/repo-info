## `amazoncorretto:17-headless`

```console
$ docker pull amazoncorretto@sha256:8011b08e892b5c537f7fa91b8eec52356f4744d67fdb0843b9c7168e4575cf54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0febbf28423d2dc0823380ea34151cf455efc7022d4e23fd681f0f9ec3ec0bbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137166646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f04a040643b3d9270ffaab841e0e12263443c6ef8dc044efd7123672b6911bde`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:31 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:10:31 GMT
ARG resource_version=17.0.21.1.2
# Mon, 23 Nov 2026 21:10:31 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:10:31 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:10:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4290e777d64411563595df088c1bbbbaa228b1a779d9cc11aea87b38a1ec0a7`  
		Last Modified: Mon, 23 Nov 2026 21:10:47 GMT  
		Size: 82.6 MB (82601477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:864d9951d76241e3553aef82bdc4b15f46b3069b9aec0790c8d3a743adeb4da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47308252693fa59cf03b2c7686d529a9efed157374576c1badcffd31f11cda1a`

```dockerfile
```

-	Layers:
	-	`sha256:6e8635d13f72bfeba407d33d4a4cd483b9017ffc73646deeca9f714ac38ba026`  
		Last Modified: Mon, 23 Nov 2026 21:10:45 GMT  
		Size: 5.2 MB (5197128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5029e075dfb66080cbfdb4edac9ed060395cd7a2cfa3b7978793a54f9aeefc6d`  
		Last Modified: Mon, 23 Nov 2026 21:10:45 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c24b7dbc3d8a7b79eaf68999674c4f3484ee79dcbe989ffdca742713b68f55a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135499674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d79335a97cbfe95f061f483328f02e7fbd68070aa37a1a1cffbbd1e94b3f3e4f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:42 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:10:42 GMT
ARG resource_version=17.0.21.1.2
# Mon, 23 Nov 2026 21:10:42 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:10:42 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:10:42 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90c57ffca0f8ac3945a604478764a4fa930fa171a488e7ab0c414f35794787c`  
		Last Modified: Mon, 23 Nov 2026 21:11:00 GMT  
		Size: 82.1 MB (82050090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:492c0f88879bb4217f356490ccf582ac9ced0bbc194e5e11433733f45b0248f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216322651cd4450678e36d7c23c74c577a921624549ffa96d2c9a49cf55b6ffd`

```dockerfile
```

-	Layers:
	-	`sha256:a21419ea81c0d9c0ac8ea026bf6701f4fa41707ff5a02570ac42e0c1413135af`  
		Last Modified: Mon, 23 Nov 2026 21:10:58 GMT  
		Size: 5.2 MB (5195929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc04224dbf78769b61d45a96690ccdb1345256b38a5ce3ee3cb5951fbda80ff8`  
		Last Modified: Mon, 23 Nov 2026 21:10:58 GMT  
		Size: 9.4 KB (9354 bytes)  
		MIME: application/vnd.in-toto+json
