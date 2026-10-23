## `amazoncorretto:27-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:5462742fca42edcad4e8539e55f3b18efeeef41637f1cca85d8dccdb666165db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:67846f608ea48b3a601855a66dbf82a411fcdaeb559af0136010a06b0656aacf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.7 MB (159703190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31a34e05e09e84822f787150f5eaffe000b575bad164c8d83f14c142d72d227`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:28 GMT
ARG version=27.0.0.36-1
# Fri, 23 Oct 2026 01:11:28 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:28 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076fb346e4793c0c1cc2c301bbc6a8c108674991bb4c3c87948ec3d9dc1ff40e`  
		Last Modified: Fri, 23 Oct 2026 01:11:46 GMT  
		Size: 105.1 MB (105054270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5fdcf123450a7f148a17d957437e63e58da997a9f5ded27de250e5b603e79364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474b65fbf6ad1f76bdd7e7962c90d8f5df98a9317c3f0cf6279fe2f367bb1a60`

```dockerfile
```

-	Layers:
	-	`sha256:8bb86951f186d10159f4ef5101eba1efad887059ffd7cebc3cc9f9b1d25a9cf4`  
		Last Modified: Fri, 23 Oct 2026 01:11:43 GMT  
		Size: 5.2 MB (5205390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbf5dfc5644cd37b943e1e9ef4e0b249fcd8c836a4efcaeafc994b080e1f836d`  
		Last Modified: Fri, 23 Oct 2026 01:11:43 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c16beab13b84e9833d94971450b61610f16e6775f2dfda716f0ef462c6649525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157491413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e139073b583a2c637e037a1c9fb2eff4021f09ce515aa0c42d8d5c501e7065fe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:30 GMT
ARG version=27.0.0.36-1
# Fri, 23 Oct 2026 01:11:30 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:30 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:30 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7061f36dfa6d9dda5a66e5c1919a31d8e0fa13d0cad298447c012c085747fc34`  
		Last Modified: Fri, 23 Oct 2026 01:11:50 GMT  
		Size: 104.0 MB (103962097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8ae090a32b115db3efea318efd11b572db30a281c6505f1dcdf26f2f13f4093a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692e51bccf1a050ac03099f14d56d8b6da382bcecf741d22a632289ab8096981`

```dockerfile
```

-	Layers:
	-	`sha256:d3fb89e33acbc74d86ae3613daa0b171fb9aa8d57377b5fefc07017f45f9eb39`  
		Last Modified: Fri, 23 Oct 2026 01:11:48 GMT  
		Size: 5.2 MB (5204198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bfde2d3d6f1b2aeb86eeb17887697111a96e95d864bd550225b204cc86d4c19`  
		Last Modified: Fri, 23 Oct 2026 01:11:48 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
