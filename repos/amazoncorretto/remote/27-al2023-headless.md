## `amazoncorretto:27-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:9c4bc2122b86ad16e7f7059e1bc388571acae8ed5ce9be4c764f74ba3bed2f5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:00939e1e81a23ba3a993e603015fbe15d31762909afeefb954f7d691464c0b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159611634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d042746763f99f190bf3bcd3c8998e8a3778d48978684f78653ad11acddfe4bb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:23:37 GMT
ARG version=27.0.0.35-1
# Thu, 17 Sep 2026 22:23:37 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:23:37 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:23:37 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:23:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8638fd57751e613d85265de0a317359010a6ab0ed9781eef9e07392a98c5121`  
		Last Modified: Thu, 17 Sep 2026 22:23:57 GMT  
		Size: 105.0 MB (105025352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:74b9660c0d9bc43425a3093002e881b0e8ebd950131649e36b8e469a2d5ae079
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55253ad3887fbb3dc7f0ca544255b1ac692251ec6e7772df85ae2f83cac76e26`

```dockerfile
```

-	Layers:
	-	`sha256:179ddbbfb3ec8ead50eb23e7c79e2c790501a1499e0fea606cce46f71ff76fcd`  
		Last Modified: Thu, 17 Sep 2026 22:23:55 GMT  
		Size: 5.2 MB (5205389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88329053d7670cf51f0c99db73d6064cb85f2b09e6535da43f310bf8118927aa`  
		Last Modified: Thu, 17 Sep 2026 22:23:54 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:53c2063712296e399b4bbcaf7b8272be5af7197de0587281fbccb72c8b898f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.4 MB (157375577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ec6eb26a0a27d43cbce5086fc4fcab8ee1042c295ee10496c50adae35a0af6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:50 GMT
ARG version=27.0.0.35-1
# Thu, 17 Sep 2026 22:47:50 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:50 GMT
# ARGS: version=27.0.0.35-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:50 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d8dde04797d4a46186d8be4d5227ea433d74a327074ba525c62e9f2f1dda59c`  
		Last Modified: Thu, 17 Sep 2026 22:48:11 GMT  
		Size: 103.9 MB (103923004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee572e2f02bb5daa80735edf60ec51788de11a5f5492be00261bf48bc22fdf97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ec2d4d8f0cf4f882c2ba0f0a7466674b17667ade830c19e14225aeeec55e59`

```dockerfile
```

-	Layers:
	-	`sha256:77b09b3aaf2fa0965609800e10bb53c31b17215e99f0e812dc2cdab2755a0858`  
		Last Modified: Thu, 17 Sep 2026 22:48:08 GMT  
		Size: 5.2 MB (5204197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4b3703a2e13285710be918f3213bcd057e066f50a5c5f8d836d5665d3e82966`  
		Last Modified: Thu, 17 Sep 2026 22:48:08 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
