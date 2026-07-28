## `amazoncorretto:8-jre`

```console
$ docker pull amazoncorretto@sha256:517d704297043e70ac3ce78423dd810a699193e00b1ab448562e6b5d1debcb91
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:52b3664b135ff432d4e7f049800e0a8c85b83b90919c2e946a833f79f5cae84d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109279757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9f4ca2785435def37df58f28c4359342dab0665bfcecebaff360f7f521a688`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:52 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:52 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:52 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa9e9ba4078e57371e5c3973a78a102489a28fed0f4480bcd01f31e40370f9e`  
		Last Modified: Mon, 27 Jul 2026 21:36:06 GMT  
		Size: 54.7 MB (54707073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:343500132d00c0745ed53fb3ba41d60c608bbc5a025a845413c050ec78eabcd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32141546605b77050b0eac8a18cc1e3d6f3c547f5760557f7d24d5c0e0599f8`

```dockerfile
```

-	Layers:
	-	`sha256:8d18f419052e37d7da474da44b1c6c2695bb901205433850417a8f717cf256be`  
		Last Modified: Mon, 27 Jul 2026 21:36:05 GMT  
		Size: 5.2 MB (5218260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a8f23d657cf8b9eb79ec81d31e5b1001ccfd2cb70c1ff32ee6857bbc7c731e7`  
		Last Modified: Mon, 27 Jul 2026 21:36:05 GMT  
		Size: 9.8 KB (9787 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4ade7f97df77b28dfb583e52eae18471b8bf2d777884ab2377ef3799b6c7a99a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107883776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb6389cd27aecf3e62a7d5c3565470011671ad9085b594037bc87d029caf560`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:17 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:17 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:17 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b7ba4260d4be6405c01091a140b47a3053553984f64bab492550e58990bc3d`  
		Last Modified: Mon, 27 Jul 2026 21:35:32 GMT  
		Size: 54.4 MB (54434165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5e684e694f7581d255871c2b14895af8bad670bd448e51989bc8de58af15dc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5227832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34df1e7436ea9894884da090cbee3683442043db286c6772f5ac2e0f2a19376`

```dockerfile
```

-	Layers:
	-	`sha256:fa2a57e28181e337c5951077f7614ad7a3e7f04a57d31e6d51fad4ec1b348ae4`  
		Last Modified: Mon, 27 Jul 2026 21:35:31 GMT  
		Size: 5.2 MB (5217953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8f71a893402af0c8ec2ac772fdd6d831046816de8d1bf84bd3ceb0243e9b9a3`  
		Last Modified: Mon, 27 Jul 2026 21:35:31 GMT  
		Size: 9.9 KB (9879 bytes)  
		MIME: application/vnd.in-toto+json
