## `openjdk:28-ea-9-jdk-oracle`

```console
$ docker pull openjdk@sha256:d570db22a42a7c6ebf61603b549be7330cff61ddd85b04a8d1a5f8d630b7d788
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-9-jdk-oracle` - linux; amd64

```console
$ docker pull openjdk@sha256:716147bcec4f1622dbbe89d37474b5c1a6171d1e8aad25beb079e1229efe69f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.0 MB (302997562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8645aec8c17c871bffbcb91e6236333db28f8f69d7adaa808fcf1dfc0f40c3cf`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:18 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:18 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:59:22 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:59:30 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 04 Aug 2026 00:59:30 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:30 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:30 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:30 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7d388d57415441a06a1888e329820afa4bba363ab7c862943257494dbab9408a`  
		Last Modified: Thu, 30 Jul 2026 00:14:28 GMT  
		Size: 44.8 MB (44841721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935c1674555087ea9c6615216fda60769d217cd1e75be5b1b97d8107ebd67406`  
		Last Modified: Tue, 04 Aug 2026 00:59:51 GMT  
		Size: 36.9 MB (36857529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba8274585963c085564f1605a0abc152e98ee3d97582b9b1e7c9c4c5c1cd50d`  
		Last Modified: Tue, 04 Aug 2026 00:59:54 GMT  
		Size: 221.3 MB (221298312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:3716098333179c6daa8341071311c4365ae742e6e06a698b6a42ed1b4ffe4b86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ab371bd19f8534587f618636a827769907c4579de6658ff3de7d5891468910`

```dockerfile
```

-	Layers:
	-	`sha256:0d99f2d6f15f2c556e01b5a962609bec546e5890306a225658d4749e4ddc1f69`  
		Last Modified: Tue, 04 Aug 2026 00:59:49 GMT  
		Size: 2.4 MB (2373357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:204ae085302e2d5aaa775eacfeb08e8796a680c472025c778cb0b9dd5dfcb225`  
		Last Modified: Tue, 04 Aug 2026 00:59:49 GMT  
		Size: 17.8 KB (17828 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-9-jdk-oracle` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:0284dc25959507fc1318610deb28d437b25733b6f4f9d2ca79f6982a8cdfd662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 MB (299575591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8f4bff7d94b51a8de90d9ec12538cbbd35818595d9e5cca08bce742496eadb`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 30 Jul 2026 00:14:51 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Thu, 30 Jul 2026 00:14:51 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:59:04 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 04 Aug 2026 00:59:17 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 04 Aug 2026 00:59:17 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 00:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:59:17 GMT
ENV JAVA_VERSION=28-ea+9
# Tue, 04 Aug 2026 00:59:17 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-x64_bin.tar.gz'; 			downloadSha256='d6e96bf7368ca278d332eb652355c16e520e7fbff00133088873717e509a66b5'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/9/GPL/openjdk-28-ea+9_linux-aarch64_bin.tar.gz'; 			downloadSha256='c579569f798a51ae327fe5f586fde60c114d3e5c1a47901131678cd29b66349d'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 04 Aug 2026 00:59:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed93eae7dc6be36bbac5b8f89929169c9a2af6619e473c01bfbf8b59d48775df`  
		Last Modified: Thu, 30 Jul 2026 00:15:02 GMT  
		Size: 43.3 MB (43302953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7be53bd4ff59bfd1066acd3d9204863693d9c21508bcd2be8e4c7692b71d21`  
		Last Modified: Tue, 04 Aug 2026 00:59:39 GMT  
		Size: 36.9 MB (36913849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8790b5a0e8d6e5e3963dc410540e7681a5637e76720407d783e2af3b0c02042`  
		Last Modified: Tue, 04 Aug 2026 00:59:42 GMT  
		Size: 219.4 MB (219358789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-9-jdk-oracle` - unknown; unknown

```console
$ docker pull openjdk@sha256:5cb8f63d74da89083d81a2547d601640e769b1dd06bb6fa77e236c46c72e8d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c410b6c15b1d59b7a6f62662aa02543e8fae0aa31860f89f6c5a66e869eff3b`

```dockerfile
```

-	Layers:
	-	`sha256:3a6167d08a61a58257a1c5540d8091436a59f3bff9ea1e8fd728d059b6b9b469`  
		Last Modified: Tue, 04 Aug 2026 00:59:37 GMT  
		Size: 2.4 MB (2372885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfcc84fba5e63e87ed2f63b2c95cf8f06fa1bc5227aebc45a1aa533e416088d4`  
		Last Modified: Tue, 04 Aug 2026 00:59:37 GMT  
		Size: 18.0 KB (18044 bytes)  
		MIME: application/vnd.in-toto+json
