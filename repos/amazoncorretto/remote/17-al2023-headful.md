## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:1742570f255245c10b6969930a69072b61fa60698e3459d1ec04ae7ba44d49d8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fce316e72abc5f7921039195f4eff4a78d3ded3c3dc98ab189773532ebca92f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137914067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb3f966cb3d017ea17879f33e3145a1b5e3bb3a32408793408ac98bcd6236155`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:06 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:11:06 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:11:06 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:06 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:06 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c0bb5b7d9ccc0c182e0f45716dc05b49313861af6c4d2b6049a7d6029dc517`  
		Last Modified: Mon, 02 Nov 2026 20:11:23 GMT  
		Size: 83.3 MB (83344452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f570b96667285704a7f78947c26cdeb81bb78c6ac27670baef67bb8207fe67be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04674ee1a2e1718ef15e1cd9fc0d7f1a6045b04eb92a8aae2f574b06b9cd69e5`

```dockerfile
```

-	Layers:
	-	`sha256:8299df80bb0031b45952e524036e9bd98fa6cf09c02e59ba951f838b94276171`  
		Last Modified: Mon, 02 Nov 2026 20:11:21 GMT  
		Size: 5.2 MB (5222549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99cfbc6d75a00c44d1ef48523d8f5b57e48481d7b840695a2ffa83873df96192`  
		Last Modified: Mon, 02 Nov 2026 20:11:21 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6a8078c098ad0fb52969a63cb36423ae96b07934ca75f1500d2aa404252e8629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.2 MB (136240833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776279bed10ac4563ff4fae0d8a915a9df5c1d3dfe00e8153eeebb9c14c319d9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:52 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:52 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:52 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:10:52 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:52 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f335c34702c80f4443011d2007d742e9f85b3021434e9835754d00828525f2`  
		Last Modified: Mon, 02 Nov 2026 20:11:10 GMT  
		Size: 82.8 MB (82784710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0ee2b5823887e5c99e17a0ecfe10d65d2076ce0d9072aa60c80bfbc2b5e5eed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb0c365a4ae3e3d683bd6a4d21185665d9786819975fc5236152c388c77b528`

```dockerfile
```

-	Layers:
	-	`sha256:cd8af40c1d6052a4f3278c7935d288b0aa23144d5bcf6aa54fdd781e1b14f9ff`  
		Last Modified: Mon, 02 Nov 2026 20:11:08 GMT  
		Size: 5.2 MB (5221353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dc2e989374e6c402b1597ab3adfd64ee351590073a07db1267169313bac929e`  
		Last Modified: Mon, 02 Nov 2026 20:11:08 GMT  
		Size: 9.5 KB (9524 bytes)  
		MIME: application/vnd.in-toto+json
