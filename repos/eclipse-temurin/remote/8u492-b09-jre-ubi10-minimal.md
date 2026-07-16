## `eclipse-temurin:8u492-b09-jre-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:db171706626612bf5dfcd03f6d8a8c80344250dd45dca9b497f2cf593362e3df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:82dfe22e3bce9833146ee2d44d5da03cde6301f300e7522270966e8a9dcd48cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115006760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa390d0aaa666a1221a686d5b1abbd0606411a78f34101b25bcfb9a188ef497b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:52:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:52:21 GMT
ENV container oci
# Wed, 15 Jul 2026 05:52:22 GMT
COPY dir:e80ceae0f38fed255e475d6f3c857d9cc653b611388172a20e2345e2608f2c11 in /      
# Wed, 15 Jul 2026 05:52:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:52:22 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
COPY dir:fcea21daaad748df5672e8517505782b30d2c53d6febb830378b77388dd947d6 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:52:23 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:52Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:52Z" "architecture"="x86_64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:52Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:21:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:21:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:21:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:21:20 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 16 Jul 2026 00:21:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 16 Jul 2026 00:21:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:21:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:21:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c7288023ded975bbfebf94654b2abd0529e40b52fa589ee42fa73afc0e6c0670`  
		Last Modified: Wed, 15 Jul 2026 06:55:17 GMT  
		Size: 34.9 MB (34898991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ebfa0f546a5acb671f4252a226a94f6811cd03bd3f699bfbb2d98789b81b68`  
		Last Modified: Thu, 16 Jul 2026 00:21:37 GMT  
		Size: 37.8 MB (37772950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0cdbb23c8686b813c919bb2903795cf1050c264c108bb77ea762e8f363750fa`  
		Last Modified: Thu, 16 Jul 2026 00:21:37 GMT  
		Size: 42.3 MB (42332223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df058b0f832d158e91dc13ecaddc75cb546493c6896276503f290af1c7f4812`  
		Last Modified: Thu, 16 Jul 2026 00:21:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f863759c5fc1c03f6af5a59ad57da6b48d8769b069d7190a1bf85bae58ec979`  
		Last Modified: Thu, 16 Jul 2026 00:21:35 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:29eb71aabd97882f8adcd2fb993582da18f4c58570fc2850478e4d727d4994ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:242b6368a408b7bfcdcda6a25532d75a120ba68487ac3a5b3d71e2890cf9598a`

```dockerfile
```

-	Layers:
	-	`sha256:f300ca8a15e2eb6a32731718649697096d45dd16ea083c07bff7ec7c38e8ceaa`  
		Last Modified: Thu, 16 Jul 2026 00:21:35 GMT  
		Size: 3.7 MB (3736771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30bbfd857362a389b9b571b415a35280bbb06138e506c959f3b57421a5a83425`  
		Last Modified: Thu, 16 Jul 2026 00:21:35 GMT  
		Size: 19.5 KB (19510 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:0047888579ae178cd19122472fdd3f375fef50a8285ed653751bc3fd546a14cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112050209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f49a3f6fdef963bebf16d22f2f7f750cbb4622c8ba75357f765a90bcfce6838c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:50:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:50:02 GMT
ENV container oci
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:8f070411f1ee56ca3961d04e0e908caad0eb4e03104d45b7f770bb84cd3a08af in /      
# Wed, 15 Jul 2026 05:50:03 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:50:03 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:04f8dce71511af7de523b5498ebb5427d3946b49dd8d31c37d9494947f53788a in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:50:03 GMT
COPY dir:04f8dce71511af7de523b5498ebb5427d3946b49dd8d31c37d9494947f53788a in /root/buildinfo/      
# Wed, 15 Jul 2026 05:50:03 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:49:39Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:49:39Z" "architecture"="aarch64" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:49:39Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:21:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:21:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:21:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:21:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:21:42 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 16 Jul 2026 00:21:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 16 Jul 2026 00:21:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:21:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:21:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:877a7cfebba1327468a9ce7bb85f9afffbfb1c95701f76d33d81f3833987c4e2`  
		Last Modified: Wed, 15 Jul 2026 08:02:44 GMT  
		Size: 33.0 MB (33038203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390923303d81c72c5ef7b5b2f596ef4bb192cfc493821ccde8a8ed990d599f5d`  
		Last Modified: Thu, 16 Jul 2026 00:22:00 GMT  
		Size: 37.7 MB (37707728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb2031292e94d0e059a7dffb34a2677a68c1774be167251438292161d5eba81`  
		Last Modified: Thu, 16 Jul 2026 00:22:00 GMT  
		Size: 41.3 MB (41301680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e0f666dd94b443daf5a3818fd5151cbafa212cb0cfc5d3386ac3b7aec74830`  
		Last Modified: Thu, 16 Jul 2026 00:21:57 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8112d7548e377840743ba225ebcceda1c7114b154a765f9ee905712e5a230d`  
		Last Modified: Thu, 16 Jul 2026 00:21:59 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d0226a68159bb3c8279ae4c740bb16db78972f4cdec80200f6e5faec6d35f45a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3756492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ea7170344a845720b223975561c4a9248df1aca162351a6f0af6d4807241db`

```dockerfile
```

-	Layers:
	-	`sha256:fa4e1f33a00f3de9a542d79b7dbb15bc1f71874df12aedc6ad62f9437c5fba3e`  
		Last Modified: Thu, 16 Jul 2026 00:21:58 GMT  
		Size: 3.7 MB (3736877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b630de94e339d1a807beb2f33599730cfffdfd40e0fbc697439ea60bdee6733`  
		Last Modified: Thu, 16 Jul 2026 00:21:58 GMT  
		Size: 19.6 KB (19615 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6783d261d3c6f1c929e091de425944001f3437e8bc7231ca76c924f0052665a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120275678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94c9fd65b724d084181a1d73bac038a50e9f70669f9e46b8f8e9ac5cf91bc2a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 15 Jul 2026 05:49:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 15 Jul 2026 05:49:00 GMT
ENV container oci
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:10526134b402f96b01913ff63c11090d12c71c1f3d96105fcd44fc1b9ebc9a4e in /      
# Wed, 15 Jul 2026 05:49:01 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 15 Jul 2026 05:49:01 GMT
CMD ["/bin/bash"]
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:cf7642e6d55956d71e3aaebdbf758e9516171ed79668415a4710b1fdcb1ac147 in /usr/share/buildinfo/      
# Wed, 15 Jul 2026 05:49:01 GMT
COPY dir:cf7642e6d55956d71e3aaebdbf758e9516171ed79668415a4710b1fdcb1ac147 in /root/buildinfo/      
# Wed, 15 Jul 2026 05:49:01 GMT
LABEL "org.opencontainers.image.created"="2026-07-15T05:48:41Z" "org.opencontainers.image.revision"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "build-date"="2026-07-15T05:48:41Z" "architecture"="ppc64le" "vcs-ref"="22a25e811ff1a9703d8503438dc3c6045cbaaf7e" "vcs-type"="git" "release"="1784094212"org.opencontainers.image.created=2026-07-15T05:48:41Z,org.opencontainers.image.revision=22a25e811ff1a9703d8503438dc3c6045cbaaf7e
# Thu, 16 Jul 2026 00:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:19:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:19:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 16 Jul 2026 00:19:49 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 16 Jul 2026 00:20:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:20:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b060fee38424df7cdccede0607ef847e0d227597b97b59bc32fa6707e32cfd57`  
		Last Modified: Wed, 15 Jul 2026 12:17:24 GMT  
		Size: 39.0 MB (39003367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90cf761edb0d2dff4b7a85b108a0da2334197a83aac08a67d64abddc2b6414a`  
		Last Modified: Thu, 16 Jul 2026 00:20:26 GMT  
		Size: 39.5 MB (39529262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf185c08ccf093cc6d9009523dec89e9fba8ec4fccf5ddd634323e9ac21472b`  
		Last Modified: Thu, 16 Jul 2026 00:20:59 GMT  
		Size: 41.7 MB (41740451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78cc752419770e1e04463f6a8a26ba2c49b9901358d3b3f8288a3c2d8af1bfd4`  
		Last Modified: Thu, 16 Jul 2026 00:20:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73f88a66b8e26094390bc72d7e2a3cf767b780959b89037991fea5e8c6c3a1f6`  
		Last Modified: Thu, 16 Jul 2026 00:20:57 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:479aa3b55f012a9b10cc270ac69ce3354fc1f0290c019b3110dc97307dcc8a13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6012759f8a99dad18020499a55b399d5d7b7f48125fc8a8c255e4e0051290af8`

```dockerfile
```

-	Layers:
	-	`sha256:2313aa92783436f7740fd6d892e26471cabf9c58a679d0de34e67eead90a8615`  
		Last Modified: Thu, 16 Jul 2026 00:20:57 GMT  
		Size: 3.7 MB (3726208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5cdb70dd2073c3f72964ee4a4d26e503abf0f9b00d4b6a4100835ae45ae49f2`  
		Last Modified: Thu, 16 Jul 2026 00:20:57 GMT  
		Size: 19.5 KB (19541 bytes)  
		MIME: application/vnd.in-toto+json
