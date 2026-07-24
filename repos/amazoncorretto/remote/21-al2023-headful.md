## `amazoncorretto:21-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:b2fdbd874fd9ff6e1c7814b65d9f9f57b3c6458a4f22098ac9e9cf26fc4e9c0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:97cb2153de146f1071d504976fa842d9649334680764dab85cb6b581ccb2b393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144657752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e850e7ba7bb8795f39fc8e5ac084f3da6f1a61d3188ed045541417ff950a68da`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:49 GMT
ARG version=21.0.12.8-1
# Thu, 23 Jul 2026 23:12:49 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:12:49 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:49 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c391df85c17a3b2395854e79a23428d45084e864c0df7a36fcf3be674dac42b8`  
		Last Modified: Thu, 23 Jul 2026 23:13:08 GMT  
		Size: 90.1 MB (90083488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e768c79bd7fa7614f9de2484e8e1218e34b07ef7c94dc0fbd8003c5050afacf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f814cfa79eaf0abea7c8bbc3d8178cb8dc69576d38e6c60ef028e3edcd0a9e86`

```dockerfile
```

-	Layers:
	-	`sha256:9ceee782ec186c7c26a154b3d7df90235645ed529e92f68518438f9cc35d88f5`  
		Last Modified: Thu, 23 Jul 2026 23:13:06 GMT  
		Size: 5.2 MB (5224080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19d3746066195442fa844500837f5c1602b23ce89a18d195bcef4e04ae86fd3d`  
		Last Modified: Thu, 23 Jul 2026 23:13:06 GMT  
		Size: 9.4 KB (9370 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1216eee6ab2305baee79455af4a79f2e1ced4d20ce66694285caa7d3b81afa02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142667669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad39fd0c6abaf2be2384f00d56b1604a0c7f090ea6ca69cd956de190e662e3a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:14:35 GMT
ARG version=21.0.12.8-1
# Thu, 23 Jul 2026 23:14:35 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:14:35 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:14:35 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3705798011a6873ee32307d5ba59df652911cd33357cd22331937e729a0501`  
		Last Modified: Thu, 23 Jul 2026 23:14:55 GMT  
		Size: 89.2 MB (89218437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ecf4c1c7b9676ce45b32db5133eb587192bd35042b155f8e132d2729a7cdb0b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3115781b93a03efd46a27c2e83bb0b8c91679a046f7c97e3a148e6910325caee`

```dockerfile
```

-	Layers:
	-	`sha256:334f58a0a7ca3c2e98a496903eae0b810ac1865874483e4f6df145cd6d39184e`  
		Last Modified: Thu, 23 Jul 2026 23:14:53 GMT  
		Size: 5.2 MB (5222886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e6aa4116d998231da7bf3f1505d5805578875200caeba555d70ae63363894f5`  
		Last Modified: Thu, 23 Jul 2026 23:14:52 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
