## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:9b868ffa88a46d8b4e605fa14db1e0debe2edb798b3b5890156e92d55a17b11b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:767f8c161f0f0e1553f920a9fec2344825cbc13afbc1da3a71058c8e9812631a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.0 MB (398986561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fad357acf10c0cdb39a6fe718bd2e9e7da5c02fd38a9fd0be8f72839005123c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:10 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:44:10 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:10 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:10 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 05 Oct 2026 21:31:38 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 05 Oct 2026 21:31:40 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 05 Oct 2026 21:31:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:31:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:31:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:31:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:31:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:31:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:31:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:31:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:31:40 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:31:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:31:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:31:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f45e4391e22f1759d68e1a3a7a295d0366f595ceb417fa62afc5870b3aa4d56`  
		Last Modified: Mon, 05 Oct 2026 18:44:34 GMT  
		Size: 170.5 MB (170461125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9c53b65f8dcde9a2ba1870bf51e958b6f3484a29c20148054373d84b11ad40`  
		Last Modified: Mon, 05 Oct 2026 21:32:01 GMT  
		Size: 150.3 MB (150309878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9823ff572e5bac76831504e946c321846f5c88d0b288e8e1c336cd5c86aacc`  
		Last Modified: Mon, 05 Oct 2026 21:31:58 GMT  
		Size: 13.5 MB (13524780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e71468b2957011f028ac2721e65f3e4a2b3e320f0090fce9450603220ed10c`  
		Last Modified: Mon, 05 Oct 2026 21:31:58 GMT  
		Size: 10.1 MB (10058999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831062ca6a2c7d673b8a55ef79f78a8b79b0f660078c36eee7c27e9d29b007a0`  
		Last Modified: Mon, 05 Oct 2026 21:31:57 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a47a11223119816c5b8a4da295f380d8e9e8c523579c18eb0f3cee5549ed3df`  
		Last Modified: Mon, 05 Oct 2026 21:31:58 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:1909696560b8525d63e2db62f1fa8e62c1b06f1f7984f4c0ea9375d70500d876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ffd4f30bf00693ea81694ca7b47998bad920bf0f2b7b079c9607362f1397b4`

```dockerfile
```

-	Layers:
	-	`sha256:295bf3cf9755e46c54fadd0688cb946ae88afb1cf022b92215c96d9ddf8f1a95`  
		Last Modified: Mon, 05 Oct 2026 21:31:57 GMT  
		Size: 6.3 MB (6254358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f16e52120b103c0fe4f338ce2276f61db5b23ff76b2e2f7825677289b8d99cbc`  
		Last Modified: Mon, 05 Oct 2026 21:31:57 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f21504b650d2e9df4ee6ecb38bf354d48db5cabb2a2bd035d005b2d10650f139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394547281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f6e52dd4c5406b6aa13cfd050146f200f5cee87bb7cee337733bfff7d2a15a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:19 GMT
ARG version=21.0.12.12-1
# Mon, 05 Oct 2026 18:43:19 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:19 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:19 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 05 Oct 2026 21:33:01 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 05 Oct 2026 21:33:03 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 05 Oct 2026 21:33:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:33:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:33:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:33:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:33:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:33:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:33:03 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:33:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:33:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:33:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a44d8ff57bcba40c933a2843db84b8c8a4ace48d600a72ccd6270282860850`  
		Last Modified: Mon, 05 Oct 2026 18:43:43 GMT  
		Size: 168.7 MB (168743482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2cd7717c148164ba0f5a61886ccc7317110632fafd3e6831a675de7d6ed68e`  
		Last Modified: Mon, 05 Oct 2026 21:33:25 GMT  
		Size: 148.5 MB (148470601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3c3fd6f4d98374a044813db7758dc15f685765f2255b6c76b04047e795edd8`  
		Last Modified: Mon, 05 Oct 2026 21:33:22 GMT  
		Size: 13.8 MB (13768772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cdf33902409e607b138bbbf62ea584329f8b9198fc0b471c7f4bedc7c8583a`  
		Last Modified: Mon, 05 Oct 2026 21:33:22 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04231ffdf1f14a81e7507969924ed42e69c5a15213dee9ca5e3379027cdfcde2`  
		Last Modified: Mon, 05 Oct 2026 21:33:21 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99d273118fc27e0e13e7c4605573b1f9523760f8c5e71237ec7b6318a458635`  
		Last Modified: Mon, 05 Oct 2026 21:33:23 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:d7028099d2468a9a21735e683f4231f1e00168ace3fd2d2799b5f79466e9ad18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6270815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9a038507de176106bed3bde180e1904bb796f9c4aac99521962a4c6ff37d3f3`

```dockerfile
```

-	Layers:
	-	`sha256:2313836271650fcc77c74b7357444dbbcc5be3179a01883a6728c7daddfd7b40`  
		Last Modified: Mon, 05 Oct 2026 21:33:22 GMT  
		Size: 6.3 MB (6253328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0245a92ba01d3823ac59751778773ffef25b0af1a0e4b6302b1f022153c5a12b`  
		Last Modified: Mon, 05 Oct 2026 21:33:21 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
