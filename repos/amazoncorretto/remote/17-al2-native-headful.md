## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:0465ce4b468698b364e1069c20a46f64ce8bc8c39701e0009a5e21a4733e82ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e91ee415c753167adab6612838c2f48c82cb6cf1703f3b76971dfff2e48f861f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154317725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24cd911037200708da637f4e9895c023ab04c364d518735990d0a0ce21ce15dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:27 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:10:27 GMT
ARG resource_version=17.0.21.0.11
# Mon, 16 Nov 2026 23:10:27 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:10:27 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5ba5299ca72dcbc2ad34193b1de207b66fe2447a1b2ce5217733724fd4e70b`  
		Last Modified: Mon, 16 Nov 2026 23:10:44 GMT  
		Size: 91.4 MB (91388128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c9c37a031a9fb8d02f1e7e21b646cc82d2ceb73c2c08ec9643ced08ce7c0586c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b6b0f998be1ec69a21095b769be494db40a7c1e3566dc5af0a064769810744`

```dockerfile
```

-	Layers:
	-	`sha256:fa74788ab28bfadd35c156ee0fa3da8489e73c9f7309ec226bf1575843874ed0`  
		Last Modified: Mon, 16 Nov 2026 23:10:42 GMT  
		Size: 5.9 MB (5866780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61619398f9a2c2726b99448d3a8099aae50cf1e64a7cafc864ee7aae527a9412`  
		Last Modified: Mon, 16 Nov 2026 23:10:42 GMT  
		Size: 9.5 KB (9481 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:58c6ddba76be39109d59bf83e92521a49bbcf03a0be7fa0751ceea7b85c693e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146874287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78b5e0e28d9a2de65266c290d8a9e76a8d113e4466600bad0513b816fcc7b78`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:14 GMT
ARG version=17.0.21.0.11-1
# Mon, 16 Nov 2026 23:10:14 GMT
ARG resource_version=17.0.21.0.11
# Mon, 16 Nov 2026 23:10:14 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:10:14 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ba78617091b314ad0d48c0a3601bf19771c114be235108ec65da6acce71e98`  
		Last Modified: Mon, 16 Nov 2026 23:10:32 GMT  
		Size: 82.1 MB (82097885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:32082fe014a20188dace9b865ee6f979da79eef209fbcbdafc30ff5230ee0915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215b49024489f7bea0f1f0c2a3908841e26fcea066bdb42a610423a39f90f04e`

```dockerfile
```

-	Layers:
	-	`sha256:6310cb3f29c2a77416f9158cddd415d8da71d63567df858c9b8837c0f9a22f50`  
		Last Modified: Mon, 16 Nov 2026 23:10:30 GMT  
		Size: 5.7 MB (5658524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5fe8d98c39c5dd370f2ba3f2f4b5d69b329ada9c4576e3ac034c111499ec591`  
		Last Modified: Mon, 16 Nov 2026 23:10:29 GMT  
		Size: 9.6 KB (9561 bytes)  
		MIME: application/vnd.in-toto+json
