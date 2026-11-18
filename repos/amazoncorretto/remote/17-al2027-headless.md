## `amazoncorretto:17-al2027-headless`

```console
$ docker pull amazoncorretto@sha256:99c3f86e8c2ccbbf72e188d4a5fb8bb7f427128bc19c26147e2a54ae4fdf8b66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2027-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e23ef430dd824af3ccf3c0905b998a35606da15914bc95040242fc2c7d049062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127081028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36a3b0ca5deae4b723d940ef67aa850dcf9910af0886880e1a0d38e096dab9a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:55 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:33:21 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:33:21 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:21 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:33:21 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:33:21 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:e43bb5ece49fe4502c2841836cf4ffad1dc6120de0f227b756223e07266ab90a`  
		Last Modified: Mon, 16 Nov 2026 22:29:07 GMT  
		Size: 45.6 MB (45615971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d651e89722a165d78645158ab103999a38790dfd8a1f46ee44b576100b816b5`  
		Last Modified: Tue, 17 Nov 2026 21:33:38 GMT  
		Size: 81.5 MB (81465057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:638c9a4d703de6bc1bcb17af40f5ac241ff39cf60de1ecdf06f49ec87c1976f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2954884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf803652a35cc63b70615efcf8de5359d63a98f13ea9d4e55e58a082c07f9268`

```dockerfile
```

-	Layers:
	-	`sha256:f0cea7707087108a470eefa12271284b5ae23996fbecc556c650df0a601488e4`  
		Last Modified: Tue, 17 Nov 2026 21:33:36 GMT  
		Size: 2.9 MB (2945929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3198dd882874d1c2caf955d6016eab14e91e6b69965e4d56b982cc05c1d0fd0a`  
		Last Modified: Tue, 17 Nov 2026 21:33:36 GMT  
		Size: 9.0 KB (8955 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2027-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:acc93aa2a1b2f70f98a7291354840748f1f2576e502b30b79ea263bab475291f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123010920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef022cf070bbe2dca1df4596f4c5c31446569ab788bf94afa676ff918c97303`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:44 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:32:51 GMT
ARG version=17.0.21.1.2-1
# Tue, 17 Nov 2026 21:32:51 GMT
ARG resource_version=17.0.21.1.2
# Tue, 17 Nov 2026 21:32:51 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:32:51 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:32:51 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:32:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:eab53fa5f0ecf83b375accc23bd73cb37261345918b500ae2e5236dada25e73d`  
		Last Modified: Mon, 16 Nov 2026 22:29:55 GMT  
		Size: 42.6 MB (42618927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dc92a98e57d7b943f6a3e0438e19a74829760d0ed51fa8b78a6e4453d059eb`  
		Last Modified: Tue, 17 Nov 2026 21:33:07 GMT  
		Size: 80.4 MB (80391993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2027-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eb1b9ce625d76b91ce69a31dcbc53a4a65ac0cb31093fc70553957e57f00d7f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2954289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dee7aa193b8ba179c868c7c1f522be8b13d61b807e767dd613b0d6724b79f237`

```dockerfile
```

-	Layers:
	-	`sha256:fc9f7c7e9a75f505ead1f77d937632a920cf69803d261c7069870c565d56b794`  
		Last Modified: Tue, 17 Nov 2026 21:33:05 GMT  
		Size: 2.9 MB (2945253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a65f2f51ecd5803715ac316235ff5ea7136aa359292f6d42aa11dbfd0f930bba`  
		Last Modified: Tue, 17 Nov 2026 21:33:04 GMT  
		Size: 9.0 KB (9036 bytes)  
		MIME: application/vnd.in-toto+json
