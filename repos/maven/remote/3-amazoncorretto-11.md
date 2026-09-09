## `maven:3-amazoncorretto-11`

```console
$ docker pull maven@sha256:ca5efe42b0951302e3b032c4a6030e33eef7f84cb46c0e0f8f01a632714d081a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11` - linux; amd64

```console
$ docker pull maven@sha256:99397b6e4307d4ef2cd948e6e7bfbe0469b26157a3f884e0c6820ee6df43effd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.3 MB (371311395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9a37cbbf2762d09727b2663bce1b37e2fa8cc8da9ec87aa0a6b3554926d6fe`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:19:31 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:19:31 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:19:31 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 09 Sep 2026 04:41:23 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 09 Sep 2026 04:41:25 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 09 Sep 2026 04:41:25 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:41:25 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:41:25 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:41:25 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:41:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:41:25 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:41:25 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:41:25 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:41:25 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:41:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:41:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:41:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f327989489f429805e0feed4a0d3c5309fa47a4f9dc41f65db7ca5a9215255ba`  
		Last Modified: Thu, 20 Aug 2026 17:19:51 GMT  
		Size: 153.5 MB (153480563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e65045264153ab4aea3b44ecd7d85633cbec717b1ca9fa27d439539f39e881`  
		Last Modified: Wed, 09 Sep 2026 04:41:43 GMT  
		Size: 140.4 MB (140359834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3b394b3408ef4ee3234130354005afd02f9fa85c6a39fcfe60a75d69ff4110`  
		Last Modified: Wed, 09 Sep 2026 04:41:41 GMT  
		Size: 13.5 MB (13526186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a455838af3aca1448177dc6b566d9ec8cd036a3e9a39ada168686011ab59764`  
		Last Modified: Wed, 09 Sep 2026 04:41:40 GMT  
		Size: 9.4 MB (9359957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a087ea0a20c056d1a02805ceae9fcfa4790affc6d193f0a558233112b9bf7ec`  
		Last Modified: Wed, 09 Sep 2026 04:41:40 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e9b5c5eb5b0cd11cd5bf7282a6371f4c567f3e690239de1b80d6b9fc31a609`  
		Last Modified: Wed, 09 Sep 2026 04:41:41 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11` - unknown; unknown

```console
$ docker pull maven@sha256:78cd92cc4e3d70a9157ec6dc324f129ec72d6ea4a1b3e89bead591244c192f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6288865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f796ea06803a64cc20040742884bfdf9db18d819cfbbdb55867d82233cc780c5`

```dockerfile
```

-	Layers:
	-	`sha256:a6707c16760e57783a75c5cddb4b8d9e2c2f58b97c44cdf5b7a6994c3f4e1d0c`  
		Last Modified: Wed, 09 Sep 2026 04:41:40 GMT  
		Size: 6.3 MB (6271570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9c349df0d6b371096fe3ce370e4e9db3481bd90fb836a36fcf3f9e994fae624`  
		Last Modified: Wed, 09 Sep 2026 04:41:40 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:699010ba3566c42d70cc96abef98026c29dbfa2944f5156b5738c7d988b6e4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.3 MB (367265463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf357a9274af97e5663c5c75bc71b009819052d4b9b4ce0d24c3c77406f10ece`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:16:25 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:16:25 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:16:25 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 09 Sep 2026 04:26:12 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 09 Sep 2026 04:26:14 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 09 Sep 2026 04:26:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:26:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:26:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:26:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:26:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:26:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:26:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:26:14 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:26:14 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:26:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:26:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:26:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4d87a2b4a67b46e508796bd573b843e984e8b62e4ffb36ce1e4f9040ccc67b`  
		Last Modified: Thu, 20 Aug 2026 17:16:46 GMT  
		Size: 152.1 MB (152056180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:238a080667e5b57aae11c64ce25491323af974686f5ceed6601a920fb93d024d`  
		Last Modified: Wed, 09 Sep 2026 04:26:35 GMT  
		Size: 138.6 MB (138630268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97f8e277ddf1647f0b5d24444ad8a7bae8d8376a4f8708b46c303a99dc83455`  
		Last Modified: Wed, 09 Sep 2026 04:26:32 GMT  
		Size: 13.8 MB (13767150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc22a330decb0ce47754eeaac62093fb4fb06a6eaf12037078b77943f64dcf10`  
		Last Modified: Wed, 09 Sep 2026 04:26:32 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22699f84d2e31f57523fdabc56b638f627516aa97ed0dd606f5ffcec97e19ae`  
		Last Modified: Wed, 09 Sep 2026 04:26:32 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:361646f10ce93691e5d549db0071dd7a38589a84d004fb149e7bc5eb0b41d0db`  
		Last Modified: Wed, 09 Sep 2026 04:26:33 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11` - unknown; unknown

```console
$ docker pull maven@sha256:2528c607615c26f2f87d5c536284b34c6c1a4723525c762a9f321dba3ec6cceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6288859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d37b888abeabab977099ae30e9f633a130d64994c8b0b9ab161ba4e0ff2bd186`

```dockerfile
```

-	Layers:
	-	`sha256:6b0debe6d8f38b1ff0f7ab327f610f5e0adfb77a4ef7e66eeeb0b595ce661266`  
		Last Modified: Wed, 09 Sep 2026 04:26:32 GMT  
		Size: 6.3 MB (6271380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:013c181d4a40b31912e63c41cb2fa1bd1e145bf102a70d24b635465caef917cb`  
		Last Modified: Wed, 09 Sep 2026 04:26:31 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
