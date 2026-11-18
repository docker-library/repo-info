## `amazoncorretto:11-al2027-headless`

```console
$ docker pull amazoncorretto@sha256:42e62ab62587594c0b1724bc010563eb438faddef3b7d9c9bf1c47fee2cc2cc7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2027-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ed1e504eabe1ac1a3c793d34ad557c01c53e6652a1b5e9f96535265f6e009b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120613297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561cabcb962dc44f026bc722fc36987e198ba38951fa6dfd9288f2eaad0089c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:55 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:17 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:17 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:17 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2027.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:46:17 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:e43bb5ece49fe4502c2841836cf4ffad1dc6120de0f227b756223e07266ab90a`  
		Last Modified: Mon, 16 Nov 2026 22:29:07 GMT  
		Size: 45.6 MB (45615971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8e20cec1a42a96887af065b1fd56f60c4e4b51bc5a62ab8392781d77958277`  
		Last Modified: Wed, 18 Nov 2026 02:46:34 GMT  
		Size: 75.0 MB (74997326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2a4e7a948bef8f023a5a629a70c8d8699345dc1141441cefd46dfa7aba1605f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2967893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4709e41f2a0c707c83ae4d030a09ac81a8f0dbd1c1743a154cba0a7472ad1136`

```dockerfile
```

-	Layers:
	-	`sha256:9f6188d64b816683d3acbbd48184920d168fbb19f689f8ba0889b500586bcffc`  
		Last Modified: Wed, 18 Nov 2026 02:46:32 GMT  
		Size: 3.0 MB (2959037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e642486d65d7b2a9c75726e5f28ede07740e2a22293f389d3e945c07f13246bb`  
		Last Modified: Wed, 18 Nov 2026 02:46:32 GMT  
		Size: 8.9 KB (8856 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2027-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:543f5b71b1db5ec6171586854f710f938ca2bb6259fa834912634b0557494c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116337586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac7b6e18ecacea824ac08d885a773b222f7fb73739c8bc3199c232218586319c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:44 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:24 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:24 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:24 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2027.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:46:24 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:eab53fa5f0ecf83b375accc23bd73cb37261345918b500ae2e5236dada25e73d`  
		Last Modified: Mon, 16 Nov 2026 22:29:55 GMT  
		Size: 42.6 MB (42618927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f13d48dd7170a5896788be10753c63b370393b06fe00331c0f551af44abbc9`  
		Last Modified: Wed, 18 Nov 2026 02:46:40 GMT  
		Size: 73.7 MB (73718659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:32e58c8a987b6df97e196fa25f88a71b13a2671cf3bc1aa76c003fd8d1b4bbd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2968127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fd15e5501d8cef232c18f80157ade11e5a847ddaa026a0194bc785be5a507e`

```dockerfile
```

-	Layers:
	-	`sha256:ffbf67aef8c7d4de46fb582de76b5f23af1035bc159b255e8301f6ba0019cf8f`  
		Last Modified: Wed, 18 Nov 2026 02:46:38 GMT  
		Size: 3.0 MB (2959190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f86090743e4a09230d1eacbaaabfb473ef7db944a00826d675d63a13c20c75fc`  
		Last Modified: Wed, 18 Nov 2026 02:46:38 GMT  
		Size: 8.9 KB (8937 bytes)  
		MIME: application/vnd.in-toto+json
