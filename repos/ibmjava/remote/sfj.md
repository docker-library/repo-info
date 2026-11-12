## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:c9460f579ff21d462c307cd92ba7110669ad965cb975e3d9a7696a04b067992c
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
$ docker pull ibmjava@sha256:eb2d7077412d3fb7d0d24d44b5932515c948ade285618b8dea1342a851cc56cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102697534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7451791847de72bbcde9e465b51c89babbe31c39692256b26edf46b01ba40d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:05:08 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:05:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:05:08 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:05:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:05:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6452123695e9695728b6ca82011a61946e92f744231e41d392a1fdc7a5c14d5`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 1.4 MB (1407380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b6500538f2cbcdec84edb380f966aaa38445d244b0c218537b59f821754ad`  
		Last Modified: Thu, 12 Nov 2026 17:05:44 GMT  
		Size: 71.2 MB (71220621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:6707704b1df4b2d7cf963f8612549624ce40351c9e49b43c1508dab3e38a0021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28d456b5d3dcfaeb6ad49e9f1efae7a309f62ec719e915d379a7de8b7fffcb`

```dockerfile
```

-	Layers:
	-	`sha256:665145a71d87a15493f52351dc7394508c664d2209cfee51132a0f55713eef6e`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 2.1 MB (2140357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da30e0325d34cdcde1bd5d8d77c3c92729d658e1746f1ce25d680d8bce57932e`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:f14e5479c60520047fbc17b31e231667127301fdfb5d1a96831fefbe2bfa0fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108502434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5306920001765c86779f59957deda8bece87d759898bfaa506bc2808d5857ccb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:03:46 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:03:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:03:46 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:04:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:04:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8800ed5d0e6c0c576b97de7b9fc3b15601a3348b44c928b530fffb0389b9b0`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 1.5 MB (1493807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e20a8aef29b8dca186c397b958c8438db54e9d1b8d31baf4cb8263b53a95c76`  
		Last Modified: Thu, 12 Nov 2026 17:04:55 GMT  
		Size: 72.0 MB (71990527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:36be2a798796e774ca108961bd652cd7dea34ca247191f2a036d987f19dc8058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74f125785d0bab65aca79c32ddc93ce650616148685e4cf76d17804b39c1b4c`

```dockerfile
```

-	Layers:
	-	`sha256:698467cff7629626bbee9603867bb7916f29ab6da3c9cb8842bce712aa7c3562`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 2.1 MB (2144858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:422965fc27b02fa21130b36b8c264740c0b6c955d2c3e2c145a68afffc144f74`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:7cad557ee90196965eb9ab0cea97b287b01acb432d500c4db6313d11fe623ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104669392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fc72d4de0b3ac4379c4195b71012d5ac0a883876ad1bb7eaa6c0bf1aac3f19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:25 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:25 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:25 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:27 GMT
ADD file:2eb742111a0ed752506db948cef18dd825d45b92c3bb8ae228a88ed48e1b7c11 in / 
# Tue, 10 Nov 2026 08:09:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:19:57 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:19:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:19:57 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:20:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:20:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546056fec9ae7853ae83da83a1b70a31142b612b9cda5562eb8ca0d769975cd0`  
		Last Modified: Thu, 12 Nov 2026 17:20:48 GMT  
		Size: 1.4 MB (1410521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b497df64d9e7916042490d73513a8f473e55c8c7e4e18014e0e0c2af3b10e6ab`  
		Last Modified: Thu, 12 Nov 2026 17:20:51 GMT  
		Size: 74.7 MB (74720652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:de8ef212ec7ad1a38dc8e4838104caa872438c22338ea7533bf18170aaa3b908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ce9eb1894c4d5ad6cfdf23053b54963ea11ebcb75c4cdee9205518b91dae21`

```dockerfile
```

-	Layers:
	-	`sha256:7c1f42b0cf4ad4ead464907ee7eead7280f8dfaccb824ecc3c9042a4ea188353`  
		Last Modified: Thu, 12 Nov 2026 17:20:48 GMT  
		Size: 2.1 MB (2143979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e727d5809b8af7cd073eff2fc035abbe212feeb8190657b5f423bf483b484ac2`  
		Last Modified: Thu, 12 Nov 2026 17:20:48 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
