## `openjdk:28-ea-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:8c60860c06082cd2c0d961f3ecfc9f96e1c3266fcbf1dae89fe48c3fe6e3b60d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:8e8200871e5bc4f7ff2545f2fb1c5f31a8a3a89aa02c8cf7c52aec3e6f0d4820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313646095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff9d9776d86c94644800e0a151a5a5efe5da05c958d3de7dcebcf730329c0b0`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:12:02 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:12:21 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 09 Jul 2026 19:12:21 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 19:12:21 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 19:12:21 GMT
ENV JAVA_VERSION=28-ea+5
# Thu, 09 Jul 2026 19:12:21 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 09 Jul 2026 19:12:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ecf47111addbec56de180c5066787a73b3998b900305972f62be7fc13c26caa3`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 47.9 MB (47928988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6249dfa1a84c033577a65ed0b097018a9dcd284e31d1eac806916bf22b5fedd`  
		Last Modified: Thu, 09 Jul 2026 19:12:44 GMT  
		Size: 38.3 MB (38294407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50297b6b19b170d6ea3ea4cd812f54b551f7634f63974c8754434b6f3d9c9645`  
		Last Modified: Thu, 09 Jul 2026 19:12:47 GMT  
		Size: 227.4 MB (227422700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:e7ddb386593c9c25d81e2c1bf59918bd648bfc100761e53ed0608fc1bbd2f519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3667522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01243996203393732666ad8a25c66b3b779cb90b7c18d6f712d896ab5cf6058e`

```dockerfile
```

-	Layers:
	-	`sha256:0db24eff46ed1bad47a80572c3696ee08f5edd19b2778973d95f1dd267985557`  
		Last Modified: Thu, 09 Jul 2026 19:12:42 GMT  
		Size: 3.7 MB (3652197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1c73c11ba52cb6648a18f29e30ff8ba919f6b8e84b01a50d9e069f64eac99ec`  
		Last Modified: Thu, 09 Jul 2026 19:12:42 GMT  
		Size: 15.3 KB (15325 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:f217533daca578bcf6c934f9046153fe9fbdaaf0f6d08aaec6d1891f45924157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310642775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9d43c4ad1619e8163a0bf126aced9dc4b27e6bfeca2ff1896326e8fcd352c5`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 09 Jul 2026 18:34:49 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 09 Jul 2026 18:34:49 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 19:11:48 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Thu, 09 Jul 2026 19:12:04 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Thu, 09 Jul 2026 19:12:04 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 19:12:04 GMT
ENV LANG=C.UTF-8
# Thu, 09 Jul 2026 19:12:04 GMT
ENV JAVA_VERSION=28-ea+5
# Thu, 09 Jul 2026 19:12:04 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-x64_bin.tar.gz'; 			downloadSha256='f41a631e7ba0d71d2235dc849c6b73306846b34f690e015d394940e180284e73'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/5/GPL/openjdk-28-ea+5_linux-aarch64_bin.tar.gz'; 			downloadSha256='6174e657a12be73b744acdd27e5a30aeab150c2a6bcf162666690184aedcc815'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Thu, 09 Jul 2026 19:12:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c376d03c53ced8ad660398cf332d5f794462a489fe0fc7a2a87af992dcb3a48d`  
		Last Modified: Thu, 09 Jul 2026 18:35:00 GMT  
		Size: 46.5 MB (46475986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4691b52ab66238a53b25dbc5f3df54cd263c601ddfca7be8300e15ea923a9e4`  
		Last Modified: Thu, 09 Jul 2026 19:12:27 GMT  
		Size: 38.7 MB (38692464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aff04208f378ee4ee72ed51ebd496bda97beb8250cbb4609c3c40e9e0ccab0`  
		Last Modified: Thu, 09 Jul 2026 19:12:30 GMT  
		Size: 225.5 MB (225474325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:c5d733a33a3d8d2c9f5b1870327678d09203c5ff3fb49b17a212a0336646a9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c824d90e8c5efef70cd8e9b88701530d7ce597707bb4b58510afca50273bdc`

```dockerfile
```

-	Layers:
	-	`sha256:4c1249286d4178efabca5b819cee3236c35d1cc9ec3a4f85be27e49be202c292`  
		Last Modified: Thu, 09 Jul 2026 19:12:25 GMT  
		Size: 3.6 MB (3649807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d4cba7d8387f958366eb08a413bbdfeeaf983fb29a1afb619651ca2d63f79e0`  
		Last Modified: Thu, 09 Jul 2026 19:12:25 GMT  
		Size: 15.4 KB (15444 bytes)  
		MIME: application/vnd.in-toto+json
