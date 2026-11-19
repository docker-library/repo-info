## `amazoncorretto:25-al2027-headless`

```console
$ docker pull amazoncorretto@sha256:bedace5ff09325eacfc6250f451bb7d5294626a2fdc9af1bb0644be42b7f6d82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2027-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b697aef0c1d5920dc1d3bea5e012866fd4e165fbfb0c34517164916dbd4cc35b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148414753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d21de426842a7d909a5bb57db52f9eb04d396589c5744decd36c60e68f96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:10 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:10 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:03 GMT
ARG version=25.0.5.1.2-1
# Wed, 18 Nov 2026 21:35:03 GMT
ARG resource_version=25.0.5.1.2
# Wed, 18 Nov 2026 21:35:03 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:03 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:03 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:713da152d33274d711b748fa0018ee981140ec1ddea39655f9e477d1be7eccc6`  
		Last Modified: Wed, 18 Nov 2026 21:17:21 GMT  
		Size: 45.6 MB (45646491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f983f1507859a5cb3e4932b9073ce39ab93b4b7630f666bb96654f5b5b8180c1`  
		Last Modified: Wed, 18 Nov 2026 21:35:21 GMT  
		Size: 102.8 MB (102768262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:25439635d0070f4dad9b1b2f6f435938f7c857d7105606d5ccb44be333e40c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2966447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce067efe262cc7aaaa644efcc22771573b88ae834a54637bafe567cded2cba16`

```dockerfile
```

-	Layers:
	-	`sha256:63702f94334a971926ffc53ee9c302f13bc35351f5264e46dbd2c8f8b5409527`  
		Last Modified: Wed, 18 Nov 2026 21:35:19 GMT  
		Size: 3.0 MB (2957496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ffaa05677c96b98545f1e4b47674e45f7a7e049042d290fa614845a37f55388`  
		Last Modified: Wed, 18 Nov 2026 21:35:19 GMT  
		Size: 9.0 KB (8951 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2027-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f565a7e6fce695cceb199f8341f0fc3f636906e6685c7f327511c85ca1d70644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143709965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330b34d30d5bb821db7918f7826fdfc68764fe4ee7b474978f4fa0a451c031df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:14 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:14 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:37 GMT
ARG version=25.0.5.1.2-1
# Wed, 18 Nov 2026 21:35:37 GMT
ARG resource_version=25.0.5.1.2
# Wed, 18 Nov 2026 21:35:37 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:37 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:37 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:36b7d5c4fd450b30e5fc5b502fb784c91c3e88bce438c8709993b6db627bd46a`  
		Last Modified: Wed, 18 Nov 2026 21:17:26 GMT  
		Size: 42.6 MB (42641684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbe0db11210be40079f161db285d3c1b9f87c294597e6e730cf262436045668`  
		Last Modified: Wed, 18 Nov 2026 21:35:55 GMT  
		Size: 101.1 MB (101068281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9ba06f2e0dd7de3a23dafac358c101a4b35ad81fe59105a904ac76229267a3fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2965864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a367d5abf50cbae03a2a961a823088113fb0963c3934b53ccbe9d898acebb46`

```dockerfile
```

-	Layers:
	-	`sha256:1915a367657f1a679ac872fb3ebb0db568a19777ffb03e03171d8f561b0f3c0f`  
		Last Modified: Wed, 18 Nov 2026 21:35:53 GMT  
		Size: 3.0 MB (2956831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57aae8f4316e3a99ab36b5ca0b1550c999e87a08502a21ace2e4be93e3c9306f`  
		Last Modified: Wed, 18 Nov 2026 21:35:53 GMT  
		Size: 9.0 KB (9033 bytes)  
		MIME: application/vnd.in-toto+json
