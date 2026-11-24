## `amazoncorretto:27-headless`

```console
$ docker pull amazoncorretto@sha256:50eb062ff2ecbaad147774908765c75bf33480dd80b6955b7b70b13a9457eff2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f180cbda96d4ff0dec7f815065bb1ccdca4515a09edd3261fb27365a0589ae05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159804607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0010bd6722dbd9f80071a6310e12c8dcb620f9ec34a9ebe851fac468e27f6ebb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:12:00 GMT
ARG version=27.0.1.1.4-1
# Mon, 23 Nov 2026 21:12:00 GMT
ARG resource_version=27.0.1.1.4
# Mon, 23 Nov 2026 21:12:00 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:12:00 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:12:00 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:12:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e5eaa3c9e7346efad3c45fbbda5324063c818470ba707346488552bca902852`  
		Last Modified: Mon, 23 Nov 2026 21:12:19 GMT  
		Size: 105.2 MB (105239438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2d8650426959def61d7ed55e94882dd44f2fbaf38202dee6b602722277bbfed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c294c1ab269a8d465180302b618bd95d4e5ce75f8a81189f00b91161943b2249`

```dockerfile
```

-	Layers:
	-	`sha256:6fdf2e4f01323e613c0fd61dabc1134ca2ff0f11ccdcfd1db3cfb60ffdee25bd`  
		Last Modified: Mon, 23 Nov 2026 21:12:16 GMT  
		Size: 5.2 MB (5205418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7ace7276c83c4d1f7e522b7f3acd18bb7c8ec44823f30d353d94238670bd1ca`  
		Last Modified: Mon, 23 Nov 2026 21:12:16 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:abf41e0a811b1684a13e14acc0ee92c5586114180ec213cd8c5c86311cfaa417
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157744815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f866b7c82607bb344114f0bd46db46b411476700a0dbd4523debf91f4d62eaf9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:12:26 GMT
ARG version=27.0.1.1.4-1
# Mon, 23 Nov 2026 21:12:26 GMT
ARG resource_version=27.0.1.1.4
# Mon, 23 Nov 2026 21:12:26 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:12:26 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:12:26 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:12:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484ed28f935594dce69d8cd511bdb1cba7d7038eb2e7791a9b9fca817c6ea84f`  
		Last Modified: Mon, 23 Nov 2026 21:12:46 GMT  
		Size: 104.3 MB (104295231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4d629bd351d4334e8653a193713adea42fce95b4b405cae3c6fe7794b4970d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad397a3210d4ffa1050ca3199f194bd12fd137def97372e4bd94c05f0dcd17bb`

```dockerfile
```

-	Layers:
	-	`sha256:86f98779848f6f83f8f44bb50d848a09eb92b96805fa6fc593bae2bce96dc0a5`  
		Last Modified: Mon, 23 Nov 2026 21:12:44 GMT  
		Size: 5.2 MB (5204226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce37d513bccebb657647d00b5858c4eb77c306eb50dae5e3824bf239b101dd63`  
		Last Modified: Mon, 23 Nov 2026 21:12:43 GMT  
		Size: 9.3 KB (9347 bytes)  
		MIME: application/vnd.in-toto+json
