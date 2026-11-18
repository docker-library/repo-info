## `maven:3-amazoncorretto-8-al2023`

```console
$ docker pull maven@sha256:4b8ebc984aac9148f7f430c57821ef432b9db40ce1cc60108365dd7c52d9370a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-al2023` - linux; amd64

```console
$ docker pull maven@sha256:d661e5fdfa8817b1c14f374fcaee9ab4301d64cbd9870e97627218081914f026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.4 MB (361381253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045c3647647863e0b072473130f52fb18b3ada1a2bcae389a2de60188552d544`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:35 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:35 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:45:35 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Wed, 18 Nov 2026 03:11:13 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 18 Nov 2026 03:11:16 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 03:11:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 03:11:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:11:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:11:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 03:11:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 03:11:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 03:11:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 03:11:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 03:11:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 03:11:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 03:11:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 03:11:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fc60c0f2c350f0d96ee308c4b2add78ad18dae70551a4d964b70beba18104d`  
		Last Modified: Wed, 18 Nov 2026 02:45:53 GMT  
		Size: 118.1 MB (118131272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3ace2b084605fa801acb8bf2eb8a90c0672dd9692e42e3137da4cdee50af6e`  
		Last Modified: Wed, 18 Nov 2026 03:11:39 GMT  
		Size: 165.1 MB (165113139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283e0b0e57252af22ab2889bc97500ee0845a1c4dd2ccab7ec31c6a3bf2e5305`  
		Last Modified: Wed, 18 Nov 2026 03:11:36 GMT  
		Size: 13.5 MB (13507527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1a1ab68b25d225c2aca96a18d4984727e2f6ca4f201143ca243fad2113b437`  
		Last Modified: Wed, 18 Nov 2026 03:11:36 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a2c07b8c2a10560f5b757ddcb21045b6e9968463b9364c69f85ca85fa46f71`  
		Last Modified: Wed, 18 Nov 2026 03:11:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6b5c4fc570fc2d2ff575c02285fce451a337c40082b60d036cc50391a45f59`  
		Last Modified: Wed, 18 Nov 2026 03:11:37 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:704a19210c21ed98bb35dcf8ccb45bf0b01909fcbad9f480d7901c3cae088eb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517885e569ca3fbfb4208fe5db7898a30274e005114f788b9a170cd0b722f78d`

```dockerfile
```

-	Layers:
	-	`sha256:52e67ea38040aacbb5d2807b4c5737f235d9a2bd552c81fa3442bae1cf2b9860`  
		Last Modified: Wed, 18 Nov 2026 03:11:36 GMT  
		Size: 6.6 MB (6629025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62e31d663983eff83aa7f212a09330ec9b5de8c78706e1a0d985f0733e5c1b9e`  
		Last Modified: Wed, 18 Nov 2026 03:11:35 GMT  
		Size: 17.3 KB (17293 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:22f2c64c0c4e67338ccc983f1a5f3847536242971033cb9b8a263f63d04ece5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358246291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c2f61e10f85672729279dccf16a88afea07c141fa23d499661e5a8d0d1a4ce`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:47 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:47 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:45:47 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Wed, 18 Nov 2026 03:11:04 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 18 Nov 2026 03:11:07 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 03:11:07 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 03:11:07 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:11:07 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:11:07 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 03:11:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 03:11:07 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 03:11:07 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 03:11:07 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 03:11:07 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 03:11:07 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 03:11:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 03:11:07 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4d90dbeb83f3f614bd6bc5f1b645776b96e53d445c551d82a24481448effa0`  
		Last Modified: Wed, 18 Nov 2026 02:46:07 GMT  
		Size: 118.0 MB (118017642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd0a16dc67b4d606cd88b35f614164de26c3445e0fa6476e8fbb0b5051d1c3e`  
		Last Modified: Wed, 18 Nov 2026 03:11:30 GMT  
		Size: 163.0 MB (162961455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ed7a17da71fd55af3445c2adf4b9100616f719d0c0aae4d4e9483a98ce28f5`  
		Last Modified: Wed, 18 Nov 2026 03:11:27 GMT  
		Size: 13.8 MB (13754095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a465f11123d8ba5b5d313e9aa81e08b1d9d845f659c03efd66ae2d5ad7b04f3c`  
		Last Modified: Wed, 18 Nov 2026 03:11:27 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b4a7ba776e3e21ab0e38506c2b912c750021a261801f7f3ebc621c2b724275`  
		Last Modified: Wed, 18 Nov 2026 03:11:26 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d61c95f8507f9866c45c0a6acd91a10268511e5156e113d3b626123cf01c31`  
		Last Modified: Wed, 18 Nov 2026 03:11:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:18f1de4d24dfe219695172c3cbac8ceed9a402ccbca508fc5322e5ee03dfadad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:729f7b3ef50442efc2a47e344801c84569bf944a8bc3a44ff458829350ced90c`

```dockerfile
```

-	Layers:
	-	`sha256:b056088981a4d8a458cb8d9dab512bda8b390d200f7637eaf44aeb84d6df635d`  
		Last Modified: Wed, 18 Nov 2026 03:11:26 GMT  
		Size: 6.6 MB (6629315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77b0719201d13508935784bf79b3f3638c27c24376cab9a43460264c3452bb11`  
		Last Modified: Wed, 18 Nov 2026 03:11:26 GMT  
		Size: 17.5 KB (17477 bytes)  
		MIME: application/vnd.in-toto+json
