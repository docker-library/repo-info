## `gradle:9-jdk-lts-and-current-corretto`

```console
$ docker pull gradle@sha256:cc735116a0f19051912d78ab7f8f97bbdef1894098e5ec2b1f98af2e918ee32c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-lts-and-current-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:2c2f17492065ef08da95fcfc7c540624376efa109516f80c7adac3bb09d7c1a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.9 MB (668882283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0cad284f63391792b9132b83974f36853b24e494e7c915ba36e3743e54f177`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:22 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:44:22 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:22 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:22 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 08 Oct 2026 16:42:06 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Thu, 08 Oct 2026 16:42:37 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 08 Oct 2026 16:42:37 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 08 Oct 2026 16:42:37 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:42:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:42:37 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:42:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 08 Oct 2026 16:42:37 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:42:37 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:42:37 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:42:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:42:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:42:40 GMT
USER gradle
# Thu, 08 Oct 2026 16:42:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:42:41 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4992f1cf7532669201e3d7da8ba0a07a8ffdfc0b13a84bb98552488b86eae9`  
		Last Modified: Mon, 05 Oct 2026 18:44:46 GMT  
		Size: 189.5 MB (189511554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b91292bc3f1dbffafd60d3b1567219162e9a4bb2dec7b04fecf080b31ade4aa`  
		Last Modified: Thu, 08 Oct 2026 16:43:24 GMT  
		Size: 177.4 MB (177389771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a02c539f1d3b3bd6b87b10b09d128926dee1be2602a3529a174b91567c5209`  
		Last Modified: Thu, 08 Oct 2026 16:43:20 GMT  
		Size: 95.8 MB (95789117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb28a26e25fa1f6fa9d3ef57311e20d61d72d3eeac412157ceab2f4479b2695`  
		Last Modified: Thu, 08 Oct 2026 16:43:15 GMT  
		Size: 1.8 KB (1753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb08133b2f9ffb1b1c707cd872fc4bbd6710756c2521a463f15412b04bd4f49`  
		Last Modified: Thu, 08 Oct 2026 16:43:23 GMT  
		Size: 151.5 MB (151533682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d9af38825d7a9e56b36b9319a4c58aea40cae8b4476df56459deb12537886f`  
		Last Modified: Thu, 08 Oct 2026 16:43:16 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:6f0d1e002cc8183b309d7e14e0357baeb636cbcd7362b27b332a4cb145be23e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12866037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec5df04eb861c6039d38d792734773e8409f3bdd0ac079db121c9c9196258c1e`

```dockerfile
```

-	Layers:
	-	`sha256:3ef86fa5b78799e252e62c44db47152835890828ff4a4fb8b699dc23d18d3615`  
		Last Modified: Thu, 08 Oct 2026 16:43:16 GMT  
		Size: 12.8 MB (12836527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc809e96195400876aa6f9ffdc18a0d794133a90ca2427f2ae4eba6101bf9f03`  
		Last Modified: Thu, 08 Oct 2026 16:43:15 GMT  
		Size: 29.5 KB (29510 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a04dfa145c506dcc77ec0b559dd64d5d2cff6ab8c49b57ec4c5be6b54f709710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **663.0 MB (662978231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855eb52dd1149682d6e920c4b0a527cd3dcf9400c118b838a42745cf1a4f627d`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:52 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:43:52 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:52 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:52 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 08 Oct 2026 16:41:33 GMT
COPY /usr/lib/jvm/java-27-amazon-corretto /usr/lib/jvm/java-27-amazon-corretto # buildkit
# Thu, 08 Oct 2026 16:42:08 GMT
ENV JAVA_LTS_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 08 Oct 2026 16:42:08 GMT
ENV JAVA_CURRENT_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 08 Oct 2026 16:42:08 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:42:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:42:08 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:42:08 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 08 Oct 2026 16:42:08 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:42:08 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:42:08 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:42:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:42:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:42:11 GMT
USER gradle
# Thu, 08 Oct 2026 16:42:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:42:12 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8f82cdd25a7c12179799666029dc0bc5720c430be45fa6650d3aba439c5853`  
		Last Modified: Mon, 05 Oct 2026 18:44:16 GMT  
		Size: 187.4 MB (187409864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc24fce0e88cfe08d92e28b3112ad074db7eb6797bfa5b95dc7fab7372b0116`  
		Last Modified: Thu, 08 Oct 2026 16:42:52 GMT  
		Size: 175.3 MB (175293516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db84ad18e875d48f77520fab0457ab416c22b27fb90e362ad11ea3c80531a7`  
		Last Modified: Thu, 08 Oct 2026 16:42:50 GMT  
		Size: 95.2 MB (95205703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcd218673a64a0b1f5745b35062c53a1e73e29999ce0f01fc3bfd1ad24db9f1`  
		Last Modified: Thu, 08 Oct 2026 16:42:45 GMT  
		Size: 1.8 KB (1754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b222d75905d353fe03deedd05d41d44ff956897863dba9598d7135b8ef8d8b`  
		Last Modified: Thu, 08 Oct 2026 16:42:52 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c93a8c1c1f6f59b45f3f2b35616e68b395f29419ee769af0426184189c79f6b`  
		Last Modified: Thu, 08 Oct 2026 16:42:46 GMT  
		Size: 29.4 KB (29353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:ce67540b42c367a23b1de16ad7c10f0f6feb8f7ce78cc47c4e2880ef892cad81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12864826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10bfa4aa98440366bd3ab87a2fd38b732888203b1b64932f87e9202e9c184ab6`

```dockerfile
```

-	Layers:
	-	`sha256:ec272e4d5292963625c525f1bc818c0dc4922e521dace28adecccbe35b902d6f`  
		Last Modified: Thu, 08 Oct 2026 16:42:46 GMT  
		Size: 12.8 MB (12834997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828c1780ed08e93f284c0d8b2c1e7c9f64b236d5b125cd0c7c03468db43f892e`  
		Last Modified: Thu, 08 Oct 2026 16:42:45 GMT  
		Size: 29.8 KB (29829 bytes)  
		MIME: application/vnd.in-toto+json
