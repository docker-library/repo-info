## `amazoncorretto:11-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:50cf4a701ecb4412cd59f5933c0b678a746faf5eff297f28ce71361c49586c9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:69b131b9e79719bd8cc9fe0d20b2bd06303d577d44c8bb86d78ecc76eb1e6fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131358247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385d932cbde78635432fe325b7bf1d33affe4057fea961a160e55c25fe4fe719`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:55 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:09:55 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:09:55 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:09:55 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21eb86e2d713a8349fe49cb70c30932fae38495f578e5a6ac898aa0e8153f469`  
		Last Modified: Mon, 23 Nov 2026 21:10:11 GMT  
		Size: 76.8 MB (76793078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:80595f1d8348a5c13c8a911753dc0a9a5ca0cb5dc17cad2e658a062db922da5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8648d7c79edcc945691c1b62a08dd7a77697d9b325bdfbd7981160e8bef276d3`

```dockerfile
```

-	Layers:
	-	`sha256:a49444afd18fe107fd2f15122991e217675638a93388e3f7ec5b8c8babd55cf8`  
		Last Modified: Mon, 23 Nov 2026 21:10:09 GMT  
		Size: 5.2 MB (5235661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1d433d6651b71cfacad54f42bf4bb1c29296c4eebffb19b044c7d7212d4d14`  
		Last Modified: Mon, 23 Nov 2026 21:10:09 GMT  
		Size: 9.3 KB (9285 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:38dd57fb557a8f6cac401bbd49e42e7f2f1f8d482a42ce2e3547ce477e8b9464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129516723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a61661e5c8a8eb5d0eea3e248972bf7a87114ef19fb0de6eef017c6178e36aee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:08 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:10:08 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:10:08 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:10:08 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531b67569dae6eddaa248496ee95159478700623116d1b8da43825fb48e150aa`  
		Last Modified: Mon, 23 Nov 2026 21:10:26 GMT  
		Size: 76.1 MB (76067139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0813f638e171a9dd5bde653a513e5b70163941fcce9e1fa7efec3a86be7f93b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf18221dd5a49eae5e19d35ef92b444f64f54fc94de9b88e4fc3c4244652923`

```dockerfile
```

-	Layers:
	-	`sha256:26dca600e54f85721e18602f979727ff3df1773394f3a12c0878258a365172e7`  
		Last Modified: Mon, 23 Nov 2026 21:10:24 GMT  
		Size: 5.2 MB (5235294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31030d237d8270aac68bd3d30755314217f6e729c0ad238a827bef6a2aaf9583`  
		Last Modified: Mon, 23 Nov 2026 21:10:24 GMT  
		Size: 9.4 KB (9377 bytes)  
		MIME: application/vnd.in-toto+json
