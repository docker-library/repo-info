## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:b5168f7ba2d57913d9cf8adf5769fe03ae5b1f531dfa153cfea4c0e3f301581a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a2fd45764b13b203b28ac804c1665e665e9cb3cbda55aef057afeb895c98f07e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150569315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148fc9cad87f70bd8210e1c07d3bb548ebd252ced03e830ba8efd42611c7d685`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:54 GMT
ARG version=17.0.20.8-1
# Mon, 27 Jul 2026 21:36:54 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 27 Jul 2026 21:36:54 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aded94fc6716d83ee1865a81b72e25452fd0b8a786190f43f29701948f4909d1`  
		Last Modified: Mon, 27 Jul 2026 21:37:12 GMT  
		Size: 87.6 MB (87612494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:05603a3d82416aa5672fc88077dfba8e78db350b2e56c772c6008fd52e01c261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc77aa90f2b42c1cfb5252c9cba126995d41120f3d96593e86f7dd703b51993`

```dockerfile
```

-	Layers:
	-	`sha256:7ef5bd3390e8dbbf857e5260201ef89bc10acdec5d78c823f03ebc0a07facfd8`  
		Last Modified: Mon, 27 Jul 2026 21:37:10 GMT  
		Size: 5.6 MB (5632679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:802a4127720868f71ac8afea3415da2d8d612bbb34c45617b7b4ccc226ae4059`  
		Last Modified: Mon, 27 Jul 2026 21:37:09 GMT  
		Size: 9.5 KB (9459 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:322d1e45fd6d3e9c47c89f57aa3de0e25230be885442bb51cb109e1f4b59f29e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144564719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c48cc2f85edf2d898de68eff74f50153c7939f951d7e6a9125754569acbe59`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:58 GMT
ARG version=17.0.20.8-1
# Mon, 27 Jul 2026 21:35:58 GMT
# ARGS: version=17.0.20.8-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 27 Jul 2026 21:35:58 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3850cb04ffb4f6a4d61e04c9d68f08931f8e117ae16c5f7a6c03ab44d786d24c`  
		Last Modified: Mon, 27 Jul 2026 21:36:15 GMT  
		Size: 79.8 MB (79764655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:344f8e63615a51e474cd41f2d4349ee614f395b4ccdbc63f03870990f49972c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3379acfc711d537530cdd9afbec0a5502bc2eda625560cec8d8a7c1bee50c483`

```dockerfile
```

-	Layers:
	-	`sha256:d114cc9d47e1434fe40edf19fbfd18c305038b47bc81f805329830aeded117f0`  
		Last Modified: Mon, 27 Jul 2026 21:36:13 GMT  
		Size: 5.4 MB (5448956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c002a8c1232a7d4004538a2dd8408bebd626a554f741b111aded687f2f68f8b2`  
		Last Modified: Mon, 27 Jul 2026 21:36:13 GMT  
		Size: 9.5 KB (9542 bytes)  
		MIME: application/vnd.in-toto+json
