## `amazoncorretto:11-headful`

```console
$ docker pull amazoncorretto@sha256:8aeee6d1d2d00801402942c3c79f18b54aad0ba4d5639c4f78f852235b6413c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6528714187ae105cd3923ad2493c0245eadde54b49d702e2791a0ff712c6c251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131446861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad6d86b9a41d0780d6b445a4966dfc054ddc5d35da67513e60fcd8cd0535940`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:00 GMT
ARG version=11.0.33.0.10-1
# Fri, 30 Oct 2026 19:44:00 GMT
ARG resource_version=11.0.33.0.10
# Fri, 30 Oct 2026 19:44:00 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:00 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbedd33b2d374613b7834e9d013c146d491871b97b1c6c72eb646a555fe6d673`  
		Last Modified: Fri, 30 Oct 2026 19:44:16 GMT  
		Size: 76.8 MB (76797941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:60d2c6c60f8264260eaf9aeb232ef119e7365efbd2daf15ec0e43e7daad3a5a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed8432ecd2f94cba5782a1fc38fc98718ad6af0f734e4ca21b346dc6c027a41`

```dockerfile
```

-	Layers:
	-	`sha256:4657f28a7b9c39b1142d58cab8705161b356a142b84311eb9c821f964ceaf403`  
		Last Modified: Fri, 30 Oct 2026 19:44:14 GMT  
		Size: 5.2 MB (5235647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c66fb00dc14dab35e9b690d2511055aa6b4074bbf98b62cb4757e8d990f423a`  
		Last Modified: Fri, 30 Oct 2026 19:44:14 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:37604f10a0086eb13e3e80a86948b150b1c4878251b4637e68c656180d9074da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129582897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085a1ec57b873bf0e51e4627ea296efab64c9adc9d83ba513ae09818ef2349ee`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:56 GMT
ARG version=11.0.33.0.10-1
# Fri, 30 Oct 2026 19:43:56 GMT
ARG resource_version=11.0.33.0.10
# Fri, 30 Oct 2026 19:43:56 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:56 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb46492d3496d0d9eb611c5cb354a84fa66946247d1eb04ebd05669a045bf3f`  
		Last Modified: Fri, 30 Oct 2026 19:44:13 GMT  
		Size: 76.1 MB (76053581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c89ba86bfe75228c96e798ea0544c2f6fb8e77ebd41fdfda1da168e3028f1a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cf6100ba5fd9394f032d651371bb2024267b964554622aa046c2a68dfb2d74`

```dockerfile
```

-	Layers:
	-	`sha256:3326b8830baa2554a492a19da5803b320de5d51b9176f8aea8403a87d4f95595`  
		Last Modified: Fri, 30 Oct 2026 19:44:11 GMT  
		Size: 5.2 MB (5235280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b87c15786804a9ab2e693ba2a7a55a9fe9db9800f4abd710b078be215f4cbf21`  
		Last Modified: Fri, 30 Oct 2026 19:44:11 GMT  
		Size: 9.4 KB (9383 bytes)  
		MIME: application/vnd.in-toto+json
