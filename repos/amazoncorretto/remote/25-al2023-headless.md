## `amazoncorretto:25-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:0d3d2f19ec2b314c3e6d10f8781cbaf44900b9d6d73371cb069da3155e313063
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:718ef0958c210df8a799fce5e76c612cdde386898aa10b431c9b8c976394bc6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158506370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95ad176a3a73c10032e74304acc87de5a9e2289dc4a4260450ece88b0696afa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:45 GMT
ARG version=25.0.5.0.9-1
# Fri, 23 Oct 2026 18:09:45 GMT
ARG resource_version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:45 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:45 GMT
# ARGS: version=25.0.5.0.9-1 resource_version=25.0.5.0.9 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:45 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9e18b11d6c46bf03ebdaa938bf35770594cfe9baf969023ddc42f572fe0fcc2`  
		Last Modified: Fri, 23 Oct 2026 18:10:05 GMT  
		Size: 103.9 MB (103857450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:119a632f59a6a7b255e4834f9b21eb01004c51f702ae2c3622e10b436dbe49e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b912c6decb114267fb4163a04e675412b3168e33c5ed7acd8b7472176999189c`

```dockerfile
```

-	Layers:
	-	`sha256:64a55a46eda2440d0cfcfb259d7b25262c3ddf0817253e4f0fdb2c292fd20582`  
		Last Modified: Fri, 23 Oct 2026 18:10:03 GMT  
		Size: 5.2 MB (5208675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6f5d2d83bab5148f4443bf9acd39c7f0d58b87fa3779744fa155ea4c5a11909`  
		Last Modified: Fri, 23 Oct 2026 18:10:03 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3870a2d8b99c260292adb1a2c52fd3e8f40f7629098cbb5f270b37679c2648be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156296931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bfc853c73a929ec5e8b63a7f342098aeccdc23a5e268a3bb364e1fef48b359`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:33 GMT
ARG version=25.0.5.0.9-1
# Fri, 23 Oct 2026 18:09:33 GMT
ARG resource_version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:33 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:33 GMT
# ARGS: version=25.0.5.0.9-1 resource_version=25.0.5.0.9 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb350fb99ae7f0dc62fef981beebbdedef06e87d14a9f8c1f7afa27ecd22742`  
		Last Modified: Fri, 23 Oct 2026 18:09:53 GMT  
		Size: 102.8 MB (102767615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ea9650daa2be8c4e4b3889bddf7f5d6d5532f1e55cdfb6819a6c0ad8117eab47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d89b11728113756a016315e0082716f3dc80ed3972d23e7f84a122a873d553f`

```dockerfile
```

-	Layers:
	-	`sha256:87c987864ce362ad579a2398ddc4f3f0dcbafa8d943645fc7c2a8aaac74a39f4`  
		Last Modified: Fri, 23 Oct 2026 18:09:51 GMT  
		Size: 5.2 MB (5207487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c63f6421e8ff5480dbe91e66d01c7863e18a8c6baad82ed581abeb42106d503`  
		Last Modified: Fri, 23 Oct 2026 18:09:51 GMT  
		Size: 9.3 KB (9347 bytes)  
		MIME: application/vnd.in-toto+json
