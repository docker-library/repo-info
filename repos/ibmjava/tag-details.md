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
$ docker pull ibmjava@sha256:3ee3d404bef5bcd9754bed09d98ca8ad5b811fec6a517212c7d4aed027dcad84
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
$ docker pull ibmjava@sha256:7d5ef7f3b57eb6444b70e35afd73b4ea2fb84e83378ce54470c15bd0ec88a01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168444248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c9e41a9f73b52ab36d049c7632da2305128103dee71e89d1d08ca985a6e7f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:34 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:34 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf405ae1942b7b86241724c571cfee3c9a71d0ac1e4a342d5e28b1e15f9aaa45`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 1.4 MB (1407565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e6cb78cc44e8001fdd5381be7ab9034c452104c6c2867f36011477a056ec49`  
		Last Modified: Fri, 20 Nov 2026 03:23:36 GMT  
		Size: 137.0 MB (136966868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:51e2e31e142c9aa538ce96e5f57b14477595e716738c86c33ec7c5756a4827c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b35eb4a6c816ea171a417a4c0d8fd91101740bbdcf734c699836edb18fda9d`

```dockerfile
```

-	Layers:
	-	`sha256:73780d5f3c30fa3ec3afbc733d0597bd2778eea8124e6d49100d0a02affe5b9a`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 2.2 MB (2157924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36b475dc7bd99e858a3abcf384023f104093b2518de98c0d191f503d52a21e1e`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:6c43318e9413a0eea0b921d2843796c00c319eb6127f1929ada40a52b5d96f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174069745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2845bf1a7716c1e34bc430b36868b2a6bfa78dd30e3ed51c9d3ff9c4ccdf82e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 04:58:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 04:58:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b5dbdfccae28a91fd593cedb3aad0e04bcb136596c15ed6b42ded664a8e23`  
		Last Modified: Fri, 20 Nov 2026 04:59:24 GMT  
		Size: 137.6 MB (137554375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:40b441fe7622d933efa20d38af199385c6cfe6a1e69c6c24e4e255028694c1f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a081f30b624dbb0b2df32a08f9b31d6b629cbbe535ded9a13e5d1cf20b2051`

```dockerfile
```

-	Layers:
	-	`sha256:df11fffaee8ef31a8b32b1625619887632dbee18addc796877d3defab5b6d01b`  
		Last Modified: Fri, 20 Nov 2026 04:59:21 GMT  
		Size: 2.2 MB (2161214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:095a369d06c2af70258adb5ca1017af50108c818388ff9450f18d961c880b0c2`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; s390x

```console
$ docker pull ibmjava@sha256:6a9ab08340afda39c13299ccd903748bca48b456e496d4ee77ab3c587955f87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168227860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419cc0d6a31eb2ab1d27e2faa4a22135b7457c5cdc3475e4252f1744a6996e3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:20:49 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:20:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:20:49 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:21:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:21:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4f46bebcb3142d91165d9904d09861bdd09dba04ec5c5da3021a21af0957af`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 1.4 MB (1410425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b446bb69fcae234b1c1a105c2220753ca7aa7027faec8b956e76bd502a7485e8`  
		Last Modified: Fri, 20 Nov 2026 03:22:01 GMT  
		Size: 138.3 MB (138278417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:79da2ec95b51e51211fad3ba6b548c238429c088caad3229c4ab1777fdedaf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd31b690285a22c2287b1ac0f052eb04d0b59f6cdc40f26c462604bec49fd53`

```dockerfile
```

-	Layers:
	-	`sha256:08e4a8935555fd5c9c2c93d427799a880c07ac57c9d8daab7815f918ed211b77`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 2.2 MB (2157871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4c6fa433e92898b6eb44c0e4d914bcaf493c601f71289237e7971519c057c4e`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:3ee3d404bef5bcd9754bed09d98ca8ad5b811fec6a517212c7d4aed027dcad84
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
$ docker pull ibmjava@sha256:7d5ef7f3b57eb6444b70e35afd73b4ea2fb84e83378ce54470c15bd0ec88a01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168444248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c9e41a9f73b52ab36d049c7632da2305128103dee71e89d1d08ca985a6e7f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:34 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:34 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf405ae1942b7b86241724c571cfee3c9a71d0ac1e4a342d5e28b1e15f9aaa45`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 1.4 MB (1407565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e6cb78cc44e8001fdd5381be7ab9034c452104c6c2867f36011477a056ec49`  
		Last Modified: Fri, 20 Nov 2026 03:23:36 GMT  
		Size: 137.0 MB (136966868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:51e2e31e142c9aa538ce96e5f57b14477595e716738c86c33ec7c5756a4827c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b35eb4a6c816ea171a417a4c0d8fd91101740bbdcf734c699836edb18fda9d`

```dockerfile
```

-	Layers:
	-	`sha256:73780d5f3c30fa3ec3afbc733d0597bd2778eea8124e6d49100d0a02affe5b9a`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 2.2 MB (2157924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36b475dc7bd99e858a3abcf384023f104093b2518de98c0d191f503d52a21e1e`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:6c43318e9413a0eea0b921d2843796c00c319eb6127f1929ada40a52b5d96f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174069745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2845bf1a7716c1e34bc430b36868b2a6bfa78dd30e3ed51c9d3ff9c4ccdf82e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 04:58:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 04:58:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b5dbdfccae28a91fd593cedb3aad0e04bcb136596c15ed6b42ded664a8e23`  
		Last Modified: Fri, 20 Nov 2026 04:59:24 GMT  
		Size: 137.6 MB (137554375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:40b441fe7622d933efa20d38af199385c6cfe6a1e69c6c24e4e255028694c1f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a081f30b624dbb0b2df32a08f9b31d6b629cbbe535ded9a13e5d1cf20b2051`

```dockerfile
```

-	Layers:
	-	`sha256:df11fffaee8ef31a8b32b1625619887632dbee18addc796877d3defab5b6d01b`  
		Last Modified: Fri, 20 Nov 2026 04:59:21 GMT  
		Size: 2.2 MB (2161214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:095a369d06c2af70258adb5ca1017af50108c818388ff9450f18d961c880b0c2`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:6a9ab08340afda39c13299ccd903748bca48b456e496d4ee77ab3c587955f87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168227860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419cc0d6a31eb2ab1d27e2faa4a22135b7457c5cdc3475e4252f1744a6996e3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:20:49 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:20:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:20:49 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:21:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:21:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4f46bebcb3142d91165d9904d09861bdd09dba04ec5c5da3021a21af0957af`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 1.4 MB (1410425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b446bb69fcae234b1c1a105c2220753ca7aa7027faec8b956e76bd502a7485e8`  
		Last Modified: Fri, 20 Nov 2026 03:22:01 GMT  
		Size: 138.3 MB (138278417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:79da2ec95b51e51211fad3ba6b548c238429c088caad3229c4ab1777fdedaf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd31b690285a22c2287b1ac0f052eb04d0b59f6cdc40f26c462604bec49fd53`

```dockerfile
```

-	Layers:
	-	`sha256:08e4a8935555fd5c9c2c93d427799a880c07ac57c9d8daab7815f918ed211b77`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 2.2 MB (2157871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4c6fa433e92898b6eb44c0e4d914bcaf493c601f71289237e7971519c057c4e`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:5341df408109ceb36c4283c8ab16237678dcbade94439c3570dd80d6a521c33c
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
$ docker pull ibmjava@sha256:26d49759c52afbe90e3afbaed42d74d9b97d44dd766afecc5a5c3de2b380953d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.7 MB (205725085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fc9c7d4d3b7d7423f085dccf9d8322e9ef4061babda03bd4cd79d14514811f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:48 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:48 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9a6502ac2e0260c92004941250d488dfa21b0cad772448a472bc40a2593461`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 1.4 MB (1407524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153007822adbfc5aaccb2debbdd68751dbd657f6c6553c2c5df8ebb8ed09b4bb`  
		Last Modified: Fri, 20 Nov 2026 03:24:00 GMT  
		Size: 174.2 MB (174247746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:6245327a01fd8013b8e2969829c13f3a054e87ebc7ec3500fc9c4894479777ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3080850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f6f9294f08ebf6f3fd520ec1560a86f347927b096997f7ef7dbe03c8d3e5f4`

```dockerfile
```

-	Layers:
	-	`sha256:ede93a6c2f7bb00cda49da314911ca47bb53d0de6dde606b83463ffe8512a27a`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 3.1 MB (3068252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9c82473f6eb2edbc227f1c87e1cc9d2b30f624c80270d1fa7c9bb698b935968`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:616f1dc4af127db53e06a69d9e2f2105947548259227d0e441caf37dfaeafd9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211566643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aece8c6a8c66a9d7eaf9506ba7761fa47798889fd70838c1c1077d8da09f3f49`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 05:00:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 05:00:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa24d0c381118205b5dbfd48627b100e149220c336d3ea71f6353ade57fd594`  
		Last Modified: Fri, 20 Nov 2026 05:01:29 GMT  
		Size: 175.1 MB (175051273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:9fa548d11b625d50295efd0389f420996396ed4ee91c91d99452a0aa02548535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3066833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf855af9edd718714489b13db8e215f2d45de7deeed28eceef277cdb037916f8`

```dockerfile
```

-	Layers:
	-	`sha256:15860c4f904d4e5bfc4a03b925743f5b341f5097856439fcf13b374c0cecaae2`  
		Last Modified: Fri, 20 Nov 2026 05:01:22 GMT  
		Size: 3.1 MB (3054201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d45d2dfb886920917093749d2cfe58e2a83b79ac6066ca6fa72618cc26b6aa3`  
		Last Modified: Fri, 20 Nov 2026 05:01:21 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:6b1a487950482eacea949254a851b7463c0ca7573e4750720991a6c6dea193dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a91362cd9f8680af0fc97a618b7c3eac669e2f6704a184e9186b43da5affe3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:21:30 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:21:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:21:30 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a5afb9a53ffbb2b161b75df1a9232c049854075a90e16e65671be6893224f0`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 1.4 MB (1410498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac1748395b5d979a17729eb7de1d1dd09c3437c1f66363a40500574bbfd57cc`  
		Last Modified: Fri, 20 Nov 2026 03:23:11 GMT  
		Size: 168.8 MB (168829657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:66d102decdfc0edd4a9fac4fda485a740b830e5590052677a249c232a26bb012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c97bb3d47774631af4c37cc988e88d5c1b9779ad5f499c76332852e585423b`

```dockerfile
```

-	Layers:
	-	`sha256:f6b6a52d07e90ed891abb7399b99a4275fc3dcfa6fc015126a9ad8e08a8c2905`  
		Last Modified: Fri, 20 Nov 2026 03:23:08 GMT  
		Size: 2.7 MB (2741554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7d43be411a69da3fb32d4c6731c8f91f1d1b91a35f1bec2eb84973455c16b34`  
		Last Modified: Fri, 20 Nov 2026 03:23:08 GMT  
		Size: 12.6 KB (12596 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:a01c974b8e96976a3a66b723127ef6234b2e5dcc74e14b8b69d77328fd90f164
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
$ docker pull ibmjava@sha256:df769d16d40eaa8bde10f99a577264147a469812575b57dc54274426dc16bfe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103046145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2745fd8e1e55d28e1698a7e24e78df4241275adba8245cd701b45659f7cd1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:35 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:35 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f68f4b7bf1d2209be0c28dfaf8fc7464006bcd468aa325de5cdef6c423ce4f`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 1.4 MB (1407564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed01233767f01e22db97d191faf33004e0705fbac5a2582022867a1be88b9a65`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 71.6 MB (71568766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:89632e3012972a4983befc3f1feaf3a50f58a8f9c82abef65d3cd1075a4ac55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac3ec6e2854489272c6ce43451164bf0efa3277b2d18cbff1e262277bd9b748`

```dockerfile
```

-	Layers:
	-	`sha256:48a71e317763ad7d07422a8e09bbb5a5b966482f27937f6f09a56108ffdbb52d`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 2.1 MB (2140357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:152e7d2d4aff4bc5763b7204e3ee9dc1ef61f2b9e26b977bc444ddf9cb42f1a2`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:de7beed12d6547ca0cef2c017f53a44b3cb5c0983716e327d2a4a18165aa7100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110386114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd8e83de50dd19951c4e80c322fa753ba06050bb70f0b0ebe71ee95739dd2d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 04:59:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 04:59:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcbd2d5d49ac2b6a21365d32cc177518907aba7404ac3a314cfeb66c0d46fb6`  
		Last Modified: Fri, 20 Nov 2026 04:59:29 GMT  
		Size: 73.9 MB (73870744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5685ac8f8d4f94be64e8608f09fe194d4982531ef562a09ee16b8de5514c9014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d070b864698fad8b55d0373dd6fcab14aa46d9ed821225668f398d9d831f55`

```dockerfile
```

-	Layers:
	-	`sha256:ca5f858ebddc2fb7e90e0750e676b4d824bf35b4c8a42c0b187918a382cf47e2`  
		Last Modified: Fri, 20 Nov 2026 04:59:27 GMT  
		Size: 2.1 MB (2144858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f360406998bfb426b9362c937a78a35397c37745db800e413cd6ee4b018adfab`  
		Last Modified: Fri, 20 Nov 2026 04:59:27 GMT  
		Size: 12.6 KB (12634 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:315b46a1a2a94ae8ddccc7dbc479bd8f9cbdabdc515f3f0826332ff1c8f4db62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105035910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a2fd63f397dad0c1559af4970418ced5585e6cfe98b659d98498ca8107700f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:21:30 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:21:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:21:30 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:22:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:22:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a5afb9a53ffbb2b161b75df1a9232c049854075a90e16e65671be6893224f0`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 1.4 MB (1410498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc949da72a71a652d0f12b43801dbb01c901b04821a2cbf9b7aa54e2dad7a27`  
		Last Modified: Fri, 20 Nov 2026 03:22:30 GMT  
		Size: 75.1 MB (75086394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:b0048df210ee5011647c0a0eefee6d581cda871b8e7f9f5df5a6eec007332b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d54ea61e37d13bbacbb3fcf13754a27da639235058bc8361b11bbcd58603507`

```dockerfile
```

-	Layers:
	-	`sha256:0da8dd72c2da0670ce423705e490e0731496cfd66cbf205beecd877f9dd393c2`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 2.1 MB (2143979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e0a5b2218d3fe4f95e582cd66b0a7c928c33ad6a878957d7dc67cea828090bf`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 12.6 KB (12600 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:jre`

```console
$ docker pull ibmjava@sha256:3ee3d404bef5bcd9754bed09d98ca8ad5b811fec6a517212c7d4aed027dcad84
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
$ docker pull ibmjava@sha256:7d5ef7f3b57eb6444b70e35afd73b4ea2fb84e83378ce54470c15bd0ec88a01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168444248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c9e41a9f73b52ab36d049c7632da2305128103dee71e89d1d08ca985a6e7f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:34 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:34 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf405ae1942b7b86241724c571cfee3c9a71d0ac1e4a342d5e28b1e15f9aaa45`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 1.4 MB (1407565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e6cb78cc44e8001fdd5381be7ab9034c452104c6c2867f36011477a056ec49`  
		Last Modified: Fri, 20 Nov 2026 03:23:36 GMT  
		Size: 137.0 MB (136966868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:51e2e31e142c9aa538ce96e5f57b14477595e716738c86c33ec7c5756a4827c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b35eb4a6c816ea171a417a4c0d8fd91101740bbdcf734c699836edb18fda9d`

```dockerfile
```

-	Layers:
	-	`sha256:73780d5f3c30fa3ec3afbc733d0597bd2778eea8124e6d49100d0a02affe5b9a`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 2.2 MB (2157924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36b475dc7bd99e858a3abcf384023f104093b2518de98c0d191f503d52a21e1e`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:6c43318e9413a0eea0b921d2843796c00c319eb6127f1929ada40a52b5d96f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174069745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2845bf1a7716c1e34bc430b36868b2a6bfa78dd30e3ed51c9d3ff9c4ccdf82e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 04:58:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 04:58:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b5dbdfccae28a91fd593cedb3aad0e04bcb136596c15ed6b42ded664a8e23`  
		Last Modified: Fri, 20 Nov 2026 04:59:24 GMT  
		Size: 137.6 MB (137554375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:40b441fe7622d933efa20d38af199385c6cfe6a1e69c6c24e4e255028694c1f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a081f30b624dbb0b2df32a08f9b31d6b629cbbe535ded9a13e5d1cf20b2051`

```dockerfile
```

-	Layers:
	-	`sha256:df11fffaee8ef31a8b32b1625619887632dbee18addc796877d3defab5b6d01b`  
		Last Modified: Fri, 20 Nov 2026 04:59:21 GMT  
		Size: 2.2 MB (2161214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:095a369d06c2af70258adb5ca1017af50108c818388ff9450f18d961c880b0c2`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:6a9ab08340afda39c13299ccd903748bca48b456e496d4ee77ab3c587955f87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168227860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419cc0d6a31eb2ab1d27e2faa4a22135b7457c5cdc3475e4252f1744a6996e3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:20:49 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:20:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:20:49 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:21:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:21:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4f46bebcb3142d91165d9904d09861bdd09dba04ec5c5da3021a21af0957af`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 1.4 MB (1410425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b446bb69fcae234b1c1a105c2220753ca7aa7027faec8b956e76bd502a7485e8`  
		Last Modified: Fri, 20 Nov 2026 03:22:01 GMT  
		Size: 138.3 MB (138278417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:79da2ec95b51e51211fad3ba6b548c238429c088caad3229c4ab1777fdedaf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd31b690285a22c2287b1ac0f052eb04d0b59f6cdc40f26c462604bec49fd53`

```dockerfile
```

-	Layers:
	-	`sha256:08e4a8935555fd5c9c2c93d427799a880c07ac57c9d8daab7815f918ed211b77`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 2.2 MB (2157871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4c6fa433e92898b6eb44c0e4d914bcaf493c601f71289237e7971519c057c4e`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:latest`

```console
$ docker pull ibmjava@sha256:3ee3d404bef5bcd9754bed09d98ca8ad5b811fec6a517212c7d4aed027dcad84
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
$ docker pull ibmjava@sha256:7d5ef7f3b57eb6444b70e35afd73b4ea2fb84e83378ce54470c15bd0ec88a01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168444248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c9e41a9f73b52ab36d049c7632da2305128103dee71e89d1d08ca985a6e7f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:34 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:34 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf405ae1942b7b86241724c571cfee3c9a71d0ac1e4a342d5e28b1e15f9aaa45`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 1.4 MB (1407565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e6cb78cc44e8001fdd5381be7ab9034c452104c6c2867f36011477a056ec49`  
		Last Modified: Fri, 20 Nov 2026 03:23:36 GMT  
		Size: 137.0 MB (136966868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:51e2e31e142c9aa538ce96e5f57b14477595e716738c86c33ec7c5756a4827c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b35eb4a6c816ea171a417a4c0d8fd91101740bbdcf734c699836edb18fda9d`

```dockerfile
```

-	Layers:
	-	`sha256:73780d5f3c30fa3ec3afbc733d0597bd2778eea8124e6d49100d0a02affe5b9a`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 2.2 MB (2157924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36b475dc7bd99e858a3abcf384023f104093b2518de98c0d191f503d52a21e1e`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:6c43318e9413a0eea0b921d2843796c00c319eb6127f1929ada40a52b5d96f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.1 MB (174069745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2845bf1a7716c1e34bc430b36868b2a6bfa78dd30e3ed51c9d3ff9c4ccdf82e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 04:58:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 04:58:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b5dbdfccae28a91fd593cedb3aad0e04bcb136596c15ed6b42ded664a8e23`  
		Last Modified: Fri, 20 Nov 2026 04:59:24 GMT  
		Size: 137.6 MB (137554375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:40b441fe7622d933efa20d38af199385c6cfe6a1e69c6c24e4e255028694c1f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a081f30b624dbb0b2df32a08f9b31d6b629cbbe535ded9a13e5d1cf20b2051`

```dockerfile
```

-	Layers:
	-	`sha256:df11fffaee8ef31a8b32b1625619887632dbee18addc796877d3defab5b6d01b`  
		Last Modified: Fri, 20 Nov 2026 04:59:21 GMT  
		Size: 2.2 MB (2161214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:095a369d06c2af70258adb5ca1017af50108c818388ff9450f18d961c880b0c2`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 13.2 KB (13237 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; s390x

```console
$ docker pull ibmjava@sha256:6a9ab08340afda39c13299ccd903748bca48b456e496d4ee77ab3c587955f87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.2 MB (168227860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419cc0d6a31eb2ab1d27e2faa4a22135b7457c5cdc3475e4252f1744a6996e3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:20:49 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:20:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:20:49 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:21:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:21:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4f46bebcb3142d91165d9904d09861bdd09dba04ec5c5da3021a21af0957af`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 1.4 MB (1410425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b446bb69fcae234b1c1a105c2220753ca7aa7027faec8b956e76bd502a7485e8`  
		Last Modified: Fri, 20 Nov 2026 03:22:01 GMT  
		Size: 138.3 MB (138278417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:79da2ec95b51e51211fad3ba6b548c238429c088caad3229c4ab1777fdedaf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd31b690285a22c2287b1ac0f052eb04d0b59f6cdc40f26c462604bec49fd53`

```dockerfile
```

-	Layers:
	-	`sha256:08e4a8935555fd5c9c2c93d427799a880c07ac57c9d8daab7815f918ed211b77`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 2.2 MB (2157871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4c6fa433e92898b6eb44c0e4d914bcaf493c601f71289237e7971519c057c4e`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:5341df408109ceb36c4283c8ab16237678dcbade94439c3570dd80d6a521c33c
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
$ docker pull ibmjava@sha256:26d49759c52afbe90e3afbaed42d74d9b97d44dd766afecc5a5c3de2b380953d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.7 MB (205725085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fc9c7d4d3b7d7423f085dccf9d8322e9ef4061babda03bd4cd79d14514811f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:48 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:48 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9a6502ac2e0260c92004941250d488dfa21b0cad772448a472bc40a2593461`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 1.4 MB (1407524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153007822adbfc5aaccb2debbdd68751dbd657f6c6553c2c5df8ebb8ed09b4bb`  
		Last Modified: Fri, 20 Nov 2026 03:24:00 GMT  
		Size: 174.2 MB (174247746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:6245327a01fd8013b8e2969829c13f3a054e87ebc7ec3500fc9c4894479777ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3080850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f6f9294f08ebf6f3fd520ec1560a86f347927b096997f7ef7dbe03c8d3e5f4`

```dockerfile
```

-	Layers:
	-	`sha256:ede93a6c2f7bb00cda49da314911ca47bb53d0de6dde606b83463ffe8512a27a`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 3.1 MB (3068252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9c82473f6eb2edbc227f1c87e1cc9d2b30f624c80270d1fa7c9bb698b935968`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:616f1dc4af127db53e06a69d9e2f2105947548259227d0e441caf37dfaeafd9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211566643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aece8c6a8c66a9d7eaf9506ba7761fa47798889fd70838c1c1077d8da09f3f49`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 05:00:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 05:00:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa24d0c381118205b5dbfd48627b100e149220c336d3ea71f6353ade57fd594`  
		Last Modified: Fri, 20 Nov 2026 05:01:29 GMT  
		Size: 175.1 MB (175051273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:9fa548d11b625d50295efd0389f420996396ed4ee91c91d99452a0aa02548535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3066833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf855af9edd718714489b13db8e215f2d45de7deeed28eceef277cdb037916f8`

```dockerfile
```

-	Layers:
	-	`sha256:15860c4f904d4e5bfc4a03b925743f5b341f5097856439fcf13b374c0cecaae2`  
		Last Modified: Fri, 20 Nov 2026 05:01:22 GMT  
		Size: 3.1 MB (3054201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d45d2dfb886920917093749d2cfe58e2a83b79ac6066ca6fa72618cc26b6aa3`  
		Last Modified: Fri, 20 Nov 2026 05:01:21 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:6b1a487950482eacea949254a851b7463c0ca7573e4750720991a6c6dea193dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a91362cd9f8680af0fc97a618b7c3eac669e2f6704a184e9186b43da5affe3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:21:30 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:21:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:21:30 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a5afb9a53ffbb2b161b75df1a9232c049854075a90e16e65671be6893224f0`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 1.4 MB (1410498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac1748395b5d979a17729eb7de1d1dd09c3437c1f66363a40500574bbfd57cc`  
		Last Modified: Fri, 20 Nov 2026 03:23:11 GMT  
		Size: 168.8 MB (168829657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:66d102decdfc0edd4a9fac4fda485a740b830e5590052677a249c232a26bb012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c97bb3d47774631af4c37cc988e88d5c1b9779ad5f499c76332852e585423b`

```dockerfile
```

-	Layers:
	-	`sha256:f6b6a52d07e90ed891abb7399b99a4275fc3dcfa6fc015126a9ad8e08a8c2905`  
		Last Modified: Fri, 20 Nov 2026 03:23:08 GMT  
		Size: 2.7 MB (2741554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7d43be411a69da3fb32d4c6731c8f91f1d1b91a35f1bec2eb84973455c16b34`  
		Last Modified: Fri, 20 Nov 2026 03:23:08 GMT  
		Size: 12.6 KB (12596 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:a01c974b8e96976a3a66b723127ef6234b2e5dcc74e14b8b69d77328fd90f164
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
$ docker pull ibmjava@sha256:df769d16d40eaa8bde10f99a577264147a469812575b57dc54274426dc16bfe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103046145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2745fd8e1e55d28e1698a7e24e78df4241275adba8245cd701b45659f7cd1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:35 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:35 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f68f4b7bf1d2209be0c28dfaf8fc7464006bcd468aa325de5cdef6c423ce4f`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 1.4 MB (1407564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed01233767f01e22db97d191faf33004e0705fbac5a2582022867a1be88b9a65`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 71.6 MB (71568766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:89632e3012972a4983befc3f1feaf3a50f58a8f9c82abef65d3cd1075a4ac55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac3ec6e2854489272c6ce43451164bf0efa3277b2d18cbff1e262277bd9b748`

```dockerfile
```

-	Layers:
	-	`sha256:48a71e317763ad7d07422a8e09bbb5a5b966482f27937f6f09a56108ffdbb52d`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 2.1 MB (2140357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:152e7d2d4aff4bc5763b7204e3ee9dc1ef61f2b9e26b977bc444ddf9cb42f1a2`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:de7beed12d6547ca0cef2c017f53a44b3cb5c0983716e327d2a4a18165aa7100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110386114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd8e83de50dd19951c4e80c322fa753ba06050bb70f0b0ebe71ee95739dd2d8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 04:59:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 04:59:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcbd2d5d49ac2b6a21365d32cc177518907aba7404ac3a314cfeb66c0d46fb6`  
		Last Modified: Fri, 20 Nov 2026 04:59:29 GMT  
		Size: 73.9 MB (73870744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5685ac8f8d4f94be64e8608f09fe194d4982531ef562a09ee16b8de5514c9014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d070b864698fad8b55d0373dd6fcab14aa46d9ed821225668f398d9d831f55`

```dockerfile
```

-	Layers:
	-	`sha256:ca5f858ebddc2fb7e90e0750e676b4d824bf35b4c8a42c0b187918a382cf47e2`  
		Last Modified: Fri, 20 Nov 2026 04:59:27 GMT  
		Size: 2.1 MB (2144858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f360406998bfb426b9362c937a78a35397c37745db800e413cd6ee4b018adfab`  
		Last Modified: Fri, 20 Nov 2026 04:59:27 GMT  
		Size: 12.6 KB (12634 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:315b46a1a2a94ae8ddccc7dbc479bd8f9cbdabdc515f3f0826332ff1c8f4db62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105035910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a2fd63f397dad0c1559af4970418ced5585e6cfe98b659d98498ca8107700f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:21:30 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:21:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:21:30 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:22:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:22:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a5afb9a53ffbb2b161b75df1a9232c049854075a90e16e65671be6893224f0`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 1.4 MB (1410498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc949da72a71a652d0f12b43801dbb01c901b04821a2cbf9b7aa54e2dad7a27`  
		Last Modified: Fri, 20 Nov 2026 03:22:30 GMT  
		Size: 75.1 MB (75086394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:b0048df210ee5011647c0a0eefee6d581cda871b8e7f9f5df5a6eec007332b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d54ea61e37d13bbacbb3fcf13754a27da639235058bc8361b11bbcd58603507`

```dockerfile
```

-	Layers:
	-	`sha256:0da8dd72c2da0670ce423705e490e0731496cfd66cbf205beecd877f9dd393c2`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 2.1 MB (2143979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e0a5b2218d3fe4f95e582cd66b0a7c928c33ad6a878957d7dc67cea828090bf`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 12.6 KB (12600 bytes)  
		MIME: application/vnd.in-toto+json
