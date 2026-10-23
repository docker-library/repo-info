## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:212faf5f8f93d8f4854a3d89528834d11ad2d685de80721d4d24ac2fdd3e379e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9c3149186fe3c375b8adf8f3078dd41bf1290dee9918908f0296a626b4f1eb7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144154230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed8c4ca59d2dbf0a3217ff1270a8325d64f7b0bf3db1aaaa82b3da696d4cd04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:17 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:17 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:17 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:17 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:17 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb9a0d305ff75a4cf9d620dc352329d74beeb16dd0889dde62dfb13f84307da`  
		Last Modified: Fri, 23 Oct 2026 18:09:34 GMT  
		Size: 89.5 MB (89505310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:224cfd7c663e3de8aeedfe893841105e21c925f3c0d1c1bd55d235106230d138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b594a2b2bba9e86fb7fd2e42740477c870c48644db63c70cec85ab6857627d`

```dockerfile
```

-	Layers:
	-	`sha256:c5e229af6dccad524c820e73ba7d56dbe150e3a5511fff10967fc6379eee95ae`  
		Last Modified: Fri, 23 Oct 2026 18:09:32 GMT  
		Size: 5.2 MB (5198738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9111fc2cbd437ffea6249feadbe0c4064ef1e692f0ea2c1b5e46dc6200a7ca94`  
		Last Modified: Fri, 23 Oct 2026 18:09:32 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:15ed642862b572c048c95492db06e382e2b2dfd3ddfc8be6fa7bcfa659878e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142173164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b972b7d1043c5b2c57d4752f3638b60a9527d9bfb150f9f968112f45ba8669`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:14 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:14 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:14 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:14 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:14 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b8c1445d9592f8e50f4159fc4c7f15097534ac4a5d730bf63e87604a3b8db`  
		Last Modified: Fri, 23 Oct 2026 18:09:33 GMT  
		Size: 88.6 MB (88643848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e4c558edafcb909aec73f45cb2929db4c91ba3a592285825ff3407b212429942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26bdc3ba8d6779f3fe39f2e8c5a1434953a60c2fc15276ce7c226101b83cc64`

```dockerfile
```

-	Layers:
	-	`sha256:9375565ad1972036d6c0684f14f47a6d8240f00379abe159d6f662b5f741f44a`  
		Last Modified: Fri, 23 Oct 2026 18:09:31 GMT  
		Size: 5.2 MB (5197541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5c112139dd84df40394eff73cdf253433d96f3c3ac75bba36bb585d0274beb4`  
		Last Modified: Fri, 23 Oct 2026 18:09:31 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json
