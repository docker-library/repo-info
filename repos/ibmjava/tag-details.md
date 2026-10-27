<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ibmjava`

-	[`ibmjava:8`](#ibmjava8)
-	[`ibmjava:8-jre`](#ibmjava8-jre)
-	[`ibmjava:8-sdk`](#ibmjava8-sdk)
-	[`ibmjava:8-sfj`](#ibmjava8-sfj)
-	[`ibmjava:jre`](#ibmjavajre)
-	[`ibmjava:latest`](#ibmjavalatest)
-	[`ibmjava:sdk`](#ibmjavasdk)
-	[`ibmjava:sfj`](#ibmjavasfj)

## `ibmjava:8`

```console
$ docker pull ibmjava@sha256:16d4385c59589736834521e0da07b15bef2e399ed59954426ceb8bb95ad34175
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:8` - linux; amd64

```console
$ docker pull ibmjava@sha256:a4ff3c43f170a25b4a1561068a6779b0fad6140c3527bf1fdeaf9ffdbe823c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168047389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f49ec5c7ea21c8224bb87db01e85e5d061c6530ec35df8aa1917880b0fb42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:22:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:22:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:22:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:23:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:23:18 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9682ea89c7660f803717e840a80cfc3a3ab9799f71cd0f832e10ed921b205994`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 1.4 MB (1407375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00262678665afea901bf9b407e0513703eb910dc88daa37a865fd928544431c`  
		Last Modified: Mon, 26 Oct 2026 23:23:34 GMT  
		Size: 136.9 MB (136887526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:79dc9ee40dc320e1be528f741cf8b25c6ce78985fc27fa05be0129c255181210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618c97d7a096f8bf8659d922f334dac159329646d8ee320e2777a57fcb666e45`

```dockerfile
```

-	Layers:
	-	`sha256:fe5f030f1896f0ce08f8ce00462650f09fd2db4afa29faff61a29c3a33ea096d`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 2.2 MB (2157316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad7f5b7b4845a7b122726974186184b91352a8f4ff2e806a77300cf7277c7fb7`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a50d4e5f5521425e265bd4cffedade1db0ecef7c467708708c0f889b53f1d297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173669385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d04512f2532a3df36384dcec08a112430d2ae34e0b8fffe96dfcd77c9e943a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:30:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1ef953acc897852a3411be0de10b9c46be1f370ad5f36af1988095d537fc2c`  
		Last Modified: Sat, 17 Oct 2026 01:31:36 GMT  
		Size: 137.5 MB (137470708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:ef08b53885136753b274337c0a696a85f8f0a13b1d46ccf152e951daf0d7c386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb1dc7564f2bb0d07ae20e4068d67e27ae1582947e7cb29b7bb293790ec9f19`

```dockerfile
```

-	Layers:
	-	`sha256:71bb1b41bbae3302b202ed17abd8e13369938eff46084533ad845b324cd7593e`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 2.2 MB (2161250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8994ad1677d32ffcac049e62a532eeb51381a74bd0df2f67ba235a67dc58544`  
		Last Modified: Sat, 17 Oct 2026 01:31:32 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; s390x

```console
$ docker pull ibmjava@sha256:2e1061414bd43e7f35be48a8d5901e9f74a2322e8874c8f324901cc6840301ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167798773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b646c8041a58bd5d8c0f81257d5be166a9cab4536091dd03360b9fededec8a39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:25 GMT
ENV JAVA_VERSION=8.0.8.71
# Tue, 27 Oct 2026 00:00:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 27 Oct 2026 00:00:10 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda356205a2889df4884fa106b88a9007173146f1abe3b898026dbf66c80963`  
		Last Modified: Tue, 27 Oct 2026 00:00:33 GMT  
		Size: 1.4 MB (1410140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c02960b6b8b61659305790224d8cb01f8a5b8c30a5e4b79c64e8f6fc6be672f`  
		Last Modified: Tue, 27 Oct 2026 00:00:38 GMT  
		Size: 138.2 MB (138165827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5aa573f33924898e234a6d37204ae78a7749515fae9ca958aacaadb94b0d77cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb83455f52b6c0673bb8a2adde4ab49df8f4b1a6a90ec624c581d0e019adb35`

```dockerfile
```

-	Layers:
	-	`sha256:bbf57c9ac5b9973617c3a8b20f50c434a008ebe1bda558bac0b155932199ebcd`  
		Last Modified: Tue, 27 Oct 2026 00:00:34 GMT  
		Size: 2.2 MB (2157263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d869972b84e40f034465a142af6e1dc17b4e809482264a69ff1c10b4ae07374`  
		Last Modified: Tue, 27 Oct 2026 00:00:32 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:16d4385c59589736834521e0da07b15bef2e399ed59954426ceb8bb95ad34175
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:8-jre` - linux; amd64

```console
$ docker pull ibmjava@sha256:a4ff3c43f170a25b4a1561068a6779b0fad6140c3527bf1fdeaf9ffdbe823c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168047389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f49ec5c7ea21c8224bb87db01e85e5d061c6530ec35df8aa1917880b0fb42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:22:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:22:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:22:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:23:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:23:18 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9682ea89c7660f803717e840a80cfc3a3ab9799f71cd0f832e10ed921b205994`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 1.4 MB (1407375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00262678665afea901bf9b407e0513703eb910dc88daa37a865fd928544431c`  
		Last Modified: Mon, 26 Oct 2026 23:23:34 GMT  
		Size: 136.9 MB (136887526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:79dc9ee40dc320e1be528f741cf8b25c6ce78985fc27fa05be0129c255181210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618c97d7a096f8bf8659d922f334dac159329646d8ee320e2777a57fcb666e45`

```dockerfile
```

-	Layers:
	-	`sha256:fe5f030f1896f0ce08f8ce00462650f09fd2db4afa29faff61a29c3a33ea096d`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 2.2 MB (2157316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad7f5b7b4845a7b122726974186184b91352a8f4ff2e806a77300cf7277c7fb7`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a50d4e5f5521425e265bd4cffedade1db0ecef7c467708708c0f889b53f1d297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173669385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d04512f2532a3df36384dcec08a112430d2ae34e0b8fffe96dfcd77c9e943a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:30:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1ef953acc897852a3411be0de10b9c46be1f370ad5f36af1988095d537fc2c`  
		Last Modified: Sat, 17 Oct 2026 01:31:36 GMT  
		Size: 137.5 MB (137470708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:ef08b53885136753b274337c0a696a85f8f0a13b1d46ccf152e951daf0d7c386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb1dc7564f2bb0d07ae20e4068d67e27ae1582947e7cb29b7bb293790ec9f19`

```dockerfile
```

-	Layers:
	-	`sha256:71bb1b41bbae3302b202ed17abd8e13369938eff46084533ad845b324cd7593e`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 2.2 MB (2161250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8994ad1677d32ffcac049e62a532eeb51381a74bd0df2f67ba235a67dc58544`  
		Last Modified: Sat, 17 Oct 2026 01:31:32 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:2e1061414bd43e7f35be48a8d5901e9f74a2322e8874c8f324901cc6840301ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167798773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b646c8041a58bd5d8c0f81257d5be166a9cab4536091dd03360b9fededec8a39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:25 GMT
ENV JAVA_VERSION=8.0.8.71
# Tue, 27 Oct 2026 00:00:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 27 Oct 2026 00:00:10 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda356205a2889df4884fa106b88a9007173146f1abe3b898026dbf66c80963`  
		Last Modified: Tue, 27 Oct 2026 00:00:33 GMT  
		Size: 1.4 MB (1410140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c02960b6b8b61659305790224d8cb01f8a5b8c30a5e4b79c64e8f6fc6be672f`  
		Last Modified: Tue, 27 Oct 2026 00:00:38 GMT  
		Size: 138.2 MB (138165827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5aa573f33924898e234a6d37204ae78a7749515fae9ca958aacaadb94b0d77cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb83455f52b6c0673bb8a2adde4ab49df8f4b1a6a90ec624c581d0e019adb35`

```dockerfile
```

-	Layers:
	-	`sha256:bbf57c9ac5b9973617c3a8b20f50c434a008ebe1bda558bac0b155932199ebcd`  
		Last Modified: Tue, 27 Oct 2026 00:00:34 GMT  
		Size: 2.2 MB (2157263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d869972b84e40f034465a142af6e1dc17b4e809482264a69ff1c10b4ae07374`  
		Last Modified: Tue, 27 Oct 2026 00:00:32 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:7d617eef3b657abf3889fb6a943e15844ff65dc7d964d441820ffa658eb2f6a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:8-sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:ef1e6271de755dde78d28db455dd7d88eebbf74a34995aed51f35278175c910d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205336574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceeac25cfd3565b8a2a5e07024015f533fb714f737a24d42dbe583ff24cdb84a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:05 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:23:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:23:05 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:24:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:24:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b4a30c81f6e9fd8bb89109487650f5a5293e51bc817aafb7d60330f8b3c75a`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 1.4 MB (1407339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02e34adc58ad73b65c0fbd8e535a2de402cf412520bbc036352364154ed6506`  
		Last Modified: Mon, 26 Oct 2026 23:24:18 GMT  
		Size: 174.2 MB (174176747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:29e7ecd7f1942cde929e179301613df0fc803fa21c411a652083976a49a455ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3080857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b63e014fd9a97b1204266097f08f903ba418b41674e19ce35d91e06412ff4de`

```dockerfile
```

-	Layers:
	-	`sha256:f5089cf4023604c7745e5e12701cf778d8c3de144d56fbea8e96eb76de000cc9`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 3.1 MB (3068259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa4ac9cbf83a0749fd9b8345239431a5f33aafc24a1980a11b85b2906d414380`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:61c2f5e4bd38a5a291e1575625344697b1d03ff3d91c5756afb7a1c0c60a97d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211157356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de556a6464bf17f79af78e50cb4028ccdb3fa7b29f0eb45ca8e5cdd73122db3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:32:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:32:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de98044becf9c31487da39686a9d7d2ecaf1c1d8b7c51903b8fcdcafb9012381`  
		Last Modified: Sat, 17 Oct 2026 01:32:54 GMT  
		Size: 175.0 MB (174958679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:2957189dd8545ea6a523cfbe713d478aaf5db762b0a4de7d1ccb569f3581d748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee3fa1f708230d241662c81938a29c724a7f61dc831d4dceb6b30b5c95bdc01`

```dockerfile
```

-	Layers:
	-	`sha256:6dbc8da32bdd62d73343c14a7ac985cf234707175a2585acc88dac6086d43732`  
		Last Modified: Sat, 17 Oct 2026 01:32:50 GMT  
		Size: 3.1 MB (3054852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33e8feb5201686f0960d89864e23f1e03a3bd9e8f14a0c42dfa89b8e83accc05`  
		Last Modified: Sat, 17 Oct 2026 01:32:49 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:68f78356dc25153f386547c529cc54a13f0d9bc4d44adb61a2419521f30c2c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.3 MB (198346609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1628b60793cd1bc464f4ffd00ca9fc3e86d3542709ae028862fafa93bbc2a616`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:25 GMT
ENV JAVA_VERSION=8.0.8.71
# Tue, 27 Oct 2026 00:00:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 27 Oct 2026 00:00:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda356205a2889df4884fa106b88a9007173146f1abe3b898026dbf66c80963`  
		Last Modified: Tue, 27 Oct 2026 00:00:33 GMT  
		Size: 1.4 MB (1410140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ea34980efae3baed8929c485898d8949f8d460af3dc6f21880efb2d4c982be`  
		Last Modified: Tue, 27 Oct 2026 00:01:14 GMT  
		Size: 168.7 MB (168713663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:861a40f5455a2067243285f01ed4491ce85b743672772bd1dcf731e0d001cb45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12c189504328fdfbe7161bb93b2c501da92c2e21582b316ae0e8234fe06d5c5`

```dockerfile
```

-	Layers:
	-	`sha256:10e421698b13497ef18c8289a2fab8525ca47488f41e2c023c3df8ea1d64f8a2`  
		Last Modified: Tue, 27 Oct 2026 00:01:10 GMT  
		Size: 2.7 MB (2741561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af9c7ae249ca8c962b6166b42d834e27307eddefbb497fed60daf2b4385bbd82`  
		Last Modified: Tue, 27 Oct 2026 00:01:10 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:9f3bc9419796ef86df45497ec978fb9972be7a70c538ab1dbbc08711a5ce4f01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:8-sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:135e031832be3fc0cc1f05a2f4ee4fa4ef73682f0e24de9365aaefaccab19568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102380502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc61b26395c1cc3332ae4e57533ce56e6591a91c124b62390d94dbc9ee9c8e5b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:22:45 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:22:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:22:45 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:23:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:23:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50642579d2f600dfa5c7071889c77ec47d2329be24b9113fdc5ba4e084fd9ed`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 1.4 MB (1407391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf44fa8118dd69f5c3dc5b3d11cabadfcd38128be2c5d410902e9361383093a`  
		Last Modified: Mon, 26 Oct 2026 23:23:19 GMT  
		Size: 71.2 MB (71220623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:c29a1963679373cc325ef4658ec0e8f6ba0f563853645f1a9c2bfb3453eb47de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a968459c30829f13c2c0b8591711e7485efbdacaef4d9201f9cac874c70b5a7`

```dockerfile
```

-	Layers:
	-	`sha256:18fbc3206f2bcddec9fba2fcf43d50ce2be4c318b4a201e5b811b0fa90b67d10`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 2.1 MB (2139749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eded8e6a8a65ce97883cd364015a5f003735b653f813c62637fac99fb182235`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:747d1503a4a02c78c8cd1cb030ba1dbe8eadc8399383840fb158022dfca39e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108189211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea9081be803b81c811e7982f0e427eaaeca396d5736389c48db6633870daf4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:31:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:31:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7740925e853cd3ae3cb8c1cd4166f7d8a5cb4f3137fbf6714c0f936e31e6deb`  
		Last Modified: Sat, 17 Oct 2026 01:32:01 GMT  
		Size: 72.0 MB (71990534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:a7413ef28696fe5e31d789b3b61ad1927cd64b023627d9f550207f4db09ff39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95d63663aec6d3b90a5f398ea7244f342fcaaf9cebee6ab6e478637e9ca8e55`

```dockerfile
```

-	Layers:
	-	`sha256:4c452f139702230d7daa233ce8b330bf0d7a3ca21f53ae1d9a03c5993fc4095e`  
		Last Modified: Sat, 17 Oct 2026 01:31:59 GMT  
		Size: 2.1 MB (2144894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a5df4fbde3f0d7459c4bb45b5cc7f339507a0c937f97f5d77786c7409d1398c`  
		Last Modified: Sat, 17 Oct 2026 01:31:59 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:e0f9e34a7632c85f2e72d56b4a343cad61e35c4e15aa78d8de0f682fc50468da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104353634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0177d8a1f6f992496b1e87c04922c05dd62f0be8aeb875cbe55ce307fd7a1c3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:29 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:29 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:59:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:59:51 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfff157f6ca7dff0a2b10b17d6007cdd92f170f3371775f306b5883020580544`  
		Last Modified: Tue, 27 Oct 2026 00:00:11 GMT  
		Size: 1.4 MB (1410170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec00098bffaa6dd6236f9669827e1e93dd741fc72d30eff615392fefb2b6241d`  
		Last Modified: Tue, 27 Oct 2026 00:00:14 GMT  
		Size: 74.7 MB (74720658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:c3a630444c12af35cf02f66fe1fe0ecea065bc794a4891d1d5a8d40e6a5cdbc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2155972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e062ea681d12abdc1f06e6f3d6e1768e526a549ff09440afaf1840f95d0439b2`

```dockerfile
```

-	Layers:
	-	`sha256:24042a3c1dd4464fde619346db16f397d3039379c8534b90ed0a5310fe442b49`  
		Last Modified: Tue, 27 Oct 2026 00:00:13 GMT  
		Size: 2.1 MB (2143371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0feed676e6dd24eee8788fd1e63f2a0d65ed07b6d5d886f798ec4a42c55f3021`  
		Last Modified: Tue, 27 Oct 2026 00:00:12 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:jre`

```console
$ docker pull ibmjava@sha256:16d4385c59589736834521e0da07b15bef2e399ed59954426ceb8bb95ad34175
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:jre` - linux; amd64

```console
$ docker pull ibmjava@sha256:a4ff3c43f170a25b4a1561068a6779b0fad6140c3527bf1fdeaf9ffdbe823c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168047389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f49ec5c7ea21c8224bb87db01e85e5d061c6530ec35df8aa1917880b0fb42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:22:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:22:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:22:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:23:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:23:18 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9682ea89c7660f803717e840a80cfc3a3ab9799f71cd0f832e10ed921b205994`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 1.4 MB (1407375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00262678665afea901bf9b407e0513703eb910dc88daa37a865fd928544431c`  
		Last Modified: Mon, 26 Oct 2026 23:23:34 GMT  
		Size: 136.9 MB (136887526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:79dc9ee40dc320e1be528f741cf8b25c6ce78985fc27fa05be0129c255181210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618c97d7a096f8bf8659d922f334dac159329646d8ee320e2777a57fcb666e45`

```dockerfile
```

-	Layers:
	-	`sha256:fe5f030f1896f0ce08f8ce00462650f09fd2db4afa29faff61a29c3a33ea096d`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 2.2 MB (2157316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad7f5b7b4845a7b122726974186184b91352a8f4ff2e806a77300cf7277c7fb7`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a50d4e5f5521425e265bd4cffedade1db0ecef7c467708708c0f889b53f1d297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173669385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d04512f2532a3df36384dcec08a112430d2ae34e0b8fffe96dfcd77c9e943a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:30:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1ef953acc897852a3411be0de10b9c46be1f370ad5f36af1988095d537fc2c`  
		Last Modified: Sat, 17 Oct 2026 01:31:36 GMT  
		Size: 137.5 MB (137470708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:ef08b53885136753b274337c0a696a85f8f0a13b1d46ccf152e951daf0d7c386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb1dc7564f2bb0d07ae20e4068d67e27ae1582947e7cb29b7bb293790ec9f19`

```dockerfile
```

-	Layers:
	-	`sha256:71bb1b41bbae3302b202ed17abd8e13369938eff46084533ad845b324cd7593e`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 2.2 MB (2161250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8994ad1677d32ffcac049e62a532eeb51381a74bd0df2f67ba235a67dc58544`  
		Last Modified: Sat, 17 Oct 2026 01:31:32 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:2e1061414bd43e7f35be48a8d5901e9f74a2322e8874c8f324901cc6840301ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167798773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b646c8041a58bd5d8c0f81257d5be166a9cab4536091dd03360b9fededec8a39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:25 GMT
ENV JAVA_VERSION=8.0.8.71
# Tue, 27 Oct 2026 00:00:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 27 Oct 2026 00:00:10 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda356205a2889df4884fa106b88a9007173146f1abe3b898026dbf66c80963`  
		Last Modified: Tue, 27 Oct 2026 00:00:33 GMT  
		Size: 1.4 MB (1410140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c02960b6b8b61659305790224d8cb01f8a5b8c30a5e4b79c64e8f6fc6be672f`  
		Last Modified: Tue, 27 Oct 2026 00:00:38 GMT  
		Size: 138.2 MB (138165827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5aa573f33924898e234a6d37204ae78a7749515fae9ca958aacaadb94b0d77cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb83455f52b6c0673bb8a2adde4ab49df8f4b1a6a90ec624c581d0e019adb35`

```dockerfile
```

-	Layers:
	-	`sha256:bbf57c9ac5b9973617c3a8b20f50c434a008ebe1bda558bac0b155932199ebcd`  
		Last Modified: Tue, 27 Oct 2026 00:00:34 GMT  
		Size: 2.2 MB (2157263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d869972b84e40f034465a142af6e1dc17b4e809482264a69ff1c10b4ae07374`  
		Last Modified: Tue, 27 Oct 2026 00:00:32 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:latest`

```console
$ docker pull ibmjava@sha256:16d4385c59589736834521e0da07b15bef2e399ed59954426ceb8bb95ad34175
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:latest` - linux; amd64

```console
$ docker pull ibmjava@sha256:a4ff3c43f170a25b4a1561068a6779b0fad6140c3527bf1fdeaf9ffdbe823c68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168047389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f49ec5c7ea21c8224bb87db01e85e5d061c6530ec35df8aa1917880b0fb42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:22:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:22:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:22:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:23:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:23:18 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9682ea89c7660f803717e840a80cfc3a3ab9799f71cd0f832e10ed921b205994`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 1.4 MB (1407375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00262678665afea901bf9b407e0513703eb910dc88daa37a865fd928544431c`  
		Last Modified: Mon, 26 Oct 2026 23:23:34 GMT  
		Size: 136.9 MB (136887526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:79dc9ee40dc320e1be528f741cf8b25c6ce78985fc27fa05be0129c255181210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618c97d7a096f8bf8659d922f334dac159329646d8ee320e2777a57fcb666e45`

```dockerfile
```

-	Layers:
	-	`sha256:fe5f030f1896f0ce08f8ce00462650f09fd2db4afa29faff61a29c3a33ea096d`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 2.2 MB (2157316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad7f5b7b4845a7b122726974186184b91352a8f4ff2e806a77300cf7277c7fb7`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a50d4e5f5521425e265bd4cffedade1db0ecef7c467708708c0f889b53f1d297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173669385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d04512f2532a3df36384dcec08a112430d2ae34e0b8fffe96dfcd77c9e943a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:30:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1ef953acc897852a3411be0de10b9c46be1f370ad5f36af1988095d537fc2c`  
		Last Modified: Sat, 17 Oct 2026 01:31:36 GMT  
		Size: 137.5 MB (137470708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:ef08b53885136753b274337c0a696a85f8f0a13b1d46ccf152e951daf0d7c386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb1dc7564f2bb0d07ae20e4068d67e27ae1582947e7cb29b7bb293790ec9f19`

```dockerfile
```

-	Layers:
	-	`sha256:71bb1b41bbae3302b202ed17abd8e13369938eff46084533ad845b324cd7593e`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 2.2 MB (2161250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8994ad1677d32ffcac049e62a532eeb51381a74bd0df2f67ba235a67dc58544`  
		Last Modified: Sat, 17 Oct 2026 01:31:32 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; s390x

```console
$ docker pull ibmjava@sha256:2e1061414bd43e7f35be48a8d5901e9f74a2322e8874c8f324901cc6840301ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167798773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b646c8041a58bd5d8c0f81257d5be166a9cab4536091dd03360b9fededec8a39`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:25 GMT
ENV JAVA_VERSION=8.0.8.71
# Tue, 27 Oct 2026 00:00:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 27 Oct 2026 00:00:10 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda356205a2889df4884fa106b88a9007173146f1abe3b898026dbf66c80963`  
		Last Modified: Tue, 27 Oct 2026 00:00:33 GMT  
		Size: 1.4 MB (1410140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c02960b6b8b61659305790224d8cb01f8a5b8c30a5e4b79c64e8f6fc6be672f`  
		Last Modified: Tue, 27 Oct 2026 00:00:38 GMT  
		Size: 138.2 MB (138165827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5aa573f33924898e234a6d37204ae78a7749515fae9ca958aacaadb94b0d77cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eb83455f52b6c0673bb8a2adde4ab49df8f4b1a6a90ec624c581d0e019adb35`

```dockerfile
```

-	Layers:
	-	`sha256:bbf57c9ac5b9973617c3a8b20f50c434a008ebe1bda558bac0b155932199ebcd`  
		Last Modified: Tue, 27 Oct 2026 00:00:34 GMT  
		Size: 2.2 MB (2157263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d869972b84e40f034465a142af6e1dc17b4e809482264a69ff1c10b4ae07374`  
		Last Modified: Tue, 27 Oct 2026 00:00:32 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:7d617eef3b657abf3889fb6a943e15844ff65dc7d964d441820ffa658eb2f6a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:ef1e6271de755dde78d28db455dd7d88eebbf74a34995aed51f35278175c910d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205336574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceeac25cfd3565b8a2a5e07024015f533fb714f737a24d42dbe583ff24cdb84a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:05 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:23:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:23:05 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:24:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:24:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b4a30c81f6e9fd8bb89109487650f5a5293e51bc817aafb7d60330f8b3c75a`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 1.4 MB (1407339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02e34adc58ad73b65c0fbd8e535a2de402cf412520bbc036352364154ed6506`  
		Last Modified: Mon, 26 Oct 2026 23:24:18 GMT  
		Size: 174.2 MB (174176747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:29e7ecd7f1942cde929e179301613df0fc803fa21c411a652083976a49a455ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3080857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b63e014fd9a97b1204266097f08f903ba418b41674e19ce35d91e06412ff4de`

```dockerfile
```

-	Layers:
	-	`sha256:f5089cf4023604c7745e5e12701cf778d8c3de144d56fbea8e96eb76de000cc9`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 3.1 MB (3068259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa4ac9cbf83a0749fd9b8345239431a5f33aafc24a1980a11b85b2906d414380`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:61c2f5e4bd38a5a291e1575625344697b1d03ff3d91c5756afb7a1c0c60a97d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211157356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de556a6464bf17f79af78e50cb4028ccdb3fa7b29f0eb45ca8e5cdd73122db3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:32:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:32:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de98044becf9c31487da39686a9d7d2ecaf1c1d8b7c51903b8fcdcafb9012381`  
		Last Modified: Sat, 17 Oct 2026 01:32:54 GMT  
		Size: 175.0 MB (174958679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:2957189dd8545ea6a523cfbe713d478aaf5db762b0a4de7d1ccb569f3581d748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee3fa1f708230d241662c81938a29c724a7f61dc831d4dceb6b30b5c95bdc01`

```dockerfile
```

-	Layers:
	-	`sha256:6dbc8da32bdd62d73343c14a7ac985cf234707175a2585acc88dac6086d43732`  
		Last Modified: Sat, 17 Oct 2026 01:32:50 GMT  
		Size: 3.1 MB (3054852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33e8feb5201686f0960d89864e23f1e03a3bd9e8f14a0c42dfa89b8e83accc05`  
		Last Modified: Sat, 17 Oct 2026 01:32:49 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:68f78356dc25153f386547c529cc54a13f0d9bc4d44adb61a2419521f30c2c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.3 MB (198346609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1628b60793cd1bc464f4ffd00ca9fc3e86d3542709ae028862fafa93bbc2a616`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:25 GMT
ENV JAVA_VERSION=8.0.8.71
# Tue, 27 Oct 2026 00:00:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 27 Oct 2026 00:00:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda356205a2889df4884fa106b88a9007173146f1abe3b898026dbf66c80963`  
		Last Modified: Tue, 27 Oct 2026 00:00:33 GMT  
		Size: 1.4 MB (1410140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ea34980efae3baed8929c485898d8949f8d460af3dc6f21880efb2d4c982be`  
		Last Modified: Tue, 27 Oct 2026 00:01:14 GMT  
		Size: 168.7 MB (168713663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:861a40f5455a2067243285f01ed4491ce85b743672772bd1dcf731e0d001cb45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12c189504328fdfbe7161bb93b2c501da92c2e21582b316ae0e8234fe06d5c5`

```dockerfile
```

-	Layers:
	-	`sha256:10e421698b13497ef18c8289a2fab8525ca47488f41e2c023c3df8ea1d64f8a2`  
		Last Modified: Tue, 27 Oct 2026 00:01:10 GMT  
		Size: 2.7 MB (2741561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af9c7ae249ca8c962b6166b42d834e27307eddefbb497fed60daf2b4385bbd82`  
		Last Modified: Tue, 27 Oct 2026 00:01:10 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:9f3bc9419796ef86df45497ec978fb9972be7a70c538ab1dbbc08711a5ce4f01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:135e031832be3fc0cc1f05a2f4ee4fa4ef73682f0e24de9365aaefaccab19568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102380502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc61b26395c1cc3332ae4e57533ce56e6591a91c124b62390d94dbc9ee9c8e5b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:22:45 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:22:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:22:45 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:23:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:23:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50642579d2f600dfa5c7071889c77ec47d2329be24b9113fdc5ba4e084fd9ed`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 1.4 MB (1407391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf44fa8118dd69f5c3dc5b3d11cabadfcd38128be2c5d410902e9361383093a`  
		Last Modified: Mon, 26 Oct 2026 23:23:19 GMT  
		Size: 71.2 MB (71220623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:c29a1963679373cc325ef4658ec0e8f6ba0f563853645f1a9c2bfb3453eb47de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a968459c30829f13c2c0b8591711e7485efbdacaef4d9201f9cac874c70b5a7`

```dockerfile
```

-	Layers:
	-	`sha256:18fbc3206f2bcddec9fba2fcf43d50ce2be4c318b4a201e5b811b0fa90b67d10`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 2.1 MB (2139749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eded8e6a8a65ce97883cd364015a5f003735b653f813c62637fac99fb182235`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:747d1503a4a02c78c8cd1cb030ba1dbe8eadc8399383840fb158022dfca39e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108189211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea9081be803b81c811e7982f0e427eaaeca396d5736389c48db6633870daf4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:31:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:31:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7740925e853cd3ae3cb8c1cd4166f7d8a5cb4f3137fbf6714c0f936e31e6deb`  
		Last Modified: Sat, 17 Oct 2026 01:32:01 GMT  
		Size: 72.0 MB (71990534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:a7413ef28696fe5e31d789b3b61ad1927cd64b023627d9f550207f4db09ff39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95d63663aec6d3b90a5f398ea7244f342fcaaf9cebee6ab6e478637e9ca8e55`

```dockerfile
```

-	Layers:
	-	`sha256:4c452f139702230d7daa233ce8b330bf0d7a3ca21f53ae1d9a03c5993fc4095e`  
		Last Modified: Sat, 17 Oct 2026 01:31:59 GMT  
		Size: 2.1 MB (2144894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a5df4fbde3f0d7459c4bb45b5cc7f339507a0c937f97f5d77786c7409d1398c`  
		Last Modified: Sat, 17 Oct 2026 01:31:59 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:e0f9e34a7632c85f2e72d56b4a343cad61e35c4e15aa78d8de0f682fc50468da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104353634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0177d8a1f6f992496b1e87c04922c05dd62f0be8aeb875cbe55ce307fd7a1c3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:29 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:29 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:59:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:59:51 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfff157f6ca7dff0a2b10b17d6007cdd92f170f3371775f306b5883020580544`  
		Last Modified: Tue, 27 Oct 2026 00:00:11 GMT  
		Size: 1.4 MB (1410170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec00098bffaa6dd6236f9669827e1e93dd741fc72d30eff615392fefb2b6241d`  
		Last Modified: Tue, 27 Oct 2026 00:00:14 GMT  
		Size: 74.7 MB (74720658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:c3a630444c12af35cf02f66fe1fe0ecea065bc794a4891d1d5a8d40e6a5cdbc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2155972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e062ea681d12abdc1f06e6f3d6e1768e526a549ff09440afaf1840f95d0439b2`

```dockerfile
```

-	Layers:
	-	`sha256:24042a3c1dd4464fde619346db16f397d3039379c8534b90ed0a5310fe442b49`  
		Last Modified: Tue, 27 Oct 2026 00:00:13 GMT  
		Size: 2.1 MB (2143371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0feed676e6dd24eee8788fd1e63f2a0d65ed07b6d5d886f798ec4a42c55f3021`  
		Last Modified: Tue, 27 Oct 2026 00:00:12 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
