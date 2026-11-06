## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:607722709b505b0c4ab60dc89def4e52ab6b398f713b8dae031512ddf32e9d82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:249c8562d07956ea4afddc3eec9198cd59fabe0f996530feab7f716dac1ace79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144078499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a64f2e447a9b5a578550ed548e3353b263da2a6dfa37818fccc5c60c1fc94919`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:47 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 19:59:47 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 19:59:47 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:47 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf8c00186518b5fed32b815728ae770765baf092ce8895dd4ceb437270cd115`  
		Last Modified: Thu, 05 Nov 2026 20:00:11 GMT  
		Size: 89.5 MB (89508884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9d28c560eea23a8c735a36e76eb02e014fe39a9711bda3ecf10e1f1e70f47090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1739f208ec3269fa2ed0fb5a5a68f831b658cca9e6badd28134610e292ebf7ed`

```dockerfile
```

-	Layers:
	-	`sha256:fef558d222e705e5a9e04cfae9e867a314e4b149a5997282271e6ea03bef0603`  
		Last Modified: Thu, 05 Nov 2026 20:00:09 GMT  
		Size: 5.2 MB (5198744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cd65bbbc76787641242e5608b65dc47e4cbe9b55f67c750e9256127a5114a6b`  
		Last Modified: Thu, 05 Nov 2026 20:00:11 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3f6ccf18759444ec04f4c89f66072695c3d665277373c5bc1914c7e5ad161d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142100925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59aebb952de3693e0055581db8a18e86106e26ef0af89d2a11ba52cb5cc0317`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:16:24 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 20:16:24 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 20:16:24 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:16:24 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:16:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:16:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b99567957999b658c2cdd46ac317f7df28398ccec42647f86f98bd218d7c1b`  
		Last Modified: Thu, 05 Nov 2026 20:16:42 GMT  
		Size: 88.6 MB (88644802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:82546e6bc9dca3ecd78e3bf7f6bb002cb43f8e602dbf2a71248793cbf296c84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14bd9b9d209ff0947320c6a7947cfa4b48b638ea437f4a1e6883fd84d32e274e`

```dockerfile
```

-	Layers:
	-	`sha256:c07aacabb689514df7fd048018766df6c68899d945e73f496034c30c16748f22`  
		Last Modified: Thu, 05 Nov 2026 20:16:40 GMT  
		Size: 5.2 MB (5197547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45e77b9f16753b817d442c0d0cbca13b73634621b4d99ca19a1b77524c70ad5e`  
		Last Modified: Thu, 05 Nov 2026 20:16:40 GMT  
		Size: 9.4 KB (9356 bytes)  
		MIME: application/vnd.in-toto+json
