## `maven:3-amazoncorretto-21`

```console
$ docker pull maven@sha256:be93cfd9103cf111289f4725d1fb08dfd6f31d77b77da338f87aa470642e8ce5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21` - linux; amd64

```console
$ docker pull maven@sha256:4afe14b2d5f5f9449c3109c6b71ec7585ac31b1f578d057c3cd81354af604ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.8 MB (403807920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9d9adae5b53775a943bbfe5f59133fc66e7f45bccc29459261a4d4e5323999`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:23 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:23 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:23 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:23 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 27 Oct 2026 02:18:39 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 27 Oct 2026 02:18:41 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 27 Oct 2026 02:18:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:18:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:18:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:18:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:18:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:18:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:18:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:18:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:18:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:18:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc896a7d1efefd988d47538a19738fa6dc91dcd9033556363e5f7bc0ac46288`  
		Last Modified: Fri, 23 Oct 2026 18:09:46 GMT  
		Size: 170.7 MB (170742693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be698add0a1cf8eb37bb67d941df05be206043fdfe1802391867b36eea174b3a`  
		Last Modified: Tue, 27 Oct 2026 02:19:00 GMT  
		Size: 154.8 MB (154826523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02501866150ad9f589b0a605ec6d002a39b481f5d38bbf293b7e4181dedc6d4`  
		Last Modified: Tue, 27 Oct 2026 02:18:57 GMT  
		Size: 13.5 MB (13529754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f657f8aad04b27ee349c8a07753632ac1530282f44cba98ada8ec9c711a2375f`  
		Last Modified: Tue, 27 Oct 2026 02:18:57 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c61d51ef040a791430c669253d4fe8b8b0dab4da1ddd65af531b49d4de956f8`  
		Last Modified: Tue, 27 Oct 2026 02:18:56 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c13a551d88652f015eefa665b645f9e83162ec290a8e37652c3a51cc8c01cf8d`  
		Last Modified: Tue, 27 Oct 2026 02:18:58 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:26662e5cf3786338af7d4f69bc341698905c0fa78ddd6abfb1b47045d57ef720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7159a1db283ae3172700c4357acc941091e6e627d675cab066e3f62d0598dd`

```dockerfile
```

-	Layers:
	-	`sha256:dc9331787faf1929b8eb66bb1fcb59a1cc7628e0a3a7d8f67a0bbe715566a1e2`  
		Last Modified: Tue, 27 Oct 2026 02:18:57 GMT  
		Size: 6.3 MB (6254364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5e94cf29cf9b5c3727218d599d4abb93303c6590ff712d81a59e85bafe62ba8`  
		Last Modified: Tue, 27 Oct 2026 02:18:56 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3d2ec59c69d78348b7eea85de9db8e557e2ed1182deb5dba716fa21551b839cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.3 MB (399310235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a276610e33c9c3913ab24cf58d13858d94a3ed9edf8254b801aa45e080ee76d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:17 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:17 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:17 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:17 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:17 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 27 Oct 2026 02:16:15 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 27 Oct 2026 02:16:18 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 27 Oct 2026 02:16:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:16:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:16:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:16:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:16:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:16:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:16:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:16:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:16:18 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:16:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:16:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:16:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15848e3476ea8155721889d8257147875c3823d4b9bf6bfebe9419373ff5281a`  
		Last Modified: Fri, 23 Oct 2026 18:09:40 GMT  
		Size: 169.0 MB (169017611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d83cb7e5152feb288546977e62a6091888e0ce1bec8f42c9127c6970025249`  
		Last Modified: Tue, 27 Oct 2026 02:16:40 GMT  
		Size: 152.9 MB (152932468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bb75aa486b7773779cf7791c7c218067ec414f4a462ddedbc46c16204925ea`  
		Last Modified: Tue, 27 Oct 2026 02:16:38 GMT  
		Size: 13.8 MB (13770816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88aa901f982d42274c3962abb2fb84bf6268cd60934687f92215d5e704863ba0`  
		Last Modified: Tue, 27 Oct 2026 02:16:37 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a84a143486c869a6336a03e980e9ce54f103be45637c138123529055e3a193d`  
		Last Modified: Tue, 27 Oct 2026 02:16:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56d19c0bfefd7143f7f2955a5bf95e674feda425ff6f72510217515c245b614`  
		Last Modified: Tue, 27 Oct 2026 02:16:38 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:d8c2b4680824b7ba9bfbddaeadaeaea519a669ad244d0fa0784574ccc71d536b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6270821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f654ce72dc5753eaa023bb326d6289a0bdadcb5ec94bd3c0c7ae543ffe3fdd`

```dockerfile
```

-	Layers:
	-	`sha256:7bf5e244227cd77cd555e20ffd55440ad315c3db8b58f9e30cfcc13278f5dfd8`  
		Last Modified: Tue, 27 Oct 2026 02:16:37 GMT  
		Size: 6.3 MB (6253334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9b6266ead06412cbc10f2ced2765f9376f938c9d429f86b17b519fb9c4eaebd`  
		Last Modified: Tue, 27 Oct 2026 02:16:37 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
