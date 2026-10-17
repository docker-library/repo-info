## `openjdk:28-ea-20-oraclelinux9`

```console
$ docker pull openjdk@sha256:f45b4bb5029739e46d3e40f901c2eb522ffc08105582952eb2f1fcae8a6f7ccd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-20-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:71cab58a9d91eb622d650afb6287dc70ec92c29fb5722f1c22d113d339d96d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.3 MB (328348039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355251f398ded134a403d3f98b2e52fd4f89aeeb5fddc7bc1cb1f2f50858bab6`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:11:06 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:11:06 GMT
CMD ["/bin/bash"]
# Fri, 16 Oct 2026 20:32:48 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 16 Oct 2026 20:32:58 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 16 Oct 2026 20:32:58 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:32:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:32:58 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:32:58 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:32:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e896da32f635ced58051c434f6d70ebdf95efaa199d796f16689ad6a7393d30e`  
		Last Modified: Mon, 12 Oct 2026 19:11:17 GMT  
		Size: 47.2 MB (47247118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9682fc44b7cd56160d70d719abd3e4d55185f5dc54a271e87a713473f16eee5`  
		Last Modified: Fri, 16 Oct 2026 20:33:23 GMT  
		Size: 38.3 MB (38266297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1728ce8547ad09408a13a51b7a5b62e41d6dd6fbec1dda6349effec2264108`  
		Last Modified: Fri, 16 Oct 2026 20:33:28 GMT  
		Size: 242.8 MB (242834624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:313151203f36b6a8a15ed1fad859e03d72d27235a39ba0ce84dc543ce26037dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3672006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc1abc8bc048386c7cc470e91b2a8ce76ca5b4182a919d8b25feb1f303b8481`

```dockerfile
```

-	Layers:
	-	`sha256:097a02103cfa504c3e9290b4950227d96e967bd7cdcaaa02747aff5835767032`  
		Last Modified: Fri, 16 Oct 2026 20:33:22 GMT  
		Size: 3.7 MB (3656664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f98df668d332bf3c72881ba3d69002e774ef212aa2a2b9f1f7323be4b444e24`  
		Last Modified: Fri, 16 Oct 2026 20:33:21 GMT  
		Size: 15.3 KB (15342 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-20-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:bd4f9932027499ed1be4086166815815efa3f6e034783ed76ea1401ca4543397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.3 MB (325321891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b49fbf975ba0d3f5c25ebeddb4c8605d75a89eb7dd5fb9b4c97394e8b6cdd304`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 12 Oct 2026 19:10:25 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 12 Oct 2026 19:10:25 GMT
CMD ["/bin/bash"]
# Fri, 16 Oct 2026 20:32:43 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 16 Oct 2026 20:33:02 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 16 Oct 2026 20:33:02 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 20:33:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Oct 2026 20:33:02 GMT
ENV JAVA_VERSION=28-ea+20
# Fri, 16 Oct 2026 20:33:02 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-x64_bin.tar.gz'; 			downloadSha256='fd0b94162fede0e2f7a31106a38d0105b23e96521d8c61c0f1a0967e1383b59d'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/20/GPL/openjdk-28-ea+20_linux-aarch64_bin.tar.gz'; 			downloadSha256='a680de4b2f2e749f2257cc707fa250de84b5178bbf61f984f9811ce7d90e5481'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 16 Oct 2026 20:33:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b1be88c1a95445e6111ba7b3bceed48f958b8f6eb2ff1c4b27f45fa7b0f45de9`  
		Last Modified: Mon, 12 Oct 2026 19:10:36 GMT  
		Size: 45.8 MB (45800687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922d8e2d4b93c6357475b9086e9c18a0ad2d7d48b12cc743f054e6b666219a35`  
		Last Modified: Fri, 16 Oct 2026 20:33:27 GMT  
		Size: 38.7 MB (38657641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb553c96feb1add8c93ccd79f4ab20193473eea594b6ada42abcbdd39e4afe69`  
		Last Modified: Fri, 16 Oct 2026 20:33:32 GMT  
		Size: 240.9 MB (240863563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-20-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:b85b60d7d48d8c4aefd3dd2378841053f28dfc592e56673ba854dabdf77b26b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f5716d58c02b5bc0f3eab02c3e05568d85260d9c310d4404dcd133cb5c2644`

```dockerfile
```

-	Layers:
	-	`sha256:eedd411a67b500aa49e159a2b664aa8683223f62732526a7d04dbccd609a36e0`  
		Last Modified: Fri, 16 Oct 2026 20:33:26 GMT  
		Size: 3.7 MB (3654274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bc84c54a53ba323e60481c84c32c2c57102e682504caf5e3b3019daf6395671`  
		Last Modified: Fri, 16 Oct 2026 20:33:26 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
