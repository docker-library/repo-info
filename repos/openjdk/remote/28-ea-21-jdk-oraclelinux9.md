## `openjdk:28-ea-21-jdk-oraclelinux9`

```console
$ docker pull openjdk@sha256:6ea3b6548388bab276e671451b457197a4ee61b9b2405a85a6589d3a79f2dfc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `openjdk:28-ea-21-jdk-oraclelinux9` - linux; amd64

```console
$ docker pull openjdk@sha256:2673ab2023de4076804a396c31f0fa85ec6e23ccf2f5007cfa7418070bf65404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.6 MB (328627071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b0f97766839b94192e7ff3d8619ba008bbfe67827ab8f1e9bf14c4383e08db`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:41 GMT
ADD oraclelinux-9-slim-amd64-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:41 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:08:06 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:18 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 27 Oct 2026 23:08:18 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 23:08:18 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 23:08:18 GMT
ENV JAVA_VERSION=28-ea+21
# Tue, 27 Oct 2026 23:08:18 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 27 Oct 2026 23:08:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1610bd8e525d37f7b01147980f0f660538a95e978eee8351a908a00d143c2910`  
		Last Modified: Tue, 27 Oct 2026 23:05:52 GMT  
		Size: 47.2 MB (47188107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783e652254f7d15815c0d649b2c437ec178235b9be42bb14a93ed997d4554ddb`  
		Last Modified: Tue, 27 Oct 2026 23:08:44 GMT  
		Size: 38.3 MB (38262982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744a852bf72e8fe8cba83bc95c5025af9e8f22792e8e70ef22b2cb800700b17b`  
		Last Modified: Tue, 27 Oct 2026 23:08:48 GMT  
		Size: 243.2 MB (243175982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:690456ff925adb6542fa7bab9c10f409cdf04f6d82cc82d8bcf890f02eac6ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3653488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:300e2810f526c16ce40569631bfdd96b08413cbc878c503aad86218e91e649ef`

```dockerfile
```

-	Layers:
	-	`sha256:fde5a9b1ccb153698be02b4c1ad8b4d1313db4a0529f08da22569da9723d4b5b`  
		Last Modified: Tue, 27 Oct 2026 23:08:43 GMT  
		Size: 3.6 MB (3638145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f392e68c034144d4f115bad3032521b14a802a7c31e22b1ba2e10a3df859c14`  
		Last Modified: Tue, 27 Oct 2026 23:08:42 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `openjdk:28-ea-21-jdk-oraclelinux9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6058960afc319216b9e7349b22602fd22f7a19106a4bc3c26b64c533b15b4148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325573437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c6cde749c6e285e9bb7ffc5ce1df25cbf3589facb0197ac3f3b984f628003b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 23:05:32 GMT
ADD oraclelinux-9-slim-arm64v8-rootfs.tar.xz / # buildkit
# Tue, 27 Oct 2026 23:05:32 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 23:08:07 GMT
RUN set -eux; 	microdnf install 		gzip 		tar 				binutils 		freetype fontconfig 	; 	microdnf clean all # buildkit
# Tue, 27 Oct 2026 23:08:18 GMT
ENV JAVA_HOME=/usr/java/openjdk-28
# Tue, 27 Oct 2026 23:08:18 GMT
ENV PATH=/usr/java/openjdk-28/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 23:08:18 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 23:08:18 GMT
ENV JAVA_VERSION=28-ea+21
# Tue, 27 Oct 2026 23:08:18 GMT
RUN set -eux; 		arch="$(rpm --query --queryformat='%{ARCH}' rpm)"; 	case "$arch" in 		'x86_64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-x64_bin.tar.gz'; 			downloadSha256='b32bf773d02fff73d4a2da78cf590459879963b3dbffd18dcc9d6c6756ee4549'; 			;; 		'aarch64') 			downloadUrl='https://download.java.net/java/early_access/jdk28/21/GPL/openjdk-28-ea+21_linux-aarch64_bin.tar.gz'; 			downloadSha256='3908eb08a5a6a074301fffbed99ef8f2a36d0ae42dce41e7c948a3b16a8cfa5a'; 			;; 		*) echo >&2 "error: unsupported architecture: '$arch'"; exit 1 ;; 	esac; 		curl -fL -o openjdk.tgz "$downloadUrl"; 	echo "$downloadSha256 *openjdk.tgz" | sha256sum --strict --check -; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 		rm -rf "$JAVA_HOME/lib/security/cacerts"; 	ln -sT /etc/pki/ca-trust/extracted/java/cacerts "$JAVA_HOME/lib/security/cacerts"; 		ln -sfT "$JAVA_HOME" /usr/java/default; 	ln -sfT "$JAVA_HOME" /usr/java/latest; 	for bin in "$JAVA_HOME/bin/"*; do 		base="$(basename "$bin")"; 		[ ! -e "/usr/bin/$base" ]; 		alternatives --install "/usr/bin/$base" "$base" "$bin" 20000; 	done; 		java -Xshare:dump; 		fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java; 	javac --version; 	java --version # buildkit
# Tue, 27 Oct 2026 23:08:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11f62504eea6ae8bacf9c501835f2547c0d6c7f6ff85fd7a67912c41a123c561`  
		Last Modified: Tue, 27 Oct 2026 23:05:43 GMT  
		Size: 45.7 MB (45732830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31112e327ca5d8fd387bee1426a844f738c468a43679f0e1f7638a0ef8f0876c`  
		Last Modified: Tue, 27 Oct 2026 23:08:44 GMT  
		Size: 38.7 MB (38656820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c4c08c2b7dea3fbbf6948b40db1b1e86d821f5d9e55d184e9ca5ce305ba7691`  
		Last Modified: Tue, 27 Oct 2026 23:08:47 GMT  
		Size: 241.2 MB (241183787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `openjdk:28-ea-21-jdk-oraclelinux9` - unknown; unknown

```console
$ docker pull openjdk@sha256:5cda744d9f46f029356016d8ca201e41518820f26030a641be41b7496275dc4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f68990df0b467180d3e7abe1e8901e1504cf53c4d1685969d8d4911ccc8d13`

```dockerfile
```

-	Layers:
	-	`sha256:de902a89c8f292051933828d67d18d47867264d76b51c92bb0c1e9529bcbe4ae`  
		Last Modified: Tue, 27 Oct 2026 23:08:42 GMT  
		Size: 3.6 MB (3635755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49f1d1c8692bbe81caefaa58831242c5e2aa32d49a9386fec797199c43827283`  
		Last Modified: Tue, 27 Oct 2026 23:08:42 GMT  
		Size: 15.5 KB (15462 bytes)  
		MIME: application/vnd.in-toto+json
