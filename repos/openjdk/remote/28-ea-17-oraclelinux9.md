## `openjdk:28-ea-17-oraclelinux9`

```console
$ docker pull openjdk@sha256:0286dd8f9a5ac946c8ff4a17b6c7ce2055adb4fc6d7ab61bff0fa173f3d7e062
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-17-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:625992e396eba05dbfc53abb61a43c6113d0c4c2e3f84f55cdaac158315c3603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.1 MB (329051337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e58e4fc4ae754d6915ce29c30f11134be0428f69395f11a10533dc1fac69b1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:16 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:16 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 18:05:30 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 25 Sep 2026 18:05:39 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 25 Sep 2026 18:05:39 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:39 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:39 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:39 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6361e9307160bba9b9394334d9e85b77c416081e54c8ba8c6d0806dc0c4d5f4b`  
		Last Modified: Mon, 21 Sep 2026 23:04:27 GMT  
		Size: 47.9 MB (47941513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06586336ade3edef7ab146be1231e232e65df1cb972243a5577568992fe3296`  
		Last Modified: Fri, 25 Sep 2026 18:06:02 GMT  
		Size: 38.3 MB (38297657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9e87d55847f66d3b58710499c4a33187ff6c3d9af2bd0f1fecea6d1650a933`  
		Last Modified: Fri, 25 Sep 2026 18:06:07 GMT  
		Size: 242.8 MB (242812167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-17-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:df050fd1156d6e0f63da092c26ecaf9271045e8b032a3edc3e4b06e58d36fcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3671995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a20edc32e4b432e4c897a277e8403313b55ef63fcc6f22e28f56437cf376d6b`

```dockerfile
```

-	Layers:
	-	`sha256:d67a21800c6d5f680bb2f93617edb0b216802ce88e35c56cf2c1d39d4a21281a`  
		Last Modified: Fri, 25 Sep 2026 18:06:01 GMT  
		Size: 3.7 MB (3656652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f1e782724499d66b4089ba9558307b751ffccfb268fc748f6aaf92fe9162cd6`  
		Last Modified: Fri, 25 Sep 2026 18:06:01 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-17-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:628224928cf4b343114aea9de704a5e929a25eb7b67b69393e7d6faef3448bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.0 MB (326048692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e786ca08f791998d25b7c83aea9ad1ef05809e375cdc97f7d8e6521392ba428`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 21 Sep 2026 23:04:02 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Mon, 21 Sep 2026 23:04:02 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 18:05:33 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Fri, 25 Sep 2026 18:05:42 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Fri, 25 Sep 2026 18:05:42 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 18:05:42 GMT
ENV LANG=C.UTF-8
# Fri, 25 Sep 2026 18:05:42 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:05:42 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-x64_bin.tar.gz'; 			downloadSha256='59f29554ce7e6bdfba2c28181f5f7689cad7722d650d8cb7f20d611cfce41808'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_linux-aarch64_bin.tar.gz'; 			downloadSha256='0894b7bbf4c95f0b8a76d4ee6e78390d4cc3767fad41ffbcdaa4010f03a4f1cc'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Fri, 25 Sep 2026 18:05:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b20e21573231a46ffd267a5791372e98726f9d11dd03deafc22fd5d18be5deea`  
		Last Modified: Mon, 21 Sep 2026 23:04:13 GMT  
		Size: 46.5 MB (46486872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1311bf3cf79094e4d6e12d9dc4f1b6ff892312ea2fc357ce3216a9ce92060032`  
		Last Modified: Fri, 25 Sep 2026 18:06:08 GMT  
		Size: 38.7 MB (38691160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b669b22642dcaf95b12a34d7a4104d95cedc0407225ec60a69983b8cfbdcb6fc`  
		Last Modified: Fri, 25 Sep 2026 18:06:12 GMT  
		Size: 240.9 MB (240870660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-17-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:1b56a31b6cf31d97a6da88c18d898945961cdac11e08deb58b4383934e672188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3669724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d3f0913d1c855d0bdd9976652876a21d258ff4ed1480aa7e4d5e1bf76bdec4`

```dockerfile
```

-	Layers:
	-	`sha256:4c01a2e6ea65277914fd6aab46429baffb59556d580c6a1f1f42ebd428caa266`  
		Last Modified: Fri, 25 Sep 2026 18:06:07 GMT  
		Size: 3.7 MB (3654262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c77edd3bce306d8bceaab16809693061182b3a7496022e0023b732bd4e986c96`  
		Last Modified: Fri, 25 Sep 2026 18:06:07 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
