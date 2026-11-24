## `gradle:8-jdk11-corretto`

```console
$ docker pull gradle@sha256:15e78ece3ed7c3f364485d20e0e7bd37162b002e2628d004249fc841924578c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk11-corretto` - linux; amd64

```console
$ docker pull gradle@sha256:83c526b846ee0f3cdedf9d4cf6116e714ce08b2863e8ce52c4c1f92f01489115
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.7 MB (443655754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040a615af9c1590d22e3cd6bbb0315eda0dfbf5b0ecca36b6d87720f57fd6428`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:02 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:10:02 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:10:02 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:10:02 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 23 Nov 2026 21:30:17 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 21:30:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 21:30:17 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 23 Nov 2026 21:30:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 21:30:17 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 21:30:18 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 21:30:18 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 21:30:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 21:30:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 21:30:20 GMT
USER gradle
# Mon, 23 Nov 2026 21:30:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 21:30:21 GMT
USER root
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971aab513093bfa28107b959e605a27d39d3c32c3aa1ca789ccda9ebfff0eb94`  
		Last Modified: Mon, 23 Nov 2026 21:10:25 GMT  
		Size: 153.5 MB (153542790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ba74be091ca22f810b079bd8bbb55a42ec8c7bcab004412f940d4b24c12539`  
		Last Modified: Mon, 23 Nov 2026 21:30:52 GMT  
		Size: 96.0 MB (95991893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d582573d45c725ce865ba21f11f8b89ed28aa0cc49e912fdfdc55b49ba4d9ae7`  
		Last Modified: Mon, 23 Nov 2026 21:30:48 GMT  
		Size: 1.6 KB (1647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb66066ddcea486d644a572330d3650f70a30143e1683cd6bf04af0634573f4`  
		Last Modified: Mon, 23 Nov 2026 21:30:53 GMT  
		Size: 139.5 MB (139499306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321e39b35a73abd7f3e81604b7cda4bc8d725e3541dc8ddb67e514e9ae126f51`  
		Last Modified: Mon, 23 Nov 2026 21:30:48 GMT  
		Size: 54.9 KB (54917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:3f2fd349ad4e393b5cd5f5d90bb6fd1c6e395a8517aab6d5c705ced58f10a7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12679966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317c66e14f7accb4b4420b815d3d861c268ca4ec66bb0a0503c52317497ec185`

```dockerfile
```

-	Layers:
	-	`sha256:08397aabb47013a110c338e98e87d8fd20f7479c29b5808a7caecd53dff34a75`  
		Last Modified: Mon, 23 Nov 2026 21:30:49 GMT  
		Size: 12.7 MB (12658301 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:609190b832bc0c7d17acb049cb08f4b43213306a984bd565d9ddf8054a948258`  
		Last Modified: Mon, 23 Nov 2026 21:30:48 GMT  
		Size: 21.7 KB (21665 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk11-corretto` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a6261832a0d43f3c0d3b1680285bd5d5cd771af33dea99a4511ad862531f6e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.5 MB (440532795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41da46804110e356265e037c7b876c79b23df5161e2b74de320ef0d94656793a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:50 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:50 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:57 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:09:57 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:09:57 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:09:57 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 23 Nov 2026 21:31:10 GMT
CMD ["gradle"]
# Mon, 23 Nov 2026 21:31:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 23 Nov 2026 21:31:10 GMT
RUN set -o errexit -o nounset     && dnf install -y         make         curl-minimal         wget         tar                 unzip         which                 findutils                 git         git-lfs         mercurial         subversion     && dnf clean all     && rm -rf /var/cache/yum         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 23 Nov 2026 21:31:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 23 Nov 2026 21:31:11 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 23 Nov 2026 21:31:11 GMT
WORKDIR /home/gradle
# Mon, 23 Nov 2026 21:31:11 GMT
ENV GRADLE_VERSION=8.14.8
# Mon, 23 Nov 2026 21:31:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
# Mon, 23 Nov 2026 21:31:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 23 Nov 2026 21:31:13 GMT
USER gradle
# Mon, 23 Nov 2026 21:31:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=94da89692fc3ca6d2d0ce6bb48548762ea0f1897ba444286f5c7f3759c7af651
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 23 Nov 2026 21:31:14 GMT
USER root
```

-	Layers:
	-	`sha256:62711447613af73845fe4b926dc28861a2a18989ecfb587cccb3bc0db1161665`  
		Last Modified: Fri, 20 Nov 2026 20:24:19 GMT  
		Size: 53.4 MB (53449584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c196ab692f8960f6930d428824c89ffc63333f40833a8e75a11339f426963a4`  
		Last Modified: Mon, 23 Nov 2026 21:10:18 GMT  
		Size: 152.1 MB (152132328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dba6945c9150d064c93f230081bad9b96eb1ec658a6a252c312da65cc2048cb`  
		Last Modified: Mon, 23 Nov 2026 21:31:48 GMT  
		Size: 95.4 MB (95390359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c54c68c18665c079c4f5f0a74959894390c9487d552dc3c7818d6c4cb042d2`  
		Last Modified: Mon, 23 Nov 2026 21:31:44 GMT  
		Size: 1.6 KB (1650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db4805e17a995ac258df0cf7cea2baa3228196c615b729e7a1a65380554755e5`  
		Last Modified: Mon, 23 Nov 2026 21:31:48 GMT  
		Size: 139.5 MB (139499307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cfb8f5e839859c6e4e7c76bce6d6c21f7cfadbb3d75770d42a2d8391a5e16f9`  
		Last Modified: Mon, 23 Nov 2026 21:31:44 GMT  
		Size: 59.5 KB (59535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk11-corretto` - unknown; unknown

```console
$ docker pull gradle@sha256:e0a3a0049284a3a9214044a598d925465a41303f3cf34ae8eedc2c5dc4ab4dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12680006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081393807e08e4242fa4208191c0c8b715b0acfebe3e16e7c7aee1f33bac7b8e`

```dockerfile
```

-	Layers:
	-	`sha256:c5e466673d24a9cc670204393ad43d33205b3c005fcd950b302a191e7bb965a3`  
		Last Modified: Mon, 23 Nov 2026 21:31:45 GMT  
		Size: 12.7 MB (12658144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb68e0ecd2a9f4bc38f08e2923a94e65b295c37ae813fd8ecfc68b9f4bd810f1`  
		Last Modified: Mon, 23 Nov 2026 21:31:44 GMT  
		Size: 21.9 KB (21862 bytes)  
		MIME: application/vnd.in-toto+json
