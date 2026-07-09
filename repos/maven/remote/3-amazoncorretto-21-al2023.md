## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:a0eb8149c14e053a80280c88d3e43c89ccde6761b651d1ce70aadf12c881d876
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:cdc46161a06c82754ed30fd0b6797133c625fbf1a349bc8b2d0fd75307d8ad87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378480451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2424dfd542e4b75774dbcd5131fa4b96dd9c95ec556aa24911ca1a19716a4c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:26 GMT
ARG version=21.0.11.10-1
# Wed, 08 Jul 2026 21:12:26 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:26 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:26 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 08 Jul 2026 22:14:19 GMT
RUN yum install -y tar which gzip findutils # TODO remove # buildkit
# Wed, 08 Jul 2026 22:14:21 GMT
RUN yum install -y openssh-clients # buildkit
# Wed, 08 Jul 2026 22:14:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 08 Jul 2026 22:14:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 08 Jul 2026 22:14:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 08 Jul 2026 22:14:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 08 Jul 2026 22:14:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Jul 2026 22:14:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 08 Jul 2026 22:14:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 22:14:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 08 Jul 2026 22:14:21 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Jul 2026 22:14:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Jul 2026 22:14:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Jul 2026 22:14:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b619e5be0269b10603476ca6f4063bff803374451922272bb88986e553bee05b`  
		Last Modified: Wed, 08 Jul 2026 21:12:50 GMT  
		Size: 170.4 MB (170443269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcbe3096fb0f1598dfb8068275aa4305bd1fcc7520e4dede80dcff42bcf1b0a`  
		Last Modified: Wed, 08 Jul 2026 22:14:41 GMT  
		Size: 131.6 MB (131575985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f7c547bf05c3ba7d9fe93c7712a8c1862f3b8508c36bc406dcb55e8b9f84ad`  
		Last Modified: Wed, 08 Jul 2026 22:14:38 GMT  
		Size: 12.5 MB (12526065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350c1affdd185ee3b5ca187bc96ddc66ffdba3cdd51ed7b4229c2696e7bfdd26`  
		Last Modified: Wed, 08 Jul 2026 22:14:38 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af2edc2daf6dcae588a788ec6a5b05b3894f67f728a19e2e4828f0539eaa55d`  
		Last Modified: Wed, 08 Jul 2026 22:14:37 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92debcf0661a865d883c67d8457107cc5351d6e898d9fdfaf4b14b746c8e85a0`  
		Last Modified: Wed, 08 Jul 2026 22:14:39 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:d0911a7528b0be1a2b8e42642921f31ea3341ef59217b5a923045b2284c39da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e6d98720dfff533b607e8896914f9cc4f1aea36eb132da24ce75832f3365d7`

```dockerfile
```

-	Layers:
	-	`sha256:0d350db23fdf131b593363acbd2b6b1e6e18be986dc08f8a22af82da832243a4`  
		Last Modified: Wed, 08 Jul 2026 22:14:38 GMT  
		Size: 6.2 MB (6248259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab512895f03e4e1a32d9d2b23d9f22c1092b1ad441bfdec67850c290c981a53`  
		Last Modified: Wed, 08 Jul 2026 22:14:37 GMT  
		Size: 16.3 KB (16289 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:6c5b579b2b943b1d1b25acb1ea0ff868bf8317f3069a8a2be2ac563e6a3072ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.4 MB (374446174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2732fbd49ab4773d9fab00069907ccde115092c79452e93cbd0dea201c838c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:21 GMT
ARG version=21.0.11.10-1
# Wed, 08 Jul 2026 21:12:21 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:21 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:21 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 08 Jul 2026 22:14:33 GMT
RUN yum install -y tar which gzip findutils # TODO remove # buildkit
# Wed, 08 Jul 2026 22:14:35 GMT
RUN yum install -y openssh-clients # buildkit
# Wed, 08 Jul 2026 22:14:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 08 Jul 2026 22:14:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 08 Jul 2026 22:14:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 08 Jul 2026 22:14:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 08 Jul 2026 22:14:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Jul 2026 22:14:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 08 Jul 2026 22:14:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 08 Jul 2026 22:14:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 08 Jul 2026 22:14:35 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Jul 2026 22:14:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Jul 2026 22:14:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Jul 2026 22:14:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17250871cc0a8d8fdbf0f189699db337c40f68f5cf30aa81ae111495c9ba300`  
		Last Modified: Wed, 08 Jul 2026 21:12:45 GMT  
		Size: 168.7 MB (168719127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2e900f5e54b7a1d5af705b4ac68640a2083b1fb6d7a88492cbea0a7051cb789`  
		Last Modified: Wed, 08 Jul 2026 22:14:55 GMT  
		Size: 130.1 MB (130137499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d80ca3feba0e394d2f361cde2875bd37426a164154ccfcce8a797047541bd21`  
		Last Modified: Wed, 08 Jul 2026 22:14:53 GMT  
		Size: 12.8 MB (12779631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d499167f39395ae4935b567bfad836fd2c0a5f785652f3f04dfd86bd36c9e0fe`  
		Last Modified: Wed, 08 Jul 2026 22:14:53 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e767929ba1ff97fac26fcc846153300e8bcc08f50f5aade778a4500826a858`  
		Last Modified: Wed, 08 Jul 2026 22:14:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36bdecbfc3472a5a832c44d13def42ee0b648c8e2721ac4989073e6341be10dd`  
		Last Modified: Wed, 08 Jul 2026 22:14:53 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:c46b7e196e21524b984a7e7673cf384d0313b3317edd883958cbc0a133ea56a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6263630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61ba453685c3faa529a3969a3fb955f35a7d7b835df30ecb569c0c23e457f9c`

```dockerfile
```

-	Layers:
	-	`sha256:92b75f0ed9405c275b6f82b1949240314261c0ed393033506677b491b73ab9db`  
		Last Modified: Wed, 08 Jul 2026 22:14:52 GMT  
		Size: 6.2 MB (6247193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e10abb2e5208a7146f0713edfd9818337b9972c66684890a8ce2358c067fed8`  
		Last Modified: Wed, 08 Jul 2026 22:14:52 GMT  
		Size: 16.4 KB (16437 bytes)  
		MIME: application/vnd.in-toto+json
