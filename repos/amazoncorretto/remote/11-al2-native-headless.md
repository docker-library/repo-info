## `amazoncorretto:11-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:9b0d53cd12d4e8875329273d61d5dca29bd87e70a2f06ace001637fec081d9ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a9ea0fa78d94ee885bae7364621772ff26593df0d55a50054c8d6e189a0600b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217376717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd185665cea0059e838205a84120f4a08074117911ad1ba664fae92fc0ab2d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:32 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:32 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:21:58 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:21:58 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:21:58 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:21:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026c60f8170715909cc6d3f850978ca2d3d23fc3328d2a1e8d8a250f27b5d27a`  
		Last Modified: Thu, 17 Sep 2026 22:22:19 GMT  
		Size: 154.4 MB (154412121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8dc57320b42492b1891c60b3ee3d1d2e6e7222af880429868d55da1383435cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5692898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebb89a0efab601309ddf5ac6c990a84afc48bef535cecd5da72d71dd1412139`

```dockerfile
```

-	Layers:
	-	`sha256:52617cfcb1bfd88887408b271851f504c2d071ff77264947c784a233a6b32164`  
		Last Modified: Thu, 17 Sep 2026 22:22:16 GMT  
		Size: 5.7 MB (5683436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98d453ba3a39f5604f0e10d914609d042bd66cad77a3a17beadef68532424a63`  
		Last Modified: Thu, 17 Sep 2026 22:22:16 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a1c0ab2543a9eb0365ec10ad4d65c081129879a47d1ef81b14adfa92451f9de3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211417737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47144c51155481238e2f7dcfb916cd0a96bc25619831dd435e1acab2297b5a87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:58 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:45:58 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:45:58 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06203fd930fbac822e9a8ba10ebb94064e483e21cf957e88cc496c1205e8aac2`  
		Last Modified: Thu, 17 Sep 2026 22:46:19 GMT  
		Size: 146.6 MB (146612636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:898ff6e9e0e5834a54f9557d78ad7e18e717473166309aac919187b6761ff8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061152b200135370e78e30425e9df3e5d75a30e439962bb4f8ec58ea1d8501ee`

```dockerfile
```

-	Layers:
	-	`sha256:78d8d3e469aadc39dd3fe825657d292721aa91049907215fd80a5dc996b9a543`  
		Last Modified: Thu, 17 Sep 2026 22:46:16 GMT  
		Size: 5.5 MB (5501904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7b078f81938e6a0286b999f1618cb0a488fb5352ec310c5e134447c17e9f8b0`  
		Last Modified: Thu, 17 Sep 2026 22:46:15 GMT  
		Size: 9.5 KB (9542 bytes)  
		MIME: application/vnd.in-toto+json
