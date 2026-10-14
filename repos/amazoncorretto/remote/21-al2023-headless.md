## `amazoncorretto:21-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:08910e60f078107257de7974b8a8bfa1fb328878c1238e5fc4946d795005a33d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3b89af1f44fadf14425beeec69e6c87adf87896e89e87e7270320bfaa08acac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144007740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5aa4b2d4ffaf7906c3a849b78e144fe125e4cb85e823a3482e226fa5507a4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:33 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:33 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:33 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:33 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc04cbd0b95fdf8ca066b0a009493a787bbfe2a754b80d5d26d6d4609afe2d6`  
		Last Modified: Wed, 14 Oct 2026 17:08:51 GMT  
		Size: 89.4 MB (89376970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0de647afa3a4b2cdf9148e7c1c7836190e3b6819a2514b5ecb01271ef013d256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81a69ad42d4aae0b04dd38a8643dcbdeef3124bc279e5030ea03f1143f9149b9`

```dockerfile
```

-	Layers:
	-	`sha256:f9318614265a5bdb5627691bc1a4fed1a724295e30ea5e2e9ba83641f7804fed`  
		Last Modified: Wed, 14 Oct 2026 17:08:49 GMT  
		Size: 5.2 MB (5198738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6165aa6b3be00f441b799c0e1e7d58acb938c7f071aaf886d39b17476cdc6e56`  
		Last Modified: Wed, 14 Oct 2026 17:08:49 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b529a5e3682c34bd07c076382ad599a3cff8c6daab030d1a93c1fafea5ef599c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142015056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:229ec1ede0b393016a4c9b59971312efad15e62c3bb21acc91612120c0f7c294`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:17 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:17 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:17 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:17 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22da742d93b938ee1c162df6329e512723261761701e11db8802b85ae85902c`  
		Last Modified: Wed, 14 Oct 2026 17:08:36 GMT  
		Size: 88.5 MB (88510658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5c701608cabbadced3e1367d5eff9e1f062590bf917e69815ef06963a1f4dfd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1e3e48247fde19bbf58f3f4b1d8517cdd58dc82f5567d40304efd6fbe1b132`

```dockerfile
```

-	Layers:
	-	`sha256:1ad7c36f3a6036a56f32b24e38bea376cd8543ad37ad0f1abdad3bdefc7991ae`  
		Last Modified: Wed, 14 Oct 2026 17:08:34 GMT  
		Size: 5.2 MB (5197541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94251d450551e7b0054b206c7990e094e7acbb09926e748d32acd9b2c245cff0`  
		Last Modified: Wed, 14 Oct 2026 17:08:33 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json
