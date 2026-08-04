## `openjdk:27-ea-33-oraclelinux9`

```console
$ docker pull openjdk@sha256:ef48bd68f27ecf3220313a138cdc6130ab55d7ad27442a5096645436fdc0a556
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-33-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:477e5d7c54c3167a048f12fabbdd37ace6c850a8ebf6792decdb7584e319bba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.2 MB (313232377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54a48a7078a2ec6a1a1e18938aa31b8b94aa1c9596dd4ab49e7c28b3ca8c7796`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:56:37 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:56:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:59:14 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:59:22 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 04 Aug 2026 00:59:22 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:22 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:22 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 00:59:22 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:30627cea5424c411bee6559e1aed4c4b977ceaab0f12695130c3825de516d2cc`  
		Last Modified: Thu, 23 Jul 2026 22:56:48 GMT  
		Size: 47.9 MB (47927752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e856984955f89183fc89e79673cfad3f473035cf9804b63bdbc85fb1a50cd9e3`  
		Last Modified: Tue, 04 Aug 2026 00:59:43 GMT  
		Size: 38.3 MB (38283264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d98527989f94a4d4929926b5398b373b53a2f3c0bff82b9836129e3dbc6e3d`  
		Last Modified: Tue, 04 Aug 2026 00:59:47 GMT  
		Size: 227.0 MB (227021361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:74c6ce35b53c341e447808811c3df970f8d94d0e3520d1eaaa7025076f3cc8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3668179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d154b7555103fba868a8614d318f32db4d77967678ebd7e42ee656adf6a26fb6`

```dockerfile
```

-	Layers:
	-	`sha256:459e42620d0fb71dc36e138a7599fb028654433a910934b5cb9501de2eb10963`  
		Last Modified: Tue, 04 Aug 2026 00:59:42 GMT  
		Size: 3.7 MB (3652837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4548720642bf9325d2fe7793570230e6e5c515ea9a8f191eb22fa85264718b41`  
		Last Modified: Tue, 04 Aug 2026 00:59:41 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-33-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:1342eca0a544ac1260a1b4af14c81e7bfa0260efab4c135db0b0df5eb079fa0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.2 MB (310161028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170105a1be0f7d4add11a661885ee3749b45c0126b29bfe619f41bdd243ab4c8`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 23 Jul 2026 22:55:20 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 23 Jul 2026 22:55:20 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:59:00 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:59:08 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 04 Aug 2026 00:59:08 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:08 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:08 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 00:59:08 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-x64_bin.tar.gz'; 			downloadSha256='b8b9f2c59d829dfa9546c3bcb09a31bb8f95f5ed49d3f2ca456079c02a9561af'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_linux-aarch64_bin.tar.gz'; 			downloadSha256='ccf98da651e8a636aa2a378978503663c57cff91ad60f182d00bf22949596636'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:c1a8d43326b89b25aff74efe983a017053ef32314f6332ba2cf4e76fcf4f2b09`  
		Last Modified: Thu, 23 Jul 2026 22:55:31 GMT  
		Size: 46.5 MB (46477905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03477babff3aef526e92f616525782ef7a977d453b4961395442735c4e04fa5e`  
		Last Modified: Tue, 04 Aug 2026 00:59:32 GMT  
		Size: 38.7 MB (38685844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb22ef977e60678ce63dea1721f497a4b0caa85a4504d315b5219291db8c0959`  
		Last Modified: Tue, 04 Aug 2026 00:59:35 GMT  
		Size: 225.0 MB (224997279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-33-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:c997d025562a6084402aa2becc239acd242d3bd864b5e9033f52e8c2a876502d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3665909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e918693b0317c2c493b26bc055c8ba542548dc1f8f5596fda45dce9ec82d94af`

```dockerfile
```

-	Layers:
	-	`sha256:d3323846e32a3661c0b38a788aad7a41ede3e136c78b475959f34884b6cb0590`  
		Last Modified: Tue, 04 Aug 2026 00:59:30 GMT  
		Size: 3.7 MB (3650447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac26a4c0ef657ae81a1e9355de78e5ca632264fdf5d5a0880565a13fcff358a5`  
		Last Modified: Tue, 04 Aug 2026 00:59:30 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
