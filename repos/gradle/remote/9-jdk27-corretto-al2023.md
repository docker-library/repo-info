## `gradle:9-jdk27-corretto-al2023`

```console
$ docker pull gradle@sha256:babb02efe9bf39f3c49e262ceb92552fa92eb4c8cf1a7431fca13e7541f6b8d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk27-corretto-al2023` - linux; amd64

```console
$ docker pull gradle@sha256:a98733be1188d9b933a52fc297115be6f741299dbc9073e3e4cb6f4965f63861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.6 MB (493598046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99cbe69565ac45bc12753473c0b68c64aa74232df6f2707c9da878c10d126b40`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:32 GMT
ARG version=27.0.0.36-1
# Wed, 21 Oct 2026 23:29:32 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:32 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:32 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 22 Oct 2026 00:16:15 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 00:16:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 00:16:15 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 00:16:15 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 00:16:15 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 00:16:15 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 00:16:15 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 00:16:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 00:16:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 00:16:18 GMT
USER gradle
# Thu, 22 Oct 2026 00:16:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 00:16:18 GMT
USER root
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59916f3236e2620f65c7c2567b609aae89a0744db1c3956ef12e05bb02a06c1`  
		Last Modified: Wed, 21 Oct 2026 23:29:55 GMT  
		Size: 191.6 MB (191620231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb685a6086a1f408857286d8db284b7f6a959c79ba3a37b46e5cebc4dfa5a366`  
		Last Modified: Thu, 22 Oct 2026 00:16:49 GMT  
		Size: 95.8 MB (95786150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a980ff4a809474631983fbd2fe8504141968adf289255cb8800088407d44a2`  
		Last Modified: Thu, 22 Oct 2026 00:16:45 GMT  
		Size: 1.6 KB (1645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a153e29960b3c89ae40c7339da27c02d02b135f8b370dd9ee67daa1047fd899`  
		Last Modified: Thu, 22 Oct 2026 00:16:50 GMT  
		Size: 151.5 MB (151533609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3d7b10b21bb4c7e847ef772207cf64b65432dc81ac0db8bcfa9a66248d978b`  
		Last Modified: Thu, 22 Oct 2026 00:16:45 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:169dd2dde0e7b2bdee205a6534645988cc764745838194f8b75b47d33c7052cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12688208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562ebee163c1f52760ddba5b1cac5594ed14f699ee65f41fabe4282286e93d95`

```dockerfile
```

-	Layers:
	-	`sha256:6a39a112464880871065c8b2ec3fd743e8564d89c0535889bcf9f2965001d211`  
		Last Modified: Thu, 22 Oct 2026 00:16:46 GMT  
		Size: 12.7 MB (12666557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eb6a275276474316c22c94dc8de207467c4c5172a853064f3c457fdebc9311c`  
		Last Modified: Thu, 22 Oct 2026 00:16:45 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk27-corretto-al2023` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2ddfc3a71acab5041be6c9faa436b797ef150a9ebfbb13cfe3cf254964d45e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.8 MB (489761133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abcceb4e880685832e326f159439ec63f1b5c18fc8ee22cb03017a9bfa941ed`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:21:14 GMT
ARG version=27.0.0.36-1
# Thu, 22 Oct 2026 00:21:14 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:21:14 GMT
# ARGS: version=27.0.0.36-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:21:14 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:21:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Thu, 22 Oct 2026 01:18:22 GMT
CMD ["gradle"]
# Thu, 22 Oct 2026 01:18:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 22 Oct 2026 01:18:22 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 22 Oct 2026 01:18:22 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 22 Oct 2026 01:18:22 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 22 Oct 2026 01:18:22 GMT
WORKDIR /home/gradle
# Thu, 22 Oct 2026 01:18:22 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 22 Oct 2026 01:18:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 22 Oct 2026 01:18:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 22 Oct 2026 01:18:26 GMT
USER gradle
# Thu, 22 Oct 2026 01:18:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 22 Oct 2026 01:18:27 GMT
USER root
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2da6cfd1559ba96275a300bf9d7169aa4cef5ad5c6bc5fe5f8b17c23f9006b4`  
		Last Modified: Thu, 22 Oct 2026 00:21:39 GMT  
		Size: 189.5 MB (189483600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1452d29300bd1e41d893524bba0f5a071c43234b8b0279673f3acf21507dcd`  
		Last Modified: Thu, 22 Oct 2026 01:19:01 GMT  
		Size: 95.2 MB (95208507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c6d4dba25b8700d671041c5f4008f2865a39c81f1c123deb6573f64e3a8e0d`  
		Last Modified: Thu, 22 Oct 2026 01:18:57 GMT  
		Size: 1.6 KB (1644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6690b8ca1913033c2269edd5a251e9455c846ed395fe9ad03d600140921293de`  
		Last Modified: Thu, 22 Oct 2026 01:19:02 GMT  
		Size: 151.5 MB (151533613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440df7db68955866356fc2cf71c0bc6229db16d62cc90836a94e4e98112ff12e`  
		Last Modified: Thu, 22 Oct 2026 01:18:57 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk27-corretto-al2023` - unknown; unknown

```console
$ docker pull gradle@sha256:c6e4320dbc4b89a05669dfe5584c58866daa139866e9f3001dca6362a3286cb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12687409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1aff8f74a399071995a8c3c3d549c45a085307f009de24cd0dfeed771d86949`

```dockerfile
```

-	Layers:
	-	`sha256:885837ba9fdead3887fa492d33e1b3d5ebf4eff1f53c13cec2ae92a9aed51038`  
		Last Modified: Thu, 22 Oct 2026 01:18:58 GMT  
		Size: 12.7 MB (12665561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef8ae0b552ecb10cb11fe31c194ce9dc0327c2ecf7d552a2bb695188b43bcaea`  
		Last Modified: Thu, 22 Oct 2026 01:18:57 GMT  
		Size: 21.8 KB (21848 bytes)  
		MIME: application/vnd.in-toto+json
