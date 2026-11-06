## `amazoncorretto:11-jdk`

```console
$ docker pull amazoncorretto@sha256:9fc81b804b0f0ad3682a3cb42fe32a1e6758ab34162013c33ac42baba1b6ccec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:43a10015922b07ecb822e2677b84e9446bb45be95d86ebd5c216f8f77173e87b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208117227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049704fa674b4496a0ed1ac004272a5eee1b9afde99e0e0c6330eeac92a56a66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:50 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 19:58:50 GMT
ARG resource_version=11.0.33.0.10
# Thu, 05 Nov 2026 19:58:50 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:58:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829923f51447e70b16db5ba72165325137a172a4e9d47039e159266dc5ddea54`  
		Last Modified: Thu, 05 Nov 2026 19:59:10 GMT  
		Size: 153.5 MB (153547612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:efa84d2210cfbeb252044cc4dd3fe48a5c5dee8f98f97a82fbd5ffd2d2383e51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5364680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec7959fd450a30b02611cc494e5ac69438c015fdcb67f8763a65cac9fbd4d4c`

```dockerfile
```

-	Layers:
	-	`sha256:7498ba51b637799ccb988fbe2e318c6f1f0a9fd824c53ca8924806d19f3428cb`  
		Last Modified: Thu, 05 Nov 2026 19:59:07 GMT  
		Size: 5.4 MB (5354188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d5944c6fe206681a157889b995b11a8261eadb77cd613b4790c8b9a7fb794f7`  
		Last Modified: Thu, 05 Nov 2026 19:59:06 GMT  
		Size: 10.5 KB (10492 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:64aca734373e18ab8d614d69d1af777df947d525c25ea0efec50d222058fe6f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205569915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823a37232e4fb3882dfcfc9f7dffbe4c7b2f7ef899a10ad1a11a3f8380994e2c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:22 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 20:15:22 GMT
ARG resource_version=11.0.33.0.10
# Thu, 05 Nov 2026 20:15:22 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:15:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc19f7e605370d13035b5039c533f4ae0027f117c99efa1c5ab3621bd648334`  
		Last Modified: Thu, 05 Nov 2026 20:15:44 GMT  
		Size: 152.1 MB (152113792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c097eec25b5cf77360aa7eccf6e5ea41ce18114557be2ada482c86a2f107d01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5364618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044f15ac943174022ad02f3ebce03184c9b5f422fad664556640117846e24c9e`

```dockerfile
```

-	Layers:
	-	`sha256:abd9b3f11a41f2128e7f8b4680a65e80c21fce9593479769f18c4c652c1d9df9`  
		Last Modified: Thu, 05 Nov 2026 20:15:41 GMT  
		Size: 5.4 MB (5353998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:862ea1add0c43684f56151e8481a05975ef1eff958be384df66ec4df60e2587a`  
		Last Modified: Thu, 05 Nov 2026 20:15:41 GMT  
		Size: 10.6 KB (10620 bytes)  
		MIME: application/vnd.in-toto+json
