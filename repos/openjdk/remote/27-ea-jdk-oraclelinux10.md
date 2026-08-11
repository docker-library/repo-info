## `openjdk:27-ea-jdk-oraclelinux10`

```console
$ docker pull openjdk@sha256:49ec7403b6dd8086873d9254cc017bb85d87d8781763fcd1d55b54210502b01f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:27-ea-jdk-oraclelinux10` - linux; amd64

```console
$ docker pull openjdk@sha256:3042b504de8ce86609b9241508e29be350ca96e9164b84d2bd078d496732f9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.7 MB (308717325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8e8e2aeda71893e17e5a5d1ba8cdb8ab398ce249026e6c95e346548ac6fed6`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Aug 2026 18:17:15 GMT
ADD oraclelinux-10-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 11 Aug 2026 18:17:15 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 18:32:51 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 11 Aug 2026 18:33:00 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 11 Aug 2026 18:33:00 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 18:33:00 GMT
ENV LANG=C.UTF-8
# Tue, 11 Aug 2026 18:33:00 GMT
ENV JAVA_VERSION=27-ea+34
# Tue, 11 Aug 2026 18:33:00 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 11 Aug 2026 18:33:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8869116c72eb0208bf65c15fb660ea2461928387f7c3b91735d8027eb2dd78af`  
		Last Modified: Tue, 11 Aug 2026 18:17:25 GMT  
		Size: 44.8 MB (44842311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1772e2d579140fa01a43d1370087be62b5a0d761992440322c1152384f7de1`  
		Last Modified: Tue, 11 Aug 2026 18:33:21 GMT  
		Size: 36.9 MB (36855481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5df92ba39cef83c54945a4b82a8912465383d56474d1c9e0ee1ad353707152`  
		Last Modified: Tue, 11 Aug 2026 18:33:25 GMT  
		Size: 227.0 MB (227019533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:02412e9544460bfdcb3cc77ebd953e24f83ad424b2ed425f825ce9d1688a10a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313a34068fb3ef2fe940f215abaa2d562f8d7ae23607263236fe96408015c15d`

```dockerfile
```

-	Layers:
	-	`sha256:49947c4140682f95a77b94782f696ec5a779b5a8c6656bcae2e37e70f7baf0e2`  
		Last Modified: Tue, 11 Aug 2026 18:33:20 GMT  
		Size: 2.4 MB (2373384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce93eef9d93c81f936588ac041a94cc21dd6bebde40d9820df3952e6099f425b`  
		Last Modified: Tue, 11 Aug 2026 18:33:20 GMT  
		Size: 17.9 KB (17850 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:27-ea-jdk-oraclelinux10` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:15660d75fef92ad1cc231fac1ee7ad31c995cdf1f3f286e1c21462465b9cd8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 MB (305206722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceca85c310b3b831a68b534331e34c28629f19561cee86b92b7d296389c8787f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 11 Aug 2026 19:03:33 GMT
ADD oraclelinux-10-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 11 Aug 2026 19:03:33 GMT
CMD ["/bin/bash"]
# Tue, 11 Aug 2026 19:16:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:16:21 GMT
ENV JAVA_HOME=/usr/java/openjdk-27
# Tue, 11 Aug 2026 19:16:21 GMT
ENV PATH=/usr/java/openjdk-27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:16:21 GMT
ENV LANG=C.UTF-8
# Tue, 11 Aug 2026 19:16:21 GMT
ENV JAVA_VERSION=27-ea+34
# Tue, 11 Aug 2026 19:16:21 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-x64_bin.tar.gz'; 			downloadSha256='e82f0b585355fa9b8aa309711cb67afa0d87a6c4ddc5d583951a412e46512f08'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk27/34/GPL/openjdk-27-ea+34_linux-aarch64_bin.tar.gz'; 			downloadSha256='fd51c0306ecd1d15e2e9f9bf91c7b339c7194517de3d9a46eb9007a340cf046e'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 11 Aug 2026 19:16:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:75e2e264185d605b1e57b358d6b88ce16ac44eb08d2511cce63afbde52c76548`  
		Last Modified: Tue, 11 Aug 2026 19:03:43 GMT  
		Size: 43.3 MB (43301375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f94ce5cb22659357e1095733223d5819c68501fea05db79d4623900db1d4f5`  
		Last Modified: Tue, 11 Aug 2026 19:16:43 GMT  
		Size: 36.9 MB (36907786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d096bc87c6d82b29809f2b11b4835f60d82918eb95318e2e581bf4c51037a60b`  
		Last Modified: Tue, 11 Aug 2026 19:16:47 GMT  
		Size: 225.0 MB (224997561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:27-ea-jdk-oraclelinux10` - unknown; unknown

```console
$ docker pull openjdk@sha256:22f47003a04f9dc57bb597beffc414b2b36d77d02e6bf7a3d7dcc1dec258a41a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98edc928795dde68d6f128ca71bf38af960924e58d83310098d37c6831ee1231`

```dockerfile
```

-	Layers:
	-	`sha256:59730ad1a39a5403bc6c8a108b1df6921970e6700ad1d8ca12dadd05dcec1abd`  
		Last Modified: Tue, 11 Aug 2026 19:16:42 GMT  
		Size: 2.4 MB (2372912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6a9e07cfc3aa902f167c31be8e397a9423851c95850149fe6d4d28f8c3b3694`  
		Last Modified: Tue, 11 Aug 2026 19:16:41 GMT  
		Size: 18.1 KB (18064 bytes)  
		MIME: application/vnd.in-toto+json
