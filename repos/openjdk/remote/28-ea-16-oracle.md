## `openjdk:28-ea-16-oracle`

```console
$ docker pull openjdk@sha256:c083086fd4c2a6c051ac5329cde712510aed673ff697547979e723c0058974e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-16-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:9d687a5da69ecfb1e28cfe2b09723a0ba0f1853da054cbfb344a94d4c99ff19d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324512200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9134c21e374b056b9586f091857eefba282ce9cef8826762691fd3ff7bf3608e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:08 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:08 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:13 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:24 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 21 Sep 2026 23:07:24 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:07:24 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:07:24 GMT
ENV JAVA_VERSION=28-ea+16
# Mon, 21 Sep 2026 23:07:24 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 21 Sep 2026 23:07:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d624c29b96864298c383ac9b17d9f3f75bc3bd0a4e34fdf02641996376806498`  
		Last Modified: Mon, 21 Sep 2026 23:04:19 GMT  
		Size: 44.9 MB (44858468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf51eaba40c83823601676d1c93fc78d5a8a0fad8f922262501315a391cd141`  
		Last Modified: Mon, 21 Sep 2026 23:07:50 GMT  
		Size: 36.9 MB (36876447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf45da2d8497a803eef44a5a02a1e39b148781297ba400ff0a0a62593b1a2d6`  
		Last Modified: Mon, 21 Sep 2026 23:07:54 GMT  
		Size: 242.8 MB (242777285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:a67932dece7da270ffb92915665c009e2718187e325b79a72c85ce8738d4fd0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05069fc009f42172405168acd14806ad17afa9696175f10e691d46454ff578c`

```dockerfile
```

-	Layers:
	-	`sha256:485c0cfb324963cbf9a1abda3319213e6bb52f196f4f5722b92b019d13191523`  
		Last Modified: Mon, 21 Sep 2026 23:07:49 GMT  
		Size: 2.4 MB (2376689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d512177c25b92ebf336d6bab30390a8eac74faba46f4fb985e06909cd2639a8`  
		Last Modified: Mon, 21 Sep 2026 23:07:49 GMT  
		Size: 17.8 KB (17849 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-16-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:352d86863ab3aa03a41bf93111642b88b55c3ed5b53de04599bd801a18e9fbdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321078644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:146403ebc8d742c767f38793e5cd3e208b20c761f1ce52e6b7f041bc6b01aee4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:03:43 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:03:43 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 23:07:11 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Mon, 21 Sep 2026 23:07:30 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Mon, 21 Sep 2026 23:07:30 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 23:07:30 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 23:07:30 GMT
ENV JAVA_VERSION=28-ea+16
# Mon, 21 Sep 2026 23:07:30 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-x64_bin.tar.gz'; 			downloadSha256='93ae55fa44cad32c717ad9805d3dc03be8f26168cdaebc0453c78fd71d4d3abd'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/16/GPL/openjdk-28-ea+16_linux-aarch64_bin.tar.gz'; 			downloadSha256='dde88010bb204e2403411d4c01f53ab709dc28bad29dc41d8ed56af144d59972'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Mon, 21 Sep 2026 23:07:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65d9e9baa87f15f9db4cb1d85886337ca58865ec36d7c01695e8ed25ffa616cb`  
		Last Modified: Mon, 21 Sep 2026 23:03:54 GMT  
		Size: 43.3 MB (43326589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172881af58a7bc8d3e41737f954770c54aea68cc547f45dc70c473bf938d7ed0`  
		Last Modified: Mon, 21 Sep 2026 23:07:55 GMT  
		Size: 36.9 MB (36931491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630b5325d9f9ea4b0fcb528b740d53fc8a8766f3c8052ae99adf129931ba3880`  
		Last Modified: Mon, 21 Sep 2026 23:07:58 GMT  
		Size: 240.8 MB (240820564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-16-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:0cbbcdf0f3983334535f2335a44a16b40cc67ed1331bbf33d5bfe0409482070d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2394281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589e8443efd3569d1371e7c6228477fd5c0cbcae1e90fc32cc9d4fbe98aac50`

```dockerfile
```

-	Layers:
	-	`sha256:cf3d4d6c4a5c489c7aca559bf7e2974aa022f98a9d5569a352c11b5e5594b9c0`  
		Last Modified: Mon, 21 Sep 2026 23:07:53 GMT  
		Size: 2.4 MB (2376217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c5b227d48b609ddc3911cb1e9ac79113e1cdf0984d98d85fa65738cc090855a`  
		Last Modified: Mon, 21 Sep 2026 23:07:53 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
