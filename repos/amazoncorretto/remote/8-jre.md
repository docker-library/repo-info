## `amazoncorretto:8-jre`

```console
$ docker pull amazoncorretto@sha256:52a39c4bd7cffdadb61cdc74039f0d1c79afe11ced09412fb4cbf646060e3a08
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c42ba408e9c14aa199af8d3dd592d04b1ff521c29d20895e1bb9e39e99c75b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109394863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f85ba6d44373624906ed0513ed857a53246756988db9cac11123fcf362f6a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:28 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:28 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:28 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b133006a629c29ec516124ded1a1b9a41e5f90329976614d8271aaf02a12c9a`  
		Last Modified: Fri, 30 Oct 2026 19:43:43 GMT  
		Size: 54.7 MB (54745943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6f9fb962d4ff6b338c59ba09ef21f3fd2f1978fe2b61ac37f16ed81fee3d3ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f74ed305dccafc25841d942ce849afd7ef46dab72545f7b3a0deb83adf927f9`

```dockerfile
```

-	Layers:
	-	`sha256:25f9d111cfea52366399bd5ed729418863e623bbbce23188d78c41249ecdfe3b`  
		Last Modified: Fri, 30 Oct 2026 19:43:41 GMT  
		Size: 5.2 MB (5218261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b59f3a1edc752b323af616db405e11af7ca111f4b9e6390e1f1150df9e908a`  
		Last Modified: Fri, 30 Oct 2026 19:43:41 GMT  
		Size: 9.8 KB (9785 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2b295621864aa9795b3ed053695af0027762516294092b9be4bbef17afdd9097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.0 MB (108009325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638fada6e12b0097219da884f49aee1761608b80d3620a7c584c605270bd50c8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:19 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:19 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6c460d94d6131d4b6f60910a307f27dbab818a461ff0071f6618ce238180ea`  
		Last Modified: Fri, 30 Oct 2026 19:43:34 GMT  
		Size: 54.5 MB (54480009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b94345036340946ab9839f7376dbbe40bddb92299a837490f16888570faa027b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5227833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c073e23fc6f05abac16e4ad7312aa11951cdc1056f3ef6e947c9c024a4b1158c`

```dockerfile
```

-	Layers:
	-	`sha256:693c4038a1cfa23918d1739cf9b88c647365e2d715e709e6f0ab00a34ad0965c`  
		Last Modified: Fri, 30 Oct 2026 19:43:32 GMT  
		Size: 5.2 MB (5217954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:416e7468b90b4b8791a06a4016169544944092f6b83c91c068d4f8ef25d9156a`  
		Last Modified: Fri, 30 Oct 2026 19:43:33 GMT  
		Size: 9.9 KB (9879 bytes)  
		MIME: application/vnd.in-toto+json
