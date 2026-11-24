## `gradle:9-jdk25-corretto-al2023`

```console
$ docker pull gradle@sha256:655ec9b518f5cacb08484a860e2f9baf5c1f586d484b7209935642ba619c56b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:50f89e76682c24821b4b63f317ef780d2926b0e61f730102c187636710de0d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.1 MB (475103348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded3d9828560736f3e389b0c38ffdd0fc22cfecdfb1cfa5f9d903dbd30fb5df6`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:25 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:11:25 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:11:25 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:25 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:25 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 23 Nov 2026 21:25:28 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 21:25:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 21:25:28 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 23 Nov 2026 21:25:28 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 21:25:28 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 21:25:28 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 21:25:28 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 21:25:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 21:25:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 21:25:31 GMT
USER gradle
# Mon, 23 Nov 2026 21:25:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 21:25:31 GMT
USER root
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a1b6c2b650cdf38f05282d1aea6d2169a21b4bd145754596610ed2ce67d90c`  
		Last Modified: Mon, 23 Nov 2026 21:11:49 GMT  
		Size: 189.6 MB (189647744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e787a38265b6a28f18080ebc68a1823267014e4cc76668324ccd6a3533eff3f`  
		Last Modified: Mon, 23 Nov 2026 21:26:01 GMT  
		Size: 96.0 MB (95992396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d995412c428737d4b56e300f6e8075cc8b3bbf358728974fb6247666e54661e`  
		Last Modified: Mon, 23 Nov 2026 21:25:57 GMT  
		Size: 1.6 KB (1648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920d3464548f1ce9f961ab16401865753892c394a219b86ef56152a934188b4f`  
		Last Modified: Mon, 23 Nov 2026 21:26:02 GMT  
		Size: 134.9 MB (134870748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cf5f46db6b5d044ac0c9c9ac9df4ccc3a8c61166d01141d219ac7283cb9973`  
		Last Modified: Mon, 23 Nov 2026 21:25:58 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:139dc514bfb073b19c276dc3077fbf25de08d7ee25217d6330085824d468254e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12705877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40ace3a77184e21e2a0dec99ded4ebaf656b3e32d1e77e5c6323d42d8744d9b6`

```dockerfile
```

-	Layers:
	-	`sha256:bab8f7c8049945aec8e8fa5c33685c86df9e295d5997ec4ae88e57c248bf2ef7`  
		Last Modified: Mon, 23 Nov 2026 21:25:58 GMT  
		Size: 12.7 MB (12683608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32c9886973d0f74374e8188d272b709df8eb2093107a61a924676be5e56f8779`  
		Last Modified: Mon, 23 Nov 2026 21:25:58 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3569ce5504cdcd9b6ad89907bd9200bfe4d92a6d78af8570c18e172ced9b3673
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.3 MB (471279466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5e2d9570bbb27b8018ca643713f658d1cd193d3d614c8e9a5343d9ef003d71`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:12:01 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:12:01 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:12:01 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:12:01 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:12:01 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:12:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 23 Nov 2026 21:24:11 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 21:24:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 21:24:11 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 23 Nov 2026 21:24:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 21:24:11 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 21:24:11 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 21:24:11 GMT
ENV GRADLE_VERSION=9.9.2
# Mon, 23 Nov 2026 21:24:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
# Mon, 23 Nov 2026 21:24:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 21:24:14 GMT
USER gradle
# Mon, 23 Nov 2026 21:24:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=971fcd7150ca4ba04852c0b2ca0d2d0ab9468e14b03473eab19528809914c76b
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 21:24:14 GMT
USER root
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b406688ee00fd400c56ad12e24ded075440fcfeda6a064bc506f8bca3bc1262`  
		Last Modified: Mon, 23 Nov 2026 21:12:28 GMT  
		Size: 187.5 MB (187535191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770fecbb31dbeaf6933474fba28c6e59800e49718b98c4040dba2b0b1df7b7da`  
		Last Modified: Mon, 23 Nov 2026 21:24:48 GMT  
		Size: 95.4 MB (95392927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28c0478855c1cd39778a974401b16ce941c466d74d56ed6dc311b2ae6ebc776`  
		Last Modified: Mon, 23 Nov 2026 21:24:44 GMT  
		Size: 1.6 KB (1646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f2ef67e0fb6ccac0b1778371796bd2d03e2459f4b7e2c5e7b891f6d3764b9e`  
		Last Modified: Mon, 23 Nov 2026 21:24:49 GMT  
		Size: 134.9 MB (134870749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6e1d0c59a74c26e672126293d56ac16c773ec11be8e403268f048d6ea0fe109`  
		Last Modified: Mon, 23 Nov 2026 21:24:45 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:c9c101ecab301c3555a3a360dac2e500b694429fad64e6e526da718dcf9be4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12705135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93089841394b70ffc6170f75d500bde05ea2424f4307da90be146e37ddf01ce7`

```dockerfile
```

-	Layers:
	-	`sha256:bc83edf3b68f1589b55816d17174dd83a1ba9375504f3a9c7467c4ef82360b1f`  
		Last Modified: Mon, 23 Nov 2026 21:24:45 GMT  
		Size: 12.7 MB (12682646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d9c5b2e24c6462d49875ca401aadab1b98632f5f96ef34d64ec52c79009636`  
		Last Modified: Mon, 23 Nov 2026 21:24:44 GMT  
		Size: 22.5 KB (22489 bytes)  
		MIME: application/vnd.in-toto+json
