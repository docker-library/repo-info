## `amazoncorretto:25-headful`

```console
$ docker pull amazoncorretto@sha256:e0a78e40366dda1a2fde75edcc7a17b04e9d9579d381ae70b41c52c843bd8958
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3fd514af02ae1408564907080c70281eac6211048675924ed3db6713a51c8669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159062993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd71d568a5c94bb04be5141768d7b24f2980f91ade139eb5df3cc3d1dc0b8b2b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:21:27 GMT
ARG version=25.0.4.8-1
# Thu, 20 Aug 2026 17:21:27 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:21:27 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:21:27 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b08c2d7f60351e87af3b84668aafa80cc06a5095f5fb99177d0185d8568a95f`  
		Last Modified: Thu, 20 Aug 2026 17:21:49 GMT  
		Size: 104.5 MB (104479146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ce604f2fabb4369fd5a15c0ebd3cdfbf38d9e5a85ea7b17f0336fd67e8d94955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88310dba7849ab186008b4bd56ee5da02e361b3663fd74ca413edafe77d2b3ed`

```dockerfile
```

-	Layers:
	-	`sha256:651958aa26ba671c3622415ee28484e526908509ca06494670cc48c76a4e536d`  
		Last Modified: Thu, 20 Aug 2026 17:21:45 GMT  
		Size: 5.2 MB (5234099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bebead88f3cb5f789e44f25a61ea2422e313ec160147b66a682563c9f15b81e2`  
		Last Modified: Thu, 20 Aug 2026 17:21:45 GMT  
		Size: 9.4 KB (9367 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:976a93af82da8c2cb78e8867795cf50378b1f4f4e9778117609d29ad0e3c1387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156838002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e15aee9c65db0a58839d06c50886ab8e36ba82b33d66dd66509224cbe50c1d6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:18:25 GMT
ARG version=25.0.4.8-1
# Thu, 20 Aug 2026 17:18:25 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:18:25 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:18:25 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39772ad00ad0f075dfbf609bdf608fd1e2e2afd21ec01636487e9eb8e0a2af9c`  
		Last Modified: Thu, 20 Aug 2026 17:18:45 GMT  
		Size: 103.4 MB (103387115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0aba8ef43c08d19c03303b47f7e7e236714085c5713e208e97b66a557d0d08e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16059b7a92034587cf63991d166461062bf3e04e8be60c2b14e8bb54419b8475`

```dockerfile
```

-	Layers:
	-	`sha256:51ce3d0a1d61426f9f52a423c7bc9cd82566bfc05e5525079d8d390aff2825f0`  
		Last Modified: Thu, 20 Aug 2026 17:18:43 GMT  
		Size: 5.2 MB (5232914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38903e4248dbbe96bb806e8df35111a4a2c0ab993451e58a8295840f5e4cdce7`  
		Last Modified: Thu, 20 Aug 2026 17:18:43 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
