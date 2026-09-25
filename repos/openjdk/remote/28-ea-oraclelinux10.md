## `openjdk:28-ea-oraclelinux10`

```console
$ docker pull openjdk@sha256:4ff2d06f097bea071b26144411bd2ca38ac0102c4df667cb2d44fa0c1b6aedc6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:7cb28164765f2b9aeae80e36af907e72fd990274f192ca6559473a7663330014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324547154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7b812d8422300fcfcb4c28b3e7815479cddddc7327c9b86e9e734299d1d056`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:08 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 18:05:08 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 25 Sep 2026 18:05:19 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 25 Sep 2026 18:05:19 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:19 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:19 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:19 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d624c29b96864298c383ac9b17d9f3f75bc3bd0a4e34fdf02641996376806498`  
		Last Modified: Mon, 21 Sep 2026 23:04:19 GMT  
		Size: 44.9 MB (44858468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5744889242b5c53890c1821f18f658e5976116fe6db145f4bc9032bd1121be8e`  
		Last Modified: Fri, 25 Sep 2026 18:05:44 GMT  
		Size: 36.9 MB (36876347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e21121c66b1fbcb3b5b061c834356ef09926f636121960d079f96897f2d10a`  
		Last Modified: Fri, 25 Sep 2026 18:05:48 GMT  
		Size: 242.8 MB (242812339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:324fd3276a2080aac34dd949fc1a9c734c23ac84856e4f00211e7e0de39e708b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be91682b70199ff09e33d3ce1d53f4d8321c5cd9da1ca1c47755022f2edef18b`

```dockerfile
```

-	Layers:
	-	`sha256:76bb8ec28d6b46be0eeb7404bacd5a4c97a86f3bad989249fbd96288efa254e2`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 2.4 MB (2376689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b291abd44972a9a129f0bfeb287913ec6dfa9cfe2de272c1242e694fd4c04df9`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:675df230bc863d94ae42732c8b1060c680b2c7e3bc85031df33fa6483f9201dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321129016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904343060e178853083ff25c4adcaca62b5fd85b97414c1d2882a08f7845c1a5`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:03:43 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:03:43 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 18:05:04 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 25 Sep 2026 18:05:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 25 Sep 2026 18:05:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:17 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:17 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65d9e9baa87f15f9db4cb1d85886337ca58865ec36d7c01695e8ed25ffa616cb`  
		Last Modified: Mon, 21 Sep 2026 23:03:54 GMT  
		Size: 43.3 MB (43326589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc8941e57cc6b27c26bde597f8eb37e0523c236182b649414b06aec3fcd3971`  
		Last Modified: Fri, 25 Sep 2026 18:05:43 GMT  
		Size: 36.9 MB (36931692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d00918d04bc06484580ecab9f3d9a4b743e911416854d9c206b4db5fdc8da71`  
		Last Modified: Fri, 25 Sep 2026 18:05:46 GMT  
		Size: 240.9 MB (240870735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:910269136fd4d557b995f80cd0b5e3b7fecdf541228060b7bd3e7497d6c6d7a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be03498ca7c2cbce2800f12cf615c428f404141327ead4d6771fe5679f1b0fd3`

```dockerfile
```

-	Layers:
	-	`sha256:5f6d2c61c6697d582d595ba2bf1c69d4d0c3420bb20b5e004c90299141e2a78f`  
		Last Modified: Fri, 25 Sep 2026 18:05:41 GMT  
		Size: 2.4 MB (2376217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48ad3a6c94227e1424dad5913679306773a7cd2c19214fce4a86f197279c9804`  
		Last Modified: Fri, 25 Sep 2026 18:05:41 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
