## `eclipse-temurin:11-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:363ed1632bc2b31da0e76cf27ba52b4290f938b873677ad6bafcb98f4a437d16
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:11-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:33c8890ad66aac461c3495ba19dcd8abf422ea911498a2f663aacdb019801148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161184978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395e5d928b6bce8d7c2e9823a2b07829c2d37962928a6fdf07bdd96b1495521c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:29 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e24c975bede7f547111147361ae276021666b69cf00462ecef37d8e83c9717c`  
		Last Modified: Fri, 25 Sep 2026 22:35:54 GMT  
		Size: 16.4 MB (16357513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a643519b5f6673c07720a5e01b34e3f78c5fc4183d51e4978dc34955cb398f9d`  
		Last Modified: Fri, 25 Sep 2026 22:35:55 GMT  
		Size: 141.0 MB (141032797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc8dee2647a63114e7d1dbe8544499ede6ac03dd790e5732bb19295a9e972b1`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc3d7de9ca88356a22c9a9fa736fc0a33029a0e70818370b6b5e98712de5b52`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a2ba024e756ac21c4fb73784cf1b07e7c8ea05862fb3d226c723528510608457
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1005219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1bf141067839426a24d5d9c8920313b75ddda1751a27abf9ace75e9c3d9986`

```dockerfile
```

-	Layers:
	-	`sha256:041b2ec5b4526d4882cfdb997afb545801b46b60ed29e9505203998f5f0ed4e1`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 986.0 KB (986029 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a24089a5ba921b534b0bf2245712854dd2a4895544063cb950c104efec4d1aae`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 19.2 KB (19190 bytes)  
		MIME: application/vnd.in-toto+json
