## `eclipse-temurin:25-jdk-ubi10-minimal`

```console
$ docker pull eclipse-temurin@sha256:c4c81bd7319977951cc32831900f57e5479a72986ffa9d0a2646d75f0666e388
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:39f1dc7747322dce71fe783d43904bac3f84d0b65a3f47b78ecefac6d8b992d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165424747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:669facfc8cc8d6dcd578cca58343096b6f147e21080b378d065e886581bd70b5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:34:34 GMT
ENV container oci
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:3fc2149cba1aae646de340c6940fc0331b4ca2629dd609c7c1400ec115ce9c6e in /      
# Thu, 05 Nov 2026 07:34:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:34:35 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:34:13Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:34:13Z" "architecture"="x86_64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:34:13Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 22:50:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:50:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:50:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:50:51 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 22:51:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 22:51:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:51:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:51:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 22:51:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b0218091bf1acf0117c078cab67cd8be28c27f65609cc1af616ea6886997ebab`  
		Last Modified: Thu, 05 Nov 2026 09:20:39 GMT  
		Size: 34.9 MB (34932248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c323bf78b79b13f3de7ec48678eed22d86853d2ff3eacf1738e0e8181acd66d`  
		Last Modified: Thu, 05 Nov 2026 22:51:17 GMT  
		Size: 37.9 MB (37890664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b990eef694941863e1d1b223d7b009a305efce2043ae636122275f943a4987f`  
		Last Modified: Thu, 05 Nov 2026 22:51:49 GMT  
		Size: 92.6 MB (92599235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a4387291f733f64a0c90cd29048bec3b9c98953e7742a848b63cb2dca070e1`  
		Last Modified: Thu, 05 Nov 2026 22:51:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f8a0bc709dffec020947cc3a3ae54548b7d275280d54b619e24f5491a05bab`  
		Last Modified: Thu, 05 Nov 2026 22:51:42 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:af2a80933b21ed1bfbc293c159d5610b65f5ea760365f863d224de2dc50dca8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3762734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d56b6609d6e42d1115d53c3c9b71572ce240c03601126ca02c296a4a23761a79`

```dockerfile
```

-	Layers:
	-	`sha256:5ea87711687d91785e2d23f147d10d6715fceaf3796849c158a3297e808571ec`  
		Last Modified: Thu, 05 Nov 2026 22:51:47 GMT  
		Size: 3.7 MB (3741445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ca9ee2fc38f31f533f03aa0f44adc2cf7a8df6421d7dbdbde2ae14b447c404f`  
		Last Modified: Thu, 05 Nov 2026 22:51:46 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e86843bd0142c0915f0b561caad7e4d2f5f3dcc220355cc8d02f8ca39b229eaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.4 MB (162435094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcbaeb62ec5b3a1ad0521e3b6833588b40e37ef1555f202c2b8baadc6733cd6d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:38:13 GMT
ENV container oci
# Thu, 05 Nov 2026 07:38:14 GMT
COPY dir:089f13b60ac5a6f3bf2df00bfd8d6b35f10e4772d781538a85ad7aaebf293498 in /      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:38:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /root/buildinfo/      
# Thu, 05 Nov 2026 07:38:16 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:37:45Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:37:45Z" "architecture"="aarch64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:37:45Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 23:29:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 23:29:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 23:29:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 23:29:06 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 23:29:06 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 23:29:37 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 23:29:39 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 23:29:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 23:29:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 23:29:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7aee463747d818b9fbc2248922298e0ccf21bdb30d3990b9ca3eec1000343059`  
		Last Modified: Thu, 05 Nov 2026 09:38:32 GMT  
		Size: 33.1 MB (33070630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49217d5767224588f59afe88f0f4ce4c2fdf136794b09cad8056cfb5e24e1abf`  
		Last Modified: Thu, 05 Nov 2026 23:29:24 GMT  
		Size: 37.8 MB (37835500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364468400351f74b0a3bbabec2acdfadf209c86eb4df1b2182344f3ef13c4cd3`  
		Last Modified: Thu, 05 Nov 2026 23:29:57 GMT  
		Size: 91.5 MB (91526365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebed4607a3829b46266875595c78ad42f056a9c21688bdfb35bff907b623ad7`  
		Last Modified: Thu, 05 Nov 2026 23:29:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1600928410580e8adfeb18e934c9271d498edabb87d047fe718c97446b3671`  
		Last Modified: Thu, 05 Nov 2026 23:29:55 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:14ca9dbc0b40c31838efde568d5b6822a7b1e0cc95a97fae85906b1759cae099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3762273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d28b616e021a6c6984e1af06982290d2cc98f18ddff8fe68639ba79b2afd19e`

```dockerfile
```

-	Layers:
	-	`sha256:b677eccb25fa07ed316db5ee3191881800115fb7d4d8bd7da0fde2607bb900a1`  
		Last Modified: Thu, 05 Nov 2026 23:29:55 GMT  
		Size: 3.7 MB (3740868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d13189415aa55aea9c38601d50ca3ee492156bba68cf35d31e0e4628c7f5980`  
		Last Modified: Thu, 05 Nov 2026 23:29:55 GMT  
		Size: 21.4 KB (21405 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:1cfd1f82e85f683847fdeb2e6020e55be01a674cd5e987f8d6973bbcae9c2486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168859291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da06df989beb526c2df21bc7443836d41f3a84f715dda4d52f573f46c84ef91b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 18:09:12 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 02 Nov 2026 18:09:12 GMT
ENV container oci
# Mon, 02 Nov 2026 18:09:13 GMT
COPY dir:23f96b12a10855470b31dbaeb9242c76bed8533a25350a01720e981e06a845e9 in /      
# Mon, 02 Nov 2026 18:09:14 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 18:09:14 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 18:09:14 GMT
COPY dir:bbcf2ab9f5af9ab164009cfd1689bdf3e3e1f5261cc0168966aa873fa487a03f in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 18:09:14 GMT
COPY dir:bbcf2ab9f5af9ab164009cfd1689bdf3e3e1f5261cc0168966aa873fa487a03f in /root/buildinfo/      
# Mon, 02 Nov 2026 18:09:14 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T18:08:49Z" "org.opencontainers.image.revision"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "build-date"="2026-11-02T18:08:49Z" "architecture"="ppc64le" "vcs-ref"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "vcs-type"="git" "release"="1793642335"org.opencontainers.image.created=2026-11-02T18:08:49Z,org.opencontainers.image.revision=f738e88b7bb7caf108d5a65ce6eaa0f284c32f73
# Tue, 03 Nov 2026 23:27:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 23:27:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 23:27:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 23:27:42 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 23:27:42 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Tue, 03 Nov 2026 23:32:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 03 Nov 2026 23:32:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 23:32:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:32:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 23:32:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:017bd409fb0ac73b7406d28a08a311079fe21ec771e81bff4261ca105361e45c`  
		Last Modified: Tue, 03 Nov 2026 00:15:49 GMT  
		Size: 39.1 MB (39077458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02256aeda862a14c29b08ac0f476f4050e4c1ed3ad917800b4d80e0e8091cf5c`  
		Last Modified: Tue, 03 Nov 2026 23:28:27 GMT  
		Size: 39.7 MB (39668108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c33a80e71cdd65f011e091fd898ecae34c14b1a1cf51788a18fd1973f6f81b`  
		Last Modified: Tue, 03 Nov 2026 23:33:35 GMT  
		Size: 90.1 MB (90111123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f46811f0a3215a4ff1d7be40e3f5aa97e63a46733691a9e14b2f0f7a723c08b`  
		Last Modified: Tue, 03 Nov 2026 23:33:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e238ebe7da33d8d71ce1b0332b990adfd0b5425f6dcb7fd6e848c9baf420847d`  
		Last Modified: Tue, 03 Nov 2026 23:33:32 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:88ab6bc6352a788e6f6be22df8d32e2a53b5bbc50eb9c78bcb8e436ed401a1e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3731053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151c1f8116da4c9052dc3a8202193a5a252c929e815bd523a92061db5a7f7afd`

```dockerfile
```

-	Layers:
	-	`sha256:9dcc1d0c2b8899b0e9db0e5dd426fbbef9ee5a6ef7bfa2d933ae9d6cf451f392`  
		Last Modified: Tue, 03 Nov 2026 23:33:33 GMT  
		Size: 3.7 MB (3709728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e97d941cd943a61d38b4f370f3ec059706d69add522b35dc32ec06dfc91b80d7`  
		Last Modified: Tue, 03 Nov 2026 23:33:32 GMT  
		Size: 21.3 KB (21325 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-ubi10-minimal` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:aef7735498c071e86c6a99abd7baa88df1df5b9ba7b4b441364396fec17ad779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161117844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac491044245ecee84721f6dad6cf8d8c8c26458e832bb313233f08391a847e8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 08:48:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 08:48:01 GMT
ENV container oci
# Thu, 05 Nov 2026 08:48:01 GMT
COPY dir:58e5cbdf987899e4e343a163bb22217cbde7bf746a590beffe7a2cdc589f8192 in /      
# Thu, 05 Nov 2026 08:48:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 08:48:02 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 08:48:02 GMT
COPY dir:ff22a7eb7b8af6dbfdfe7086cf3f72f26e5740e5b5b8980b18d7a78ef06f8b34 in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 08:48:02 GMT
COPY dir:ff22a7eb7b8af6dbfdfe7086cf3f72f26e5740e5b5b8980b18d7a78ef06f8b34 in /root/buildinfo/      
# Thu, 05 Nov 2026 08:48:03 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T08:46:47Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T08:46:47Z" "architecture"="s390x" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T08:46:47Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Thu, 05 Nov 2026 22:56:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 22:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 22:56:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 22:56:51 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en         gnupg2     ;     microdnf clean all # buildkit
# Thu, 05 Nov 2026 22:56:51 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 22:58:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64le)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 05 Nov 2026 22:58:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 22:58:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:58:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 22:58:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cbab0f587f3ad64e48f0d9219263296257c575311ec58a5c6ef9006d5af91813`  
		Last Modified: Thu, 05 Nov 2026 12:26:16 GMT  
		Size: 34.8 MB (34788872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0f45054c0b871aa268255c4291d32fbce303015133e6a2dc2aa22747baa48e`  
		Last Modified: Thu, 05 Nov 2026 22:57:14 GMT  
		Size: 38.3 MB (38271964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9770c6a92e29aaf9b30ffb6b590adad9434274393183618e49ff3867fedc6c`  
		Last Modified: Thu, 05 Nov 2026 22:59:22 GMT  
		Size: 88.1 MB (88054411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06baaa7e7655d5265e2f6673ea50c8a0a6cfa5c8d52b1aa6491b49dde8601a1e`  
		Last Modified: Thu, 05 Nov 2026 22:59:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71939602f8e67b24c8f8334ac852fbaebae5870916572aa67c89e11702af6a4c`  
		Last Modified: Thu, 05 Nov 2026 22:59:19 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-ubi10-minimal` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5b1cb3fcc1586b0f36d41e57a46db6f1d86adf31d399b976280ed0d2ab0d3e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3731025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eebb8ecf4f06d4a3414d55a6dc267f14dbf67464909dc1d84f9cbd1db412b80`

```dockerfile
```

-	Layers:
	-	`sha256:1ac3b76520aa51b13dde6b07495d78f5d148af0e670c55cf020d7b04d095c987`  
		Last Modified: Thu, 05 Nov 2026 22:59:20 GMT  
		Size: 3.7 MB (3709736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc1c68eaaebae7d94dea3f4c47229437b4afd77a3fd753ccf5c68605012285a4`  
		Last Modified: Thu, 05 Nov 2026 22:59:19 GMT  
		Size: 21.3 KB (21289 bytes)  
		MIME: application/vnd.in-toto+json
